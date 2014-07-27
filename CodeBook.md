HARUS-Project Tidy Data
=============

This document describes the variables and data in the `tidydata.txt` file in this repository. A detailed description of the construction of this data set is found in the `README.md` file in this repository.

## Description

The tidy data set `tidydata.txt` found in this repository was derived from the Human Activity and Recognition Using Smartphones data files found in the zip file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and described in more detail at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  In the study, each of 30 subjects performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using the embedded accelerometer and gyroscope, measurements of 3-axial linear acceleration and 3-axial angular velocity were obtained.  The data set contains *means* of 66 feature variables for each of 30 subjects and 6 activities. Hence, the data set comprises 180 rows (subject-activity combinations) and 68 columns (SubjectID, Activity, and 66 feature variables).

## Format

A data frame with 180 observations on 68 variables. The data are stored in the text file `tidydata.txt` with spaces separating columns. 

1. **SubjectID** Subject identification number (integer)
  * 01..30 Unique integer identifier between 1 and 30 for each subject
        
2. **Activity**  Activity corresponding to the feature observation (character)
  * Walking
  * Walking_Upstairs
  * Walking_Downstairs
  * Sitting
  * Standing
  * Laying
  
The remaining  variables are  **averages** of normalized feature variables and, hence, are numeric variables that can range between -1 and 1. The variable names are descriptive and follow the same pattern. Details are provided below.

