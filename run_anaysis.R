
data_train = read.table("X_train.txt")
data_test = read.table("X_test.txt")
data = rbind(data_train, data_test)
rm(data_train,data_test)
#print(dim(data))

# 1.


# 2.
data2 = data[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,
                240:241,253:254,266:271,345:350,424:429,503:504,516:517,
                529:530,542:543)]
rm(data)
#print(dim(data2))

# 3.
labels_train = read.table("y_train.txt",stringsAsFactors = FALSE)
labels_test = read.table("y_test.txt",stringsAsFactors = FALSE)
labels = rbind(labels_train, labels_test)
rm(labels_train,labels_test)
label_name = read.table("activity_labels.txt",stringsAsFactors = FALSE)
#labels2 <- labels
for(i in 1:dim(labels)[1]) {
  labels[i,1] = label_name[which(label_name[,1] == labels[i,1], arr.ind = TRUE),2]
}
data2 = data.frame(labels, data2)

# 4.
colnames(data2) = c("Activity",
                    "tBodyAcc-mean()-X",
                    "tBodyAcc-mean()-Y",
                    "tBodyAcc-mean()-Z",
                    "tBodyAcc-std()-X",
                    "tBodyAcc-std()-Y",
                    "tBodyAcc-std()-Z",
                    "tGravityAcc-mean()-X",
                    "tGravityAcc-mean()-Y",
                    "tGravityAcc-mean()-Z",
                    "tGravityAcc-std()-X",
                    "tGravityAcc-std()-Y",
                    "tGravityAcc-std()-Z",
                    "tBodyAccJerk-mean()-X",
                    "tBodyAccJerk-mean()-Y",
                    "tBodyAccJerk-mean()-Z",
                    "tBodyAccJerk-std()-X",
                    "tBodyAccJerk-std()-Y",
                    "tBodyAccJerk-std()-Z",
                    "tBodyGyro-mean()-X",
                    "tBodyGyro-mean()-Y",
                    "tBodyGyro-mean()-Z",
                    "tBodyGyro-std()-X",
                    "tBodyGyro-std()-Y",
                    "tBodyGyro-std()-Z",
                    "tBodyGyroJerk-mean()-X",
                    "tBodyGyroJerk-mean()-Y",
                    "tBodyGyroJerk-mean()-Z",
                    "tBodyGyroJerk-std()-X",
                    "tBodyGyroJerk-std()-Y",
                    "tBodyGyroJerk-std()-Z",
                    "tBodyAccMag-mean()",
                    "tBodyAccMag-std()",
                    "tGravityAccMag-mean()",
                    "tGravityAccMag-std()",
                    "tBodyAccJerkMag-mean()",
                    "tBodyAccJerkMag-std()",
                    "tBodyGyroMag-mean()",
                    "tBodyGyroMag-std()",
                    "tBodyGyroJerkMag-mean()",
                    "tBodyGyroJerkMag-std()",
                    "fBodyAcc-mean()-X",
                    "fBodyAcc-mean()-Y",
                    "fBodyAcc-mean()-Z",
                    "fBodyAcc-std()-X",
                    "fBodyAcc-std()-Y",
                    "fBodyAcc-std()-Z",
                    "fBodyAccJerk-mean()-X",
                    "fBodyAccJerk-mean()-Y",
                    "fBodyAccJerk-mean()-Z",
                    "fBodyAccJerk-std()-X",
                    "fBodyAccJerk-std()-Y",
                    "fBodyAccJerk-std()-Z",
                    "fBodyGyro-mean()-X",
                    "fBodyGyro-mean()-Y",
                    "fBodyGyro-mean()-Z",
                    "fBodyGyro-std()-X",
                    "fBodyGyro-std()-Y",
                    "fBodyGyro-std()-Z",
                    "fBodyAccMag-mean()",
                    "fBodyAccMag-std()",
                    "fBodyBodyAccJerkMag-mean()",
                    "fBodyBodyAccJerkMag-std()",
                    "fBodyBodyGyroMag-mean()",
                    "fBodyBodyGyroMag-std()",
                    "fBodyBodyGyroJerkMag-mean()",
                    "fBodyBodyGyroJerkMag-std()"                    
                    )

# 5.

subject_train = read.table("subject_train.txt")
subject_test = read.table("subject_test.txt")
subject = rbind(subject_train, subject_test)
rm(subject_train,subject_test)

data2 = cbind(subject, data2)
colnames(data2)[1] = "Subject"

first_row = TRUE
for(subj in 1:30) {
  sub = subset(data2, Subject==subj)
  # obter lista de actividades distintas em sub
  act_list = unique(sub[,2])
  for(act in act_list) {
    sub2 = subset(sub, Activity==act)
    avg = rbind(colMeans(sub2[,3:68],na.rm=TRUE))
    avg = cbind.data.frame(act, subj, avg)
    if(first_row == FALSE) {
      avg_matrix = rbind(avg_matrix, avg)
    }
    else {
      avg_matrix = avg
      first_row=FALSE
    }    
  }
}
colnames(avg_matrix)[1] = "Activity"
colnames(avg_matrix)[2] = "Subject"
write.table(avg_matrix, file="average.txt", row.name=FALSE)

  