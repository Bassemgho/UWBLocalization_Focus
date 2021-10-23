import os
import pandas as pd
def getdata():
    savepath = "/home/bassem/data"
    filename = "tagpos.csv"
    fullname = os.path.join(savepath,filename)
    df1 = pd.read_csv(fullname)
    print(df1.head(5))
