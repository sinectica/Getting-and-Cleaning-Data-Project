# CodeBook of Getting and Cleaning Data Project

## Content
This code book that describes the data and the output of running runAnalysis() script on the Data Set corresponding to this assignment.

## Source of the analized data
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2) 1 - Smartlab - Non-Linear Complex Systems Laboratory DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain activityrecognition '@' smartlab.ws

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## TidyDataFile.txt
The runAnalysis.R script get and clean the above described data and TidyDataFile.txt is its output.

__Description of Tidy Dataset__

SubjectID : Identifier of the Person who performed the test.
Possible Values : 1 to 30 (integer)

Activity : The activity label that describes the kind of measurement.
Possible Values : LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS.

Signal Measurement : 86 possible variables, mean and std deviation extracted from the sensor signals (accelerometer and gyroscope) that are stored in the original dataset
Possible Values : Numeric

Variables:
"tBodyAcc.mean...X"                   
"tBodyAcc.mean...Y"
"tBodyAcc.mean...Z"
"tBodyAcc.std...X"
"tBodyAcc.std...Y"                    
"tBodyAcc.std...Z"
"tGravityAcc.mean...X"
"tGravityAcc.mean...Y"
"tGravityAcc.mean...Z"                
"tGravityAcc.std...X"
"tGravityAcc.std...Y"                 
"tGravityAcc.std...Z"
"tBodyAccJerk.mean...X"               
"tBodyAccJerk.mean...Y"
"tBodyAccJerk.mean...Z"               
"tBodyAccJerk.std...X"
"tBodyAccJerk.std...Y"                
"tBodyAccJerk.std...Z"
"tBodyGyro.mean...X"                  
"tBodyGyro.mean...Y"
"tBodyGyro.mean...Z"                  
"tBodyGyro.std...X"
"tBodyGyro.std...Y"                   
"tBodyGyro.std...Z"
"tBodyGyroJerk.mean...X"
"tBodyGyroJerk.mean...Y"
"tBodyGyroJerk.mean...Z"              
"tBodyGyroJerk.std...X"
"tBodyGyroJerk.std...Y"               
"tBodyGyroJerk.std...Z"
"tBodyAccMag.mean.."                  
"tBodyAccMag.std.."
"tGravityAccMag.mean.."               
"tGravityAccMag.std.."
"tBodyAccJerkMag.mean.."              
"tBodyAccJerkMag.std.."
"tBodyGyroMag.mean.."
"tBodyGyroMag.std.."
"tBodyGyroJerkMag.mean.."             
"tBodyGyroJerkMag.std.."
"fBodyAcc.mean...X"                   
"fBodyAcc.mean...Y"
"fBodyAcc.mean...Z"                   
"fBodyAcc.std...X"
"fBodyAcc.std...Y"                    
"fBodyAcc.std...Z"
"fBodyAcc.meanFreq...X"               
"fBodyAcc.meanFreq...Y"
"fBodyAcc.meanFreq...Z"               
"fBodyAccJerk.mean...X"
"fBodyAccJerk.mean...Y"               
"fBodyAccJerk.mean...Z"
"fBodyAccJerk.std...X"                
"fBodyAccJerk.std...Y"
"fBodyAccJerk.std...Z"                
"fBodyAccJerk.meanFreq...X"
"fBodyAccJerk.meanFreq...Y"           
"fBodyAccJerk.meanFreq...Z"
"fBodyGyro.mean...X"                  
"fBodyGyro.mean...Y"
"fBodyGyro.mean...Z"                  
"fBodyGyro.std...X"
"fBodyGyro.std...Y"                   
"fBodyGyro.std...Z"
"fBodyGyro.meanFreq...X"
"fBodyGyro.meanFreq...Y"
"fBodyGyro.meanFreq...Z"              
"fBodyAccMag.mean.."
"fBodyAccMag.std.."                   
"fBodyAccMag.meanFreq.."
"fBodyBodyAccJerkMag.mean.."          
"fBodyBodyAccJerkMag.std.."
"fBodyBodyAccJerkMag.meanFreq.."      
"fBodyBodyGyroMag.mean.."
"fBodyBodyGyroMag.std.."              
"fBodyBodyGyroMag.meanFreq.."
"fBodyBodyGyroJerkMag.mean.."         
"fBodyBodyGyroJerkMag.std.."
"fBodyBodyGyroJerkMag.meanFreq.."     
"angle.tBodyAccMean.gravity."
"angle.tBodyAccJerkMean..gravityMean."
"angle.tBodyGyroMean.gravityMean."
"angle.tBodyGyroJerkMean.gravityMean."
"angle.X.gravityMean."
"angle.Y.gravityMean."                
"angle.Z.gravityMean."  
