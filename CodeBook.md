# Table of Contents
This is the codebook to go with my submission for the peer-reviewed assignment of Getting and Cleaning Data for the Johns Hopkins Coursera r specialisation. It consists of the following:

0. Table of Contents
1. Information on the 'tidyData' data table
  - Identifiers and averages of features
  - Description of the variables within the dataset
  - how to load 'tidydata' into R
  - about the dataset
2. How the 'tidydata' dataset was produced
3. A description of the features upon which the averages were based
  - Information on how the features were produced from the raw data
  - Information on the collection of raw data
  - About the original dataset
4. License

***
## Information on the 'tidyData' data table.

### Identifiers and averages of features

The table has two unique idendifier variables for each row of the table, 'subject' and 'activity'. The rest of the variables are the averages of select features, including the mean and the standard deviation. These are taken from the original dataset:
  "Human Activity Recognition Using Smartphones Dataset Version 1.0"
  
### Description of the variables within the dataset

The following table describes all the variables for the 'tidyData' table:

| Index |           Variables          |  Class  |  Range  | Description                                                                                               |
|-------|------------------------------| --------|---------|-----------------------------------------------------------------------------------------------------------|
|    1  | subject                      | integer |  1 - 30 | Identifies the human subject.                                                                             |
|    2  | activity                     | factor  |  1 -  6 | Identifies the activity. Labels: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
|    3  | Avrg-tBodyAcc-mean()-X       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on X axis.                                            |
|    4  | Avrg-tBodyAcc-mean()-Y       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Y axis.                                            |
|    5  | Avrg-tBodyAcc-mean()-Z       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Z axis.                                            |
|    6  | Avrg-tBodyAcc-std()-X        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on X axis.                              |
|    7  | Avrg-tBodyAcc-std()-Y        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Y axis.                              |
|    8  | Avrg-tBodyAcc-std()-Z        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Z axis.                              |
|    9  | Avrg-tGravityAcc-mean()-X    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on X axis.                                         |
|   10  | Avrg-tGravityAcc-mean()-Y    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Y axis.                                         |
|   11  | Avrg-tGravityAcc-mean()-Z    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Z axis.                                         |
|   12  | Avrg-tGravityAcc-std()-X     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on X axis.                           |
|   13  | Avrg-tGravityAcc-std()-Y     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Y axis.                           |
|   14  | Avrg-tGravityAcc-std()-Z     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Z axis.                           |
|   15  | Avrg-tBodyAccJerk-mean()-X   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on X axis.                                |
|   16  | Avrg-tBodyAccJerk-mean()-Y   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Y axis.                                |
|   17  | Avrg-tBodyAccJerk-mean()-Z   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Z axis.                                |
|   18  | Avrg-tBodyAccJerk-std()-X    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on X axis.                  |
|   19  | Avrg-tBodyAccJerk-std()-Y    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Y axis.                  |
|   20  | Avrg-tBodyAccJerk-std()-Z    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Z axis.                  |
|   21  | Avrg-tBodyGyro-mean()-X      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on X axis.                                             |
|   22  | Avrg-tBodyGyro-mean()-Y      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Y axis.                                             |
|   23  | Avrg-tBodyGyro-mean()-Z      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Z axis.                                             |
|   24  | Avrg-tBodyGyro-std()-X       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on X axis.                               |
|   25  | Avrg-tBodyGyro-std()-Y       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Y axis.                               |
|   26  | Avrg-tBodyGyro-std()-Z       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Z axis.                               |
|   27  | Avrg-tBodyGyroJerk-mean()-X  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on X axis.                                 |
|   28  | Avrg-tBodyGyroJerk-mean()-Y  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Y axis.                                 |
|   29  | Avrg-tBodyGyroJerk-mean()-Z  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Z axis.                                 |
|   30  | Avrg-tBodyGyroJerk-std()-X   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on X axis.                   |
|   31  | Avrg-tBodyGyroJerk-std()-Y   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Y axis.                   |
|   32  | Avrg-tBodyGyroJerk-std()-Z   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Z axis.                   |
|   33  | Avrg-tBodyAccMag-mean()      | numeric | [-1, 1] | Time domain, Average of means for the magnitude of body acceleration.                                     |
|   34  | Avrg-tBodyAccMag-std()       | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of body acceleration.                       |
|   35  | Avrg-tGravityAccMag-mean()   | numeric | [-1, 1] | Time domain, Average of means for the magnitude of gravity acceleration.                                  |
|   36  | Avrg-tGravityAccMag-std()    | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of gravity acceleration.                    |
|   38  | Avrg-tBodyAccJerkMag-mean()  | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of body accelaration.                            |
|   38  | Avrg-tBodyAccJerkMag-std()   | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of body accelaration.              |
|   39  | Avrg-tBodyGyroMag-mean()     | numeric | [-1, 1] | Time domain, Average of means for the magnitude of angular velocity.                                      |
|   40  | Avrg-tBodyGyroMag-std()      | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of angular velocity.                        |
|   41  | Avrg-tBodyGyroJerkMag-mean() | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of the angular velocity.                         |
|   42  | Avrg-tBodyGyroJerkMag-std()  | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of the angular velocity.           |
|   43  | Avrg-fBodyAcc-mean()-X       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on X axis.                                       |
|   44  | Avrg-fBodyAcc-mean()-Y       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Y axis.                                       |
|   45  | Avrg-fBodyAcc-mean()-Z       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Z axis.                                       |
|   46  | Avrg-fBodyAcc-std()-X        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on X axis.                         |
|   47  | Avrg-fBodyAcc-std()-Y        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Y axis.                         |
|   48  | Avrg-fBodyAcc-std()-Z        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Z axis.                         |
|   49  | Avrg-fBodyAccJerk-mean()-X   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on X axis.                       |
|   50  | Avrg-fBodyAccJerk-mean()-Y   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Y axis.                       |
|   51  | Avrg-fBodyAccJerk-mean()-Z   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Z axis.                       |
|   52  | Avrg-fBodyAccJerk-std()-X    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on X axis.         |
|   53  | Avrg-fBodyAccJerk-std()-Y    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Y axis.         |
|   54  | Avrg-fBodyAccJerk-std()-Z    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Z axis.         |
|   55  | Avrg-fBodyGyro-mean()-X      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on X axis.                            |
|   56  | Avrg-fBodyGyro-mean()-Y      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Y axis.                            |
|   57  | Avrg-fBodyGyro-mean()-Z      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Z axis.                            |
|   58  | Avrg-fBodyGyro-std()-X       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis.              |
|   59  | Avrg-fBodyGyro-std()-Y       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis.              |
|   60  | Avrg-fBodyGyro-std()-Z       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis.              |
|   61  | Avrg-fBodyAccMag-mean()      | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of body acceleration.                                |
|   62  | Avrg-fBodyAccMag-std()       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of body acceleration.                  |
|   63  | Avrg-fBodyAccJerkMag-mean()  | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of body acceleration.                       |
|   64  | Avrg-fBodyAccJerkMag-std()   | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of jerk, of body acceleration.         |
|   65  | Avrg-fBodyGyroMag-mean()     | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of angular velocity.                                 |
|   66  | Avrg-fBodyGyroMag-std()      | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of angular velocity.                   |
|   67  | Avrg-fBodyGyroJerkMag-mean() | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of angular velocity.                        |
|   68  | Avrg-fBodyGyroJerkMag-std()  | numeric | [-1, 1] | Frequency domain, Average of standard deviation for the magnitude of jerk, of angular velocity.           |