3. **TimeBodyAccXMean** mean of X-axial raw  body signal from accelerometer in time domain 
4. **TimeBodyAccYMean**  mean of Y-axial raw body signal from accelerometer in time domain 
5. **TimeBodyAccZMean**  mean of X-axial raw body signal from accelerometer in time domain 
6. **TimeBodyAccXStd**  SD of X-axial raw body signal from accelerometer in time domain 
7. **TimeBodyAccYStd**  SD of Y-axial raw body signal from accelerometer in time domain 
8. **TimeBodyAccZStd**  SD of Z-axial raw body signal from accelerometer in time domain 
9. **TimeGravityAccXMean** mean of X-axial raw  gravity signal from accelerometer in time domain 
10. **TimeGravityAccYMean** mean of Y-axial raw  gravity signal from accelerometer in time domain 
11. **TimeGravityAccZMean** mean of Z-axial raw  gravity signal from accelerometer in time domain 
12. **TimeGravityAccXStd** SD of X-axial raw  gravity signal from accelerometer in time domain 
13. **TimeGravityAccYStd** SD of Y-axial raw  gravity signal from accelerometer in time domain 
14. **TimeGravityAccZStd** SD of Z-axial raw  gravity signal from accelerometer in time domain 
15. **TimeBodyAccJerkXMean** mean of X-axial jerk  body signal from accelerometer in time domain 
16. **TimeBodyAccJerkYMean** mean of Y-axial jerk  body signal from accelerometer in time domain 
17. **TimeBodyAccJerkZMean** mean of Z-axial jerk  body signal from accelerometer in time domain 
18. **TimeBodyAccJerkXStd** SD of X-axial jerk  body signal from accelerometer in time domain 
19. **TimeBodyAccJerkYStd** SD of Y-axial jerk  body signal from accelerometer in time domain 
20. **TimeBodyAccJerkZStd** SD of Z-axial jerk  body signal from accelerometer in time domain 
21. **TimeBodyGyroXMean**  mean of X-axial raw  body signal from gyroscope in time domain 
22. **TimeBodyGyroYMean** mean of Y-axial raw  body signal from gyroscope in time domain 
23. **TimeBodyGyroZMean** mean of Z-axial raw  body signal from gyroscope in time domain 
24. **TimeBodyGyroXStd** SD of X-axial raw  body signal from gyroscope in time domain 
25. **TimeBodyGyroYStd** SD of Y-axial raw  body signal from gyroscope in time domain 
26. **TimeBodyGyroZStd** SD of Z-axial raw  body signal from gyroscope in time domain 
27. **TimeBodyGyroJerkXMean** Mean of X-axial jerk body signal from gyroscope in time domain 
28. **TimeBodyGyroJerkYMean** Mean of Y-axial jerk body signal from gyroscope in time domain 
29. **TimeBodyGyroJerkZMean** Mean of Z-axial jerk body signal from gyroscope in time domain 
30. **TimeBodyGyroJerkXStd** SD of X-axial jerk body signal from gyroscope in time domain 
31. **TimeBodyGyroJerkYStd** SD of Y-axial jerk body signal from gyroscope in time domain 
32. **TimeBodyGyroJerkZStd** SD of Z-axial jerk body signal from gyroscope in time domain 
33. **TimeBodyAccMagMean** Mean of Euclidean norm magnitude of body signal from accelerometer in time domain 
34. **TimeBodyAccMagStd** SD of Euclidean norm magnitude of body signal from accelerometer in time domain 
35. **TimeGravityAccMagMean** Mean of Euclidean norm magnitude of gravity signal from accelerometer in time domain
36. **TimeGravityAccMagStd** SD of Euclidean norm magnitude of gravity signal from accelerometer in time domain
37. **TimeBodyAccJerkMagMean** Mean of Euclidean norm magnitude of jerk body signal from accelerometer in time domain 
38. **TimeBodyAccJerkMagStd** SD of Euclidean norm magnitude of jerk body signal from accelerometer in time domain 
39. **TimeBodyGyroMagMean** Mean of Euclidean norm magnitude of gravity signal from gyroscope in time domain
40. **TimeBodyGyroMagStd** SD of Euclidean norm magnitude of gravity signal from gyroscope in time domain
41. **TimeBodyGyroJerkMagMean** Mean of Euclidean norm magnitude of jerk body signal from gyroscope in time domain
42. **TimeBodyGyroJerkMagStd** SD of Euclidean norm magnitude of jerk body signal from gyroscope in time domain
43. **FreqBodyAccXMean** mean of X-axial raw  body signal from accelerometer in frequency domain 
44. **FreqBodyAccYMean** mean of Y-axial raw  body signal from accelerometer in frequency domain 
45. **FreqBodyAccZMean** mean of Z-axial raw  body signal from accelerometer in frequency domain 
46. **FreqBodyAccXStd** SD of X-axial raw  body signal from accelerometer in frequency domain 
47. **FreqBodyAccYStd** SD of Y-axial raw  body signal from accelerometer in frequency domain 
48. **FreqBodyAccZStd** SD of Z-axial raw  body signal from accelerometer in frequency domain 
49. **FreqBodyAccJerkXMean** mean of X-axial raw  gravity signal from accelerometer in frequency domain 
50. **FreqBodyAccJerkYMean** mean of Y-axial raw  gravity signal from accelerometer in frequency domain 
51. **FreqBodyAccJerkZMean** mean of Z-axial raw  gravity signal from accelerometer in frequency domain 
52. **FreqBodyAccJerkXStd** SD of X-axial jerk  body signal from accelerometer in frequency domain 
53. **FreqBodyAccJerkYStd** SD of Y-axial jerk  body signal from accelerometer in frequency domain 
54. **FreqBodyAccJerkZStd** SD of Z-axial jerk  body signal from accelerometer in frequency domain 
55. **FreqBodyGyroXMean**  mean of X-axial raw  body signal from gyroscope in frequency domain 
56. **FreqBodyGyroYMean** mean of Y-axial raw  body signal from gyroscope in frequency domain 
57. **FreqBodyGyroZMean** mean of Z-axial raw  body signal from gyroscope in frequency domain 
58. **FreqBodyGyroXStd**   SD of X-axial raw  body signal from gyroscope in frequency domain 
59. **FreqBodyGyroYStd**  SD of Y-axial raw  body signal from gyroscope in frequency domain 
60. **FreqBodyGyroZStd** SD of Z-axial raw  body signal from gyroscope in frequency domain 
61. **FreqBodyAccMagMean** Mean of Euclidean norm magnitude of body signal from accelerometer in frequency domain 
62. **FreqBodyAccMagStd** SD of Euclidean norm magnitude of body signal from accelerometer in frequency domain 
63. **FreqBodyAccJerkMagMean** Mean of Euclidean norm magnitude of jerk body signal from accelerometer in frequency domain 
64. **FreqBodyAccJerkMagStd** SD of Euclidean norm magnitude of jerk body signal from accelerometer in frequency domain 
65. **FreqBodyGyroMagMean** Mean of Euclidean norm magnitude of gravity signal from gyroscope in frequency domain
66. **FreqBodyGyroMagStd** SD of Euclidean norm magnitude of gravity signal from gyroscope in frequency domain
67. **FreqBodyGyroJerkMagMean** Mean of Euclidean norm magnitude of jerk body signal from gyroscope in frequency domain
68. **FreqBodyGyroJerkMagStd**  SD of Euclidean norm magnitude of jerk body signal from gyroscope in frequency domain

