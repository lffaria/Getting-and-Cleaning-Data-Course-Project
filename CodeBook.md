The run_analysis.R script does the following:

1. Merges the training and the test sets to create one data set (contained in files X_train.txt and X_test.txt; these files must be in the same directory of the run_analysis.R script)
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Descriptive activity names are added to name the activities in the data set (files y_train.txt, y_test.txt, and activity_labels.txt must be in the same directory of the run_analysis.R script)
4. Labels are added to describe variables. 
5. From the data set in step 4, a file named average.txt is created, containing the average of each variable for each activity and each subject (files subject_train.txt and subject_test.txt must be in the same directory of the run_analysis.R script).


Each row of the output file, average.txt, contains the following 68 variables:

Activity
Subject
Mean value of tBodyAcc-mean()-X for Activity and Subject
Mean value of tBodyAcc-mean()-Z for Activity and Subject
Mean value of tBodyAcc-std()-X for Activity and Subject
Mean value of tBodyAcc-std()-Y for Activity and Subject
Mean value of tBodyAcc-std()-Z for Activity and Subject
Mean value of tGravityAcc-mean()-X for Activity and Subject
Mean value of tGravityAcc-mean()-Y for Activity and Subject
Mean value of tGravityAcc-mean()-Z for Activity and Subject
Mean value of tGravityAcc-std()-X for Activity and Subject
Mean value of tGravityAcc-std()-Y for Activity and Subject
Mean value of tGravityAcc-std()-Z for Activity and Subject
Mean value of tBodyAccJerk-mean()-X for Activity and Subject
Mean value of tBodyAccJerk-mean()-Y for Activity and Subject
Mean value of tBodyAccJerk-mean()-Z for Activity and Subject
Mean value of tBodyAccJerk-std()-X for Activity and Subject
Mean value of tBodyAccJerk-std()-Y for Activity and Subject
Mean value of tBodyAccJerk-std()-Z for Activity and Subject
Mean value of tBodyGyro-mean()-X for Activity and Subject
Mean value of tBodyGyro-mean()-Y for Activity and Subject
Mean value of tBodyGyro-mean()-Z for Activity and Subject
Mean value of tBodyGyro-std()-X for Activity and Subject
Mean value of tBodyGyro-std()-Y for Activity and Subject
Mean value of tBodyGyro-std()-Z for Activity and Subject
Mean value of tBodyGyroJerk-mean()-X for Activity and Subject
Mean value of tBodyGyroJerk-mean()-Y for Activity and Subject
Mean value of tBodyGyroJerk-mean()-Z for Activity and Subject
Mean value of tBodyGyroJerk-std()-X for Activity and Subject
Mean value of tBodyGyroJerk-std()-Y for Activity and Subject
Mean value of tBodyGyroJerk-std()-Z for Activity and Subject
Mean value of tBodyAccMag-mean() for Activity and Subject
Mean value of tBodyAccMag-std() for Activity and Subject
Mean value of tGravityAccMag-mean() for Activity and Subject
Mean value of tGravityAccMag-std() for Activity and Subject
Mean value of tBodyAccJerkMag-mean() for Activity and Subject
Mean value of tBodyAccJerkMag-std() for Activity and Subject
Mean value of tBodyGyroMag-mean() for Activity and Subject
Mean value of tBodyGyroMag-std() for Activity and Subject
Mean value of tBodyGyroJerkMag-mean() for Activity and Subject
Mean value of tBodyGyroJerkMag-std() for Activity and Subject
Mean value of fBodyAcc-mean()-X for Activity and Subject
Mean value of fBodyAcc-mean()-Y for Activity and Subject
Mean value of fBodyAcc-mean()-Z for Activity and Subject
Mean value of fBodyAcc-std()-X for Activity and Subject
Mean value of fBodyAcc-std()-Y for Activity and Subject
Mean value of fBodyAcc-std()-Z for Activity and Subject
Mean value of fBodyAccJerk-mean()-X for Activity and Subject
Mean value of fBodyAccJerk-mean()-Y for Activity and Subject
Mean value of fBodyAccJerk-mean()-Z for Activity and Subject
Mean value of fBodyAccJerk-std()-X for Activity and Subject
Mean value of fBodyAccJerk-std()-Y for Activity and Subject
Mean value of fBodyAccJerk-std()-Z for Activity and Subject
Mean value of fBodyGyro-mean()-X for Activity and Subject
Mean value of fBodyGyro-mean()-Y for Activity and Subject
Mean value of fBodyGyro-mean()-Z for Activity and Subject
Mean value of fBodyGyro-std()-X for Activity and Subject
Mean value of fBodyGyro-std()-Y for Activity and Subject
Mean value of fBodyGyro-std()-Z for Activity and Subject
Mean value of fBodyAccMag-mean() for Activity and Subject
Mean value of fBodyAccMag-std() for Activity and Subject
Mean value of fBodyBodyAccJerkMag-mean() for Activity and Subject
Mean value of fBodyBodyAccJerkMag-std() for Activity and Subject
Mean value of fBodyBodyGyroMag-mean() for Activity and Subject
Mean value of fBodyBodyGyroMag-std() for Activity and Subject
Mean value of fBodyBodyGyroJerkMag-mean() for Activity and Subject
Mean value of fBodyBodyGyroJerkMag-std() for Activity and Subject