### How to load 'tidyData' into R

To properly load the the 'tidyData' table into R, use the following command:
```
tidyData <- read.table(file = "tidyData.txt", header = TRUE, check.names = FALSE, dec = "."
```
Another option is to load the Data.Table package and then use fread() for a faster and simpler load:
```
library(data.table)
tidyData <- fread("tidyData.txt")
```

### About the 'tidyData' table

This dataset was created for the needs of:

> Course 3: 'Getting and Cleaning Data',
> from 'Data Science Specialisation',
> by Johns Hopkins University via Coursera

> The course is taught by:
>   - Jeff Leek, Phd
>   - Roger D. Peng, Phd
>   - Brian Caffo, Phd
  
The data table can be reproduced using the script available at the Github repository:
[Getting and Cleaning Data Assignment](https://github.com/EccentricTom/Getting-and-Cleaning-Data-Course-Project)
The following should be taken into account before attempting to reproduce the data:
  - The data was downloaded and processed using the script [run_analysis.R](https://github.com/EccentricTom/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R)
  - The data was sourced from the url:  "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" at 'Monday April 6 12:12:05 2020' in the timezone GMT + 8 (Asia/Singapore).
  - The script was executed in RStudio (version 3.6.1)
  - The library 'Data.Table' version 1.12.8 was used
  - This is the output of 'R.version:
```
platform       x86_64-w64-mingw32          
arch           x86_64                      
os             mingw32                     
system         x86_64, mingw32             
status                                     
major          3                           
minor          6.1                         
year           2019                        
month          07                          
day            05                          
svn rev        76782                       
language       R                           
version.string R version 3.6.1 (2019-07-05)
nickname       Action of the Toes
```
***
### How the 'tidyData' table was produced

To produced the 'tidyData' data table, the script '[run_analysis.R](https://github.com/EccentricTom/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R)' was written and used.
It performs the following tasks:
1. It creates and sets a new working directory
2. Downloads the zip file from the url: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" and unzips the contents in the new directory.
3. It loads the activity names and measurements data from the text files:
    - "activity_labels.txt"
    - "features.txt"
  from the main 'UCI HAR Dataset" folder, selecting only the mean and standard deviation measurements.
4. Reads and binds the three text files from the "train" and "test" folders, and then binds the resulting two dataframes into 1 large dataset by rows.
5. Adds the appropriate acitivity labels to the new large dataset.
6. Groups the new tidy data table by subject and activity
7. Summarise each variable to find the average for the grouped variables.
8. Ungroup the data table to respect the rules of tidy Data.
9. Write the data into a CSV file and a text file with these commands:
```
fwrite(x = combined, file = "activityData.csv", quote = FALSE)
write.table(combined, "tidyData.txt", row.names = FALSE)
```
***
##  Description of the features upon which the averages were based
### Information on how the features were produced from the raw data

The select features were produced as explained in the "features_info.txt" file of the original dataset:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
> 
> These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
> 
> tBodyAcc-XYZ 
> tGravityAcc-XYZ 
> tBodyAccJerk-XYZ 
> tBodyGyro-XYZ 
> tBodyGyroJerk-XYZ 
> tBodyAccMag 
> tGravityAccMag 
> tBodyAccJerkMag 
> tBodyGyroMag 
> tBodyGyroJerkMag 
> fBodyAcc-XYZ 
> fBodyAccJerk-XYZ 
> fBodyGyro-XYZ 
> fBodyAccMag 
> fBodyAccJerkMag 
> fBodyGyroMag 
> fBodyGyroJerkMag 
> 
> The set of variables that were estimated from these signals are: 
> 
> mean(): Mean value
> std(): Standard deviation
> mad(): Median absolute deviation 
> max(): Largest value in array 
> min(): Smallest value in array 
> sma(): Signal magnitude area
> energy(): Energy measure. Sum of the squares divided by the number of values. 
> iqr(): Interquartile range 
> entropy(): Signal entropy 
> arCoeff(): Autorregresion coefficients with Burg order equal to 4 
> correlation(): correlation coefficient between two signals 
> maxInds(): index of the frequency component with largest magnitude 
> meanFreq(): Weighted average of the frequency components to obtain a mean frequency 
> skewness(): skewness of the frequency domain signal 
> kurtosis(): kurtosis of the frequency domain signal 
> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window. 
> angle(): Angle between to vectors. 
> 
> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
> 
> gravityMean
> tBodyAccMean 
> tBodyAccJerkMean 
> tBodyGyroMean 
> tBodyGyroJerkMean
> 

### Information on the collection of raw data

The raw signal production is explained in the "README.txt" file of the original data set, as explained:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
> 
> #### For each record it is provided:
> 
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment.

It also contains the following notes:

> Notes:
> 
> - Features are normalized and bounded within [-1,1].
> - Each feature vector is a row on the text file.

### About the original dataset

The "tidyData" table was created by using the following data set:
> Human Activity Recognition Using Smartphones Dataset Version 1.0
> 
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
> Smartlab - Non Linear Complex Systems Laboratory
> DITEN - Università degli Studi di Genova.
> Via Opera Pia 11A, I-16145, Genoa, Italy. 
> activityrecognition@smartlab.ws 
> www.smartlab.ws

More information about the original dataset can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

***
### License

This is the copy-paste license from the original "README.txt" file from the original dataset:

> Use of this dataset in publications must be acknowledged by referencing the following publication [1]
> 
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
> 
> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
> 
> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

***
