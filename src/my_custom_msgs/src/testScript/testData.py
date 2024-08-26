import rospy
import csv
from my_custom_msgs.msg import LidarData
from std_msgs.msg import String

receivedMessage = True

class CsvRosHandler:
    def __init__(self, csv_file_path, pub_topic, output_file_path):
        self.csv_file_path = csv_file_path
        self.output_file_path = output_file_path
        
        # Initialize the ROS node
        rospy.init_node("csv_ros_handler")
        
        # Publisher
        self.pub = rospy.Publisher(pub_topic, LidarData, queue_size=10)
        #self.pub = rospy.Publisher("tessla", JsonMessage, queue_size=10)
        
        # Subscriber
        rospy.Subscriber(sub_topic, String, self.sub_callback)

    def publish_one_line(self):
        rate = rospy.Rate(0.5)
        combined_msg = LidarData()

        with open(self.csv_file_path, "r") as csvfile:
            try:
                csvreader = csv.reader(csvfile)
                row = next(csvreader)  # Get the first row
                
                # Load the first 360 values into lidar_values
                lidar_values = [float(value) for value in row[:360]]
                if len(lidar_values) != 360:
                    rospy.logerr("Incorrect number of lidar values: expected 360, got %d", len(lidar_values))
                
                # Load the remaining values into additional_data
                additional_data = row[359:367]
                if len(additional_data) != 8:
                    rospy.logerr("Incorrect number of additional data values: expected 8, got %d", len(additional_data))
                
                combined_msg.lidar_values = lidar_values
                combined_msg.additional_data = additional_data

                rospy.loginfo(additional_data[5])
                self.pub.publish(combined_msg)
                rate.sleep()
            except rospy.ROSInterruptException:
                rospy.loginfo("F")


    def read_and_publish(self):
        rate = rospy.Rate(0.5)
        combined_msg = LidarData()

        with open(self.csv_file_path, "r") as csvfile:
            try:
                csvreader = csv.reader(csvfile)
                for row in csvreader:
                    if rospy.is_shutdown():
                        break

                    #rospy.loginfo(len(row))

                    # Load the first 360 values into lidar_values
                    lidar_values = [float(value) for value in row[:360]]
                    if len(lidar_values) != 360:
                        rospy.logerr("Incorrect number of lidar values: expected 360, got %d", len(lidar_values))
                        continue  # Skip this row if it does not contain exactly 360 values
                    
                    # Load the remaining values into additional_data
                    additional_data = row[359:367]
                    if len(additional_data) != 8:
                        rospy.logerr("Incorrect number of additional data values: expected 8, got %d", len(additional_data))
                        continue  # Skip this row if it does not contain exactly 6 values
                    
                    combined_msg.lidar_values = lidar_values
                    combined_msg.additional_data = additional_data

                    rospy.loginfo(additional_data[5])
                    #rospy.loginfo("Publishing: ")
                    self.pub.publish(combined_msg)
                    rate.sleep()
            
            except rospy.ROSInterruptException:
                rospy.loginfo("F")

    def run(self):
        global receivedMessage
        while True:
            try:
                self.publish_one_line()
                rospy.spin
                pass
            except rospy.ROSInterruptException:
                rospy.loginfo("Shutting down")

if __name__ == "__main__":
    try:
        iteration = "1"
        csv_file_path = "oneLine.csv"
        pub_topic = "Data"
        sub_topic = "Action"
        output_file_path = "a.csv"

        handler = CsvRosHandler(csv_file_path, pub_topic, output_file_path)
        handler.run()
    except (rospy.ROSInterruptException, KeyboardInterrupt):
        rospy.loginfo("Program interrupted before completion")