## Data Summary

A summary of each data produced by R is provided below for data checking purposes.

```
   SubjectID                  Activity  TimeBodyAccXMean TimeBodyAccYMean   
 Min.   : 1.0   Walking           :30   Min.   :0.2216   Min.   :-0.040514  
 1st Qu.: 8.0   Walking_Upstairs  :30   1st Qu.:0.2712   1st Qu.:-0.020022  
 Median :15.5   Walking_Downstairs:30   Median :0.2770   Median :-0.017262  
 Mean   :15.5   Sitting           :30   Mean   :0.2743   Mean   :-0.017876  
 3rd Qu.:23.0   Standing          :30   3rd Qu.:0.2800   3rd Qu.:-0.014936  
 Max.   :30.0   Laying            :30   Max.   :0.3015   Max.   :-0.001308  
 TimeBodyAccZMean   TimeBodyAccXStd   TimeBodyAccYStd    TimeBodyAccZStd  
 Min.   :-0.15251   Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877  
 1st Qu.:-0.11207   1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498  
 Median :-0.10819   Median :-0.7526   Median :-0.50897   Median :-0.6518  
 Mean   :-0.10916   Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756  
 3rd Qu.:-0.10443   3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306  
 Max.   :-0.07538   Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090  
 TimeGravityAccXMean TimeGravityAccYMean TimeGravityAccZMean TimeGravityAccXStd
 Min.   :-0.6800     Min.   :-0.47989    Min.   :-0.49509    Min.   :-0.9968   
 1st Qu.: 0.8376     1st Qu.:-0.23319    1st Qu.:-0.11726    1st Qu.:-0.9825   
 Median : 0.9208     Median :-0.12782    Median : 0.02384    Median :-0.9695   
 Mean   : 0.6975     Mean   :-0.01621    Mean   : 0.07413    Mean   :-0.9638   
 3rd Qu.: 0.9425     3rd Qu.: 0.08773    3rd Qu.: 0.14946    3rd Qu.:-0.9509   
 Max.   : 0.9745     Max.   : 0.95659    Max.   : 0.95787    Max.   :-0.8296   
 TimeGravityAccYStd TimeGravityAccZStd TimeBodyAccJerkXMean TimeBodyAccJerkYMean
 Min.   :-0.9942    Min.   :-0.9910    Min.   :0.04269      Min.   :-0.0386872  
 1st Qu.:-0.9711    1st Qu.:-0.9605    1st Qu.:0.07396      1st Qu.: 0.0004664  
 Median :-0.9590    Median :-0.9450    Median :0.07640      Median : 0.0094698  
 Mean   :-0.9524    Mean   :-0.9364    Mean   :0.07947      Mean   : 0.0075652  
 3rd Qu.:-0.9370    3rd Qu.:-0.9180    3rd Qu.:0.08330      3rd Qu.: 0.0134008  
 Max.   :-0.6436    Max.   :-0.6102    Max.   :0.13019      Max.   : 0.0568186  
 TimeBodyAccJerkZMean TimeBodyAccJerkXStd TimeBodyAccJerkYStd TimeBodyAccJerkZStd
 Min.   :-0.067458    Min.   :-0.9946     Min.   :-0.9895     Min.   :-0.99329   
 1st Qu.:-0.010601    1st Qu.:-0.9832     1st Qu.:-0.9724     1st Qu.:-0.98266   
 Median :-0.003861    Median :-0.8104     Median :-0.7756     Median :-0.88366   
 Mean   :-0.004953    Mean   :-0.5949     Mean   :-0.5654     Mean   :-0.73596   
 3rd Qu.: 0.001958    3rd Qu.:-0.2233     3rd Qu.:-0.1483     3rd Qu.:-0.51212   
 Max.   : 0.038053    Max.   : 0.5443     Max.   : 0.3553     Max.   : 0.03102   
 TimeBodyGyroXMean  TimeBodyGyroYMean  TimeBodyGyroZMean  TimeBodyGyroXStd 
 Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.9943  
 1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.9735  
 Median :-0.02871   Median :-0.07318   Median : 0.08512   Median :-0.7890  
 Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.6916  
 3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.4414  
 Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910   Max.   : 0.2677  
 TimeBodyGyroYStd  TimeBodyGyroZStd  TimeBodyGyroJerkXMean TimeBodyGyroJerkYMean
 Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721      Min.   :-0.07681     
 1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322      1st Qu.:-0.04552     
 Median :-0.8017   Median :-0.8010   Median :-0.09868      Median :-0.04112     
 Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606      Mean   :-0.04269     
 3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110      3rd Qu.:-0.03842     
 Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209      Max.   :-0.01320     
 TimeBodyGyroJerkZMean TimeBodyGyroJerkXStd TimeBodyGyroJerkYStd
 Min.   :-0.092500     Min.   :-0.9965      Min.   :-0.9971     
 1st Qu.:-0.061725     1st Qu.:-0.9800      1st Qu.:-0.9832     
 Median :-0.053430     Median :-0.8396      Median :-0.8942     
 Mean   :-0.054802     Mean   :-0.7036      Mean   :-0.7636     
 3rd Qu.:-0.048985     3rd Qu.:-0.4629      3rd Qu.:-0.5861     
 Max.   :-0.006941     Max.   : 0.1791      Max.   : 0.2959     
 TimeBodyGyroJerkZStd TimeBodyAccMagMean TimeBodyAccMagStd TimeGravityAccMagMean
 Min.   :-0.9954      Min.   :-0.9865    Min.   :-0.9865   Min.   :-0.9865      
 1st Qu.:-0.9848      1st Qu.:-0.9573    1st Qu.:-0.9430   1st Qu.:-0.9573      
 Median :-0.8610      Median :-0.4829    Median :-0.6074   Median :-0.4829      
 Mean   :-0.7096      Mean   :-0.4973    Mean   :-0.5439   Mean   :-0.4973      
 3rd Qu.:-0.4741      3rd Qu.:-0.0919    3rd Qu.:-0.2090   3rd Qu.:-0.0919      
 Max.   : 0.1932      Max.   : 0.6446    Max.   : 0.4284   Max.   : 0.6446      
 TimeGravityAccMagStd TimeBodyAccJerkMagMean TimeBodyAccJerkMagStd
 Min.   :-0.9865      Min.   :-0.9928        Min.   :-0.9946      
 1st Qu.:-0.9430      1st Qu.:-0.9807        1st Qu.:-0.9765      
 Median :-0.6074      Median :-0.8168        Median :-0.8014      
 Mean   :-0.5439      Mean   :-0.6079        Mean   :-0.5842      
 3rd Qu.:-0.2090      3rd Qu.:-0.2456        3rd Qu.:-0.2173      
 Max.   : 0.4284      Max.   : 0.4345        Max.   : 0.4506      
 TimeBodyGyroMagMean TimeBodyGyroMagStd TimeBodyGyroJerkMagMean
 Min.   :-0.9807     Min.   :-0.9814    Min.   :-0.99732       
 1st Qu.:-0.9461     1st Qu.:-0.9476    1st Qu.:-0.98515       
 Median :-0.6551     Median :-0.7420    Median :-0.86479       
 Mean   :-0.5652     Mean   :-0.6304    Mean   :-0.73637       
 3rd Qu.:-0.2159     3rd Qu.:-0.3602    3rd Qu.:-0.51186       
 Max.   : 0.4180     Max.   : 0.3000    Max.   : 0.08758       
 TimeBodyGyroJerkMagStd FreqBodyAccXMean  FreqBodyAccYMean   FreqBodyAccZMean 
 Min.   :-0.9977        Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895  
 1st Qu.:-0.9805        1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619  
 Median :-0.8809        Median :-0.7691   Median :-0.59498   Median :-0.7236  
 Mean   :-0.7550        Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297  
 3rd Qu.:-0.5767        3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183  
 Max.   : 0.2502        Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807  
 FreqBodyAccXStd   FreqBodyAccYStd    FreqBodyAccZStd   FreqBodyAccJerkXMean
 Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.9946     
 1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459   1st Qu.:-0.9828     
 Median :-0.7470   Median :-0.51338   Median :-0.6441   Median :-0.8126     
 Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824   Mean   :-0.6139     
 3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655   3rd Qu.:-0.2820     
 Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871   Max.   : 0.4743     
 FreqBodyAccJerkYMean FreqBodyAccJerkZMean FreqBodyAccJerkXStd FreqBodyAccJerkYStd
 Min.   :-0.9894      Min.   :-0.9920      Min.   :-0.9951     Min.   :-0.9905    
 1st Qu.:-0.9725      1st Qu.:-0.9796      1st Qu.:-0.9847     1st Qu.:-0.9737    
 Median :-0.7817      Median :-0.8707      Median :-0.8254     Median :-0.7852    
 Mean   :-0.5882      Mean   :-0.7144      Mean   :-0.6121     Mean   :-0.5707    
 3rd Qu.:-0.1963      3rd Qu.:-0.4697      3rd Qu.:-0.2475     3rd Qu.:-0.1685    
 Max.   : 0.2767      Max.   : 0.1578      Max.   : 0.4768     Max.   : 0.3498    
 FreqBodyAccJerkZStd FreqBodyGyroXMean FreqBodyGyroYMean FreqBodyGyroZMean
 Min.   :-0.993108   Min.   :-0.9931   Min.   :-0.9940   Min.   :-0.9860  
 1st Qu.:-0.983747   1st Qu.:-0.9697   1st Qu.:-0.9700   1st Qu.:-0.9624  
 Median :-0.895121   Median :-0.7300   Median :-0.8141   Median :-0.7909  
 Mean   :-0.756489   Mean   :-0.6367   Mean   :-0.6767   Mean   :-0.6044  
 3rd Qu.:-0.543787   3rd Qu.:-0.3387   3rd Qu.:-0.4458   3rd Qu.:-0.2635  
 Max.   :-0.006236   Max.   : 0.4750   Max.   : 0.3288   Max.   : 0.4924  
 FreqBodyGyroXStd  FreqBodyGyroYStd  FreqBodyGyroZStd  FreqBodyAccMagMean
 Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867   Min.   :-0.9868   
 1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643   1st Qu.:-0.9560   
 Median :-0.8086   Median :-0.7964   Median :-0.8224   Median :-0.6703   
 Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577   Mean   :-0.5365   
 3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916   3rd Qu.:-0.1622   
 Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225   Max.   : 0.5866   
 FreqBodyAccMagStd FreqBodyAccJerkMagMean FreqBodyAccJerkMagStd
 Min.   :-0.9876   Min.   :-0.9940        Min.   :-0.9944      
 1st Qu.:-0.9452   1st Qu.:-0.9770        1st Qu.:-0.9752      
 Median :-0.6513   Median :-0.7940        Median :-0.8126      
 Mean   :-0.6210   Mean   :-0.5756        Mean   :-0.5992      
 3rd Qu.:-0.3654   3rd Qu.:-0.1872        3rd Qu.:-0.2668      
 Max.   : 0.1787   Max.   : 0.5384        Max.   : 0.3163      
 FreqBodyGyroMagMean FreqBodyGyroMagStd FreqBodyGyroJerkMagMean
 Min.   :-0.9865     Min.   :-0.9815    Min.   :-0.9976        
 1st Qu.:-0.9616     1st Qu.:-0.9488    1st Qu.:-0.9813        
 Median :-0.7657     Median :-0.7727    Median :-0.8779        
 Mean   :-0.6671     Mean   :-0.6723    Mean   :-0.7564        
 3rd Qu.:-0.4087     3rd Qu.:-0.4277    3rd Qu.:-0.5831        
 Max.   : 0.2040     Max.   : 0.2367    Max.   : 0.1466        
 FreqBodyGyroJerkMagStd
 Min.   :-0.9976       
 1st Qu.:-0.9802       
 Median :-0.8941       
 Mean   :-0.7715       
 3rd Qu.:-0.6081       
 Max.   : 0.2878       
```


## Source

Details of the study from which these data arise are found in the following paper. I thank the authors for making their data available for further study. 

[1]: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine." International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

