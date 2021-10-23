#!/usr/bin/env python3
import os
import rospy
from tuto2.msg import Person
from tuto2.msg import Ranging
from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry
import tensorflow as tf
import csv
def callb(data):
    now = rospy.get_rostime()
    rospy.loginfo("anchor:{} range:{} sec:{},now {}:{}".format(data.anchorId,data.range,data.seq,now.secs,now.nsecs))
    savepath = "/home/bassem/data"
    filename = "rangingf.csv"
    fullname = os.path.join(savepath,filename)
    #rospy.loginfo("data{}".format(data.))
    file = open(fullname,"a")
    #file.write(str(data))
    writer = csv.writer(file)
    row=[data.seq,data.anchorId,data.range,data.rss,now.secs,now.nsecs]
    writer.writerow(row)


    file.close()
def odom(data):
    now = rospy.get_rostime()
    savepath = "/home/bassem/data"
    filename = "tagposf.csv"
    fullname = os.path.join(savepath,filename)
    rospy.loginfo("data {}:{}".format(now.secs,now.nsecs))
    file = open(fullname,"a")
    writer = csv.writer(file)
    row=[data.header.seq,data.header.stamp.secs,data.header.stamp.nsecs,data.pose.pose.position.x,data.pose.pose.position.y,data.pose.pose.position.z]
    writer.writerow(row)
    
    file.close()
def listener():
    rospy.init_node("listener",anonymous=True)
    sub1 = rospy.Subscriber("/gtec/toa/ranging",Ranging,callb)
    sub2 = rospy.Subscriber("/gtec/gazebo/pos",PoseWithCovarianceStamped,odom)
    rospy.spin()
def talker(): 
    pub = rospy.Publisher("custom",Person)
    rospy.init_node("talker",anonymous=True)
    r = rospy.Rate(10)
    msg = Person()
    msg.name = "rpss"
    msg.age = 4
    while not rospy.is_shutdown():
        rospy.loginfo(msg)
        pub.publish(msg)
        r.sleep()
if __name__=='__main__':
    try:
        listener()
    except rospy.ROSInterruptException:pass