
import os
import numpy
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import math
from keras.models import Sequential
from keras.layers import Dense
from keras.layers import LSTM
from sklearn.preprocessing import MinMaxScaler
from sklearn.metrics import mean_squared_error
def create_dataset(dataset, look_back=1):
    dataX, dataY = [], []
    for i in range(len(dataset) - look_back - 1):
        a = dataset[i:(i + look_back), 0]
        dataX.append(a)
        dataY.append(dataset[i + look_back, 2])
    return numpy.array(dataX), numpy.array(dataY)
def series_to_supervised(data, n_in=1, n_out=1, dropnan=True):
	n_vars = 1 if type(data) is list else data.shape[1]
	df = pd.DataFrame(data)
	cols, names = list(), list()
	# input sequence (t-n, ... t-1)
	for i in range(n_in, 0, -1):
		cols.append(df.shift(i))
		names += [('var%d(t-%d)' % (j+1, i)) for j in range(n_vars)]
	# forecast sequence (t, t+1, ... t+n)
	for i in range(0, n_out):
		cols.append(df.shift(-i))
		if i == 0:
			names += [('var%d(t)' % (j+1)) for j in range(n_vars)]
		else:
			names += [('var%d(t+%d)' % (j+1, i)) for j in range(n_vars)]
	# put it all together
	agg = pd.concat(cols, axis=1)
	agg.columns = names
	# drop rows with NaN values
	if dropnan:
		agg.dropna(inplace=True)
	return agg
def train():
    numpy.random.seed(7)
    savepath = "/home/bassem/data"
    file = "database.csv"
    pathfile = os.path.join(savepath,file)
    df = pd.read_csv(pathfile)
    dataset = df[["X","Y","anch0","anch1","anch2","anch3"]].fillna(-1).values
    np.random.seed(5)
    scaler = MinMaxScaler(feature_range=(0, 1))
    dataset = scaler.fit_transform(dataset)
    train_size = int(len(dataset) * 0.67)
    test_size = len(dataset) - train_size
    hi = series_to_supervised(dataset,30)
    l = ["var{}(t-{})".format(i,j) for j in range(30,0,-1) for i in range(1,7)]
    l1 =[]
    for j in range(30,0,-1):
        for i in range(1,7):
            if (not(i==1)and not(i==2)):
                l1.append("var{}(t-{})".format(i,j))
            
    l1.append("var1(t)")
    l1.append("var2(t)")
    l1
    f=hi[l1]
    g=f.values.reshape((f.shape[0],1,f.shape[1]),)
    g.shape

    datas = f.values
    train_size = int(len(datas) * 0.8)
    test_size = len(datas) - train_size
    scaler = MinMaxScaler(feature_range=(0, 1))
    train = datas[:train_size,:]
    test  = datas[train_size:len(datas),:]
    train = scaler.fit_transform(train)
    test = scaler.fit_transform(test)
    trainX,trainY = train[:,:-2],train[:,120:122]
    testX,testY = test[:,:-2],test[:,120:122]
    trainX = trainX.reshape((trainX.shape[0], 1, trainX.shape[1]))
    testX = testX.reshape((testX.shape[0], 1, testX.shape[1]))
    model = Sequential()
    model.add(LSTM(64, input_shape=(trainX.shape[1], trainX.shape[2])))
    model.add(Dropout(0.1))
    model.add(Dense(trainY.shape[1]))
    model.compile(loss='mse', optimizer='adam')
    history = model.fit(trainX, trainY, epochs=50, batch_size=32,validation_split=0.1, verbose=1)
    plt.plot(history.history["loss"],label = "training loss")
    plt.plot(history.history["val_loss"],label = "val training loss")
    return model
def predict(l,model):
    prediction = model.predict(l)
    