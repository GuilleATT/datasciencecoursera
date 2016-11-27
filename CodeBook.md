#The transformations to tidy the data set has been:
* Merging trainning and test set to create one data set with cbind() and rbind()
* Extract mean & std.dev for each measurement with grep()
* Change activity names to be descriptive
* Change varibles names to be descriptive with gsub()
* Create a new data set with the average of each variable for each activity and each subject with dcast()

#There are 81 resultant variables from the process of tidying the data. These are:
 [1] "subject"                               "activity"                             
 [3] "TimeBodyAcc_mean_X"                    "TimeBodyAcc_mean_Y"                   
 [5] "TimeBodyAcc_mean_Z"                    "TimeBodyAcc_std_X"                    
 [7] "TimeBodyAcc_std_Y"                     "TimeBodyAcc_std_Z"                    
 [9] "TimeGravityAcc_mean_X"                 "TimeGravityAcc_mean_Y"                
[11] "TimeGravityAcc_mean_Z"                 "TimeGravityAcc_std_X"                 
[13] "TimeGravityAcc_std_Y"                  "TimeGravityAcc_std_Z"                 
[15] "TimeBodyAccJerk_mean_X"                "TimeBodyAccJerk_mean_Y"               
[17] "TimeBodyAccJerk_mean_Z"                "TimeBodyAccJerk_std_X"                
[19] "TimeBodyAccJerk_std_Y"                 "TimeBodyAccJerk_std_Z"                
[21] "TimeBodyGyro_mean_X"                   "TimeBodyGyro_mean_Y"                  
[23] "TimeBodyGyro_mean_Z"                   "TimeBodyGyro_std_X"                   
[25] "TimeBodyGyro_std_Y"                    "TimeBodyGyro_std_Z"                   
[27] "TimeBodyGyroJerk_mean_X"               "TimeBodyGyroJerk_mean_Y"              
[29] "TimeBodyGyroJerk_mean_Z"               "TimeBodyGyroJerk_std_X"               
[31] "TimeBodyGyroJerk_std_Y"                "TimeBodyGyroJerk_std_Z"               
[33] "TimeBodyAccMag_mean"                   "TimeBodyAccMag_std"                   
[35] "TimeGravityAccMag_mean"                "TimeGravityAccMag_std"                
[37] "TimeBodyAccJerkMag_mean"               "TimeBodyAccJerkMag_std"               
[39] "TimeBodyGyroMag_mean"                  "TimeBodyGyroMag_std"                  
[41] "TimeBodyGyroJerkMag_mean"              "TimeBodyGyroJerkMag_std"              
[43] "FrequencyBodyAcc_mean_X"               "FrequencyBodyAcc_mean_Y"              
[45] "FrequencyBodyAcc_mean_Z"               "FrequencyBodyAcc_std_X"               
[47] "FrequencyBodyAcc_std_Y"                "FrequencyBodyAcc_std_Z"               
[49] "FrequencyBodyAcc_meanFreq_X"           "FrequencyBodyAcc_meanFreq_Y"          
[51] "FrequencyBodyAcc_meanFreq_Z"           "FrequencyBodyAccJerk_mean_X"          
[53] "FrequencyBodyAccJerk_mean_Y"           "FrequencyBodyAccJerk_mean_Z"          
[55] "FrequencyBodyAccJerk_std_X"            "FrequencyBodyAccJerk_std_Y"           
[57] "FrequencyBodyAccJerk_std_Z"            "FrequencyBodyAccJerk_meanFreq_X"      
[59] "FrequencyBodyAccJerk_meanFreq_Y"       "FrequencyBodyAccJerk_meanFreq_Z"      
[61] "FrequencyBodyGyro_mean_X"              "FrequencyBodyGyro_mean_Y"             
[63] "FrequencyBodyGyro_mean_Z"              "FrequencyBodyGyro_std_X"              
[65] "FrequencyBodyGyro_std_Y"               "FrequencyBodyGyro_std_Z"              
[67] "FrequencyBodyGyro_meanFreq_X"          "FrequencyBodyGyro_meanFreq_Y"         
[69] "FrequencyBodyGyro_meanFreq_Z"          "FrequencyBodyAccMag_mean"             
[71] "FrequencyBodyAccMag_std"               "FrequencyBodyAccMag_meanFreq"         
[73] "FrequencyBodyBodyAccJerkMag_mean"      "FrequencyBodyBodyAccJerkMag_std"      
[75] "FrequencyBodyBodyAccJerkMag_meanFreq"  "FrequencyBodyBodyGyroMag_mean"        
[77] "FrequencyBodyBodyGyroMag_std"          "FrequencyBodyBodyGyroMag_meanFreq"    
[79] "FrequencyBodyBodyGyroJerkMag_mean"     "FrequencyBodyBodyGyroJerkMag_std"     
[81] "FrequencyBodyBodyGyroJerkMag_meanFreq"

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, FrequencyBodyAccJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag. 


