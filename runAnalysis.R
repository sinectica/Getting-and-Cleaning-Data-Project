runAnalysis <- function(){
  
## 1.  Merges the training and the test sets to create one data set 
  
  ## Read features and activity_labels files and assign to 2 vectors
  features <- read.csv("UCI HAR Dataset/features.txt", sep = "", header = FALSE)[2]
  activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)
  
  ## Read test and train sets and assign to 2 vectors
  ## Combine both by rows
  test_data <- read.csv("test/X_test.txt", sep = "", header = FALSE)
  train_data <- read.csv("train/X_train.txt", sep = "", header = FALSE)
  m_data <- rbind(test_data,train_data)        
  
  ## Read test and train movements and assign to 2 vectors
  ## Combine both by rows
  test_movements <- read.csv("test/y_test.txt", sep = "", header = FALSE)
  train_movements <- read.csv("train/y_train.txt", sep = "", header = FALSE)
  m_movements <- rbind(test_movements, train_movements)
  
  ## Read subjectID
  ## Combine both by rows
  test_subjectID <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
  train_subjectID <- read.csv("train/subject_train.txt", sep = "", header = FALSE)
  m_subjectID <- rbind(test_subjectID, train_subjectID)

## 2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  ## Assign Descriptive Column Names and extract columns with std dev and mean measurements
  names(m_data) <- features[ ,1]
  m_data <- m_data[ grepl("std|mean", names(m_data), ignore.case = TRUE) ] 

## 3.  Uses descriptive activity names to name the activities in the data set.
## 4.  Appropriately labels the data set with descriptive variable names.
  
  # Assign descriptive activity names in the data set
  m_movements <- merge(m_movements, activity_labels, by.x = "V1", by.y = "V1")[2]
  m_data <- cbind(m_subjectID, m_movements, m_data)
  names(m_data)[1:2] <- c("SubjectID", "Activity")
  
## 5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
  m_data_mean <- group_by(m_data, SubjectID, Activity) %>% summarise_each(funs(mean))
  write.table(m_data_mean,"TidyDataFile.txt", row.name=FALSE)
}