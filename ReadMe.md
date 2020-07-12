# runAnalysis Code Explanation

Reads features.txt and activity_labels.txt files using __read.csv()__ function and taking only useful data.
Argument sep="" and header=FALSE are used

```R
  features <- read.csv("UCI HAR Dataset/features.txt", sep = "", header = FALSE)[2]
  activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)
``` 

Reads X_test.txt and X_train.txt with the same arguments as before
Combines test_set and train_set by rows.

```R
  test_data <- read.csv("test/X_test.txt", sep = "", header = FALSE)
  train_data <- read.csv("train/X_train.txt", sep = "", header = FALSE)
  m_data <- rbind(test_data,train_data)   
```

Reads y_test.txt and y_train.txt with the same arguments as before
Combines test_movements and train_movements by rows.

```R
  test_movements <- read.csv("test/y_test.txt", sep = "", header = FALSE)
  train_movements <- read.csv("train/y_train.txt", sep = "", header = FALSE)
  m_movements <- rbind(test_movements, train_movements)
```

Reads subject_test.txt and subject_train.txt with the same arguments as before
Combines test_subjectID and train_subjectID by rows.

```R
  test_subjectID <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
  train_subjectID <- read.csv("train/subject_train.txt", sep = "", header = FALSE)
  m_subjectID <- rbind(test_subjectID, train_subjectID)
```

Assigns Descriptive Column Names from features vector to merged_set vector created before.
Extracts columns with std dev and mean measurements.

```R
  names(merged_set) <- features[ ,1]
  m_data <- m_set[ grepl("std|mean", names(m_data), ignore.case = TRUE) ]  
```

Assigns Descriptive Names for Activity Columns.

```R
  m_movements <- merge(m_movements, activity_labels, by.x = "V1", by.y = "V1")[2]
  m_data <- cbind(m_subjectID, m_movements, m_data)
  names(m_data)[1:2] <- c("SubjectID", "Activity")
```

Tidy set according to subjectID and Activity.

```R
  m_data_mean <- group_by(m_data, SubjectID, Activity) %>% summarise_each(funs(mean))
  write.table(m_data_mean,"TidyDataFile.txt", row.name=FALSE)
```            

## CodeBook.Rmd
Include description of tidy data,
variables and summaries calculated, along with units; and any other relevant information.

## TidyDataFile.txt
Independent tidy data file.

