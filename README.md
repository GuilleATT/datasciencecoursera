# run_analysis script description

The script follows the 5 steps indicated by the assigment instructions

##1. Merging trainning and test set to create one data set
   * First we merge the 3 train tables by column an create a unique data set called train. Same for test. Then both data frames are merged by row.
  
##2. Extract mean & std.dev for each measurement
   * We do so by picking the right columns making use of 'features.txt' and grep() function.
  
##3. Change activity names to be descriptive
   * We use the function gsub() to do so

##4. Change varibles names to be descriptive
  * Even if the names of the variables where placed in step 2 by:names(dataMergedcutted)<-namesdataMergedcutted
  * We won't give the green light to variables begining with t and f because they are not enough descriptive as Tidy data set rules require
  
##5. Step 5: Create a new data set with the average of each variable for each activity and each subject
  * We use the function dcast() to do so from the reshape2 package
  * Finally the tidy_data_set is printed
