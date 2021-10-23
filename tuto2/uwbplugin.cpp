#include <gazebo/common/Plugin.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/physics/Collision.hh>
#include "gazebo/physics/PhysicsTypes.hh"
#include <gazebo/common/common.hh>
#include <gazebo/sensors/Noise.hh>
#include <boost/bind.hpp>
#include <ros/ros.h>
#include <gtec_msgs/Ranging.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <visualization_msgs/MarkerArray.h>
#include <visualization_msgs/Marker.h>
#include <gazebo/rendering/DynamicLines.hh>
#include <tf/transform_datatypes.h>

namespace gazebo
{
    class uwbplugin:WoldPlugin
    {
         enum LOSType
        {
            LOS,
            NLOS,
            NLOS_S,
            NLOS_H
        };
    private:
        /* data */
    public:
        UwbPlugin() :
            WorldPlugin(),
            sequence(0)
        {
            this->updatePeriod = common::Time(0.0);
        }
    public:
        void Load(physics::ModelPtr _parent, sdf::ElementPtr _sdf)){
            if (!ros::isInitialized())
            {
                ROS_FATAL_STREAM("A ROS node for Gazebo has not been initialized, unable to load plugin. "
                                 << "Load the Gazebo system plugin 'libgazebo_ros_api_plugin.so' in the gazebo_ros package)");
                return;
            }
            if (!_sdf->HasElement("update_rate"))
            {
                ROS_FATAL_STREAM("GTEC UWB Plugin needs the parameter: update_rate");
            }
            this->world = _parent->GetWorld(); 
        }
    };
    
    
   
    
}