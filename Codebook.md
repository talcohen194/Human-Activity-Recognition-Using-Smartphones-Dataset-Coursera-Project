
# Human Activity Recognition Using Smartphones Dataset – Coursera Project

## The raw data set

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain".

## Structure 

1.	I read the files using the "read.table" command.
2.	The next actions has been done to make the data tidy and ready to analysis according to the project demands.
3.	I named the variables in the X_test/train files (test/training set of observations) using the content in the feature text file with the command "names".
4.	I named the header of Y_test/training files ( a one column files containing the numbers 1:6 which refers to the activities the subject done in the research) "activity labels".
5.	I merged the X,Y and subject file ( a one column file containing the numbers 1:30 which refers to the individual person that participate in the research) with the "cbind" command (I did it to the test files and the training files separately).
6.	I merged the 2 data sets from section 4 with "rbind" command.
7.	 I used the description in the "activity labels" text file (contains all six numbers and assigns them the appropriate activity)  to change the factor variable "activity labels" to be more informative by using the "gsub" command.
8.	I build a second, independent tidy data set. I extract the mean, std and label variables using the "grep" command. I called it "std.mean.data". 
9.	I renamed the label variables using the "rename" command.
10.	I sorted the second data set into groups by activity and by subject using the "group_by" command. I called it "grouped.data".
11.	I calculated the average of the second grouped data set with the "summarize_each" command.
12.	Finally I moved the second data set ( called "final.data" ) into a text file using the "write.table" command.  



## Features

Here I will write all the features in the data set before extracting the mean, std and label variables.
1.	Activity label – a variable that defined what activity the subject perform (there are six: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
In the final data set I renamed it "activity".
2.	Subject label – defined from the 30 volunteers who was the person that performed this observations. 
In the final data set I renamed it "subject".
3.	The rest of the features listed in the "features" file and explained in the "deatures_info" file which are both part of the data files in the zip link.
