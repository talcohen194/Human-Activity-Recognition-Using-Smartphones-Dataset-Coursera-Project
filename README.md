# Human-Activity-Recognition-Using-Smartphones-Dataset-Coursera-Project
Final project in the course Getting and Cleaning Data. 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The data was collected from the accelerometers from the Samsung Galaxy S smartphone which you can find on: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project can be find here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
It includes the following files:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

##Repository Contents
This repo contains:
-	A codebook: where you can find explanations about the variables, the transformations and resulting data. 
-	A readME file: explaining the purpose and contents of this repository.
-	A run_analysis R file: containing the R code for this project.
-	A tidy.data file: that contains the final result, the raw data that transfer to a tidy data that can be used for later analysis.

##RUN
In this project I used R, took a raw data and make it a tidy data set.
1.	I click the link with the zip files and download it.
2.	I unzip the files by moving the "UCI HAR Dataset" file to a different folder ("project").
3.	I open an R script, called it "run_analysis"  and followed the project steps:
a.	I load the test and train files into R.
b.	I labeled the data set with descriptive variable names using the descriptions in the "features" file.
c.	I merged the test files and then I merged the training files. After that I merged the two to create one data set.
d.	I used descriptive activity names from the "activity_labels" file to name the activities in the data set (each activity were assign to a number before).
e.	I extracted only the measurements on the mean and standard deviation for each measurement. The variables that left were the activity labels, the subject labels and 79 more variables that contains mean, meanFreq or std measurements (10299 obs).

 

f.	From this data set I created an independent tidy data set. I sorted the data by groups according to activity and then subject and run the mean function.
4.	The final data set was saved under "tidy.data.set.txt", the R script was saved under "run_analysis.r" and they're both uploaded to this repo.

 





