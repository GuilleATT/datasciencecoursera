run_analysis<-function(){
  subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
  activities_train<-read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
  variables_train<-read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)

  subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
  activities_test<-read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
  variables_test<-read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
  
  ##Step number 1: Merging trainning and test set to create one data set
  # First we merge the 3 train tables by column an create a unique data set called train
  train <- cbind(subject_train,activities_train,variables_train)
  # Same for test
  test <- cbind(subject_test,activities_test,variables_test)
  # Now create one single data set with all the data by row bindind both; train and test
  dataMerged<-rbind(train,test)
  
  ##Step 2: Extract mean & std.dev for each measurement
  # We do so by picking the right columns making use of 'features.txt'
  features<-read.table("./UCI HAR Dataset/features.txt",sep=" ")
  pickedMean<-features[grep("mean",features$V2),]
  pickedStd<-features[grep("std",features$V2),]
  picked<-arrange(rbind(pickedMean,pickedStd),V1)
  
  #Once we have the indices of the columns we want to choose, we select them
  picked$V1<-picked$V1 +2 #The first two columns of data Merged are subject and activity
  a<-data.frame(V1=c(1,2),V2=c("subject","activity"))
  picked<-rbind(a,picked) # Now everything is ready to subset the columns
  dataMergedcutted<-dataMerged[,picked$V1] #We make the cut to subject, activity and columns with "mean" and "std"
  namesdataMergedcutted<-as.character(picked$V2) #We proceed to extract column names
  names(dataMergedcutted)<-namesdataMergedcutted #And apply it to our resulting data frame
  
  ##Step 3: Change activity names to be descriptive
  dataMergedcutted$activity<-gsub("1","Walking",dataMergedcutted$activity)
  dataMergedcutted$activity<-gsub("2","Walking_Upstairs",dataMergedcutted$activity)
  dataMergedcutted$activity<-gsub("3","Walking_Downstairs",dataMergedcutted$activity)
  dataMergedcutted$activity<-gsub("4","Sitting",dataMergedcutted$activity)
  dataMergedcutted$activity<-gsub("5","Standing",dataMergedcutted$activity)
  dataMergedcutted$activity<-gsub("6","Laying",dataMergedcutted$activity)
  
  ##Step 4: Change varibles names to be descriptive
  # Even if the names of the variables where placed in step 2 by:
  # names(dataMergedcutted)<-namesdataMergedcutted
  # We won't give the green light to variables begining with t and f because they are not enough descriptive
  namesdataMergedcutted <- gsub("^t","Time",namesdataMergedcutted)
  namesdataMergedcutted <- gsub("^f","Frequency",namesdataMergedcutted)
  namesdataMergedcutted <- gsub("[()]","",namesdataMergedcutted)
  namesdataMergedcutted <- gsub("[-]","_",namesdataMergedcutted)
  names(dataMergedcutted)<-namesdataMergedcutted
  
  ##Step 5: Create a new data set with the average of each variable for each activity and each subject
  variable<-namesdataMergedcutted[-c(1,2)]
  tidy_data_set<- dcast(dataMergedcutted,activity+subject~variable,mean)
  print(tidy_data_set)
  }