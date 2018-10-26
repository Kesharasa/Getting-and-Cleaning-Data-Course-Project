---
title: "Codebook"
author: "Keshav"
date: "October 24, 2018"
output: html_document
---


>The variables for this database are the information collected from the Accelerometerelerometer and Gyroscopescope 3-axial raw signals TimeAccelerometer-XYZ and TimeGyroscope-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the Acceleration signal was then separated into body and gravity Acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear Acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the Magnitudenitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyDomainBodyAccelerometer-XYZ, FrequencyDomainBodyAccelerometerJerk-XYZ, FrequencyDomainBodyGyroscope-XYZ, FrequencyDomainBodyAccelerometerJerkMagnitude, FrequencyDomainBodyGyroscopeMagnitude, FrequencyDomainBodyGyroscopeJerkMagnitude. 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


**Subject** :- Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

**Activity** :- Identifies the acitivitirs performed by each subject. The activities are  :-      
			1. WALKING  
			2. WALKING_UPSTAIRS   
			3. WALKING_DOWNSTAIRS   
			4. SITTING   
			5. STANDING   
			6. LAYING  
			 
"Freq" at the end of a variable name stands for "frequency".    
"StandarDev" at the end of a variable name stands for "Standard Deviation".    

## Variable Names :- 

1 Subject  
2 Activity   
3 TimeBodyAccelerometerMeanX   
4 TimeBodyAccelerometerMeanY   
5 TimeBodyAccelerometerMeanZ   
6 TimeGravityAccelerometerMeanX   
7 TimeGravityAccelerometerMeanY   
8 TimeGravityAccelerometerMeanZ   
9 TimeBodyAccelerometerJerkMeanX   
10 TimeBodyAccelerometerJerkMeanY   
11 TimeBodyAccelerometerJerkMeanZ   
12 TimeBodyGyroscopeMeanX   
13 TimeBodyGyroscopeMeanY   
14 TimeBodyGyroscopeMeanZ   
15 TimeBodyGyroscopeJerkMeanX   
16 TimeBodyGyroscopeJerkMeanY   
17 TimeBodyGyroscopeJerkMeanZ   
18 TimeBodyAccelerometerMagnitudeMean   
19 TimeGravityAccelerometerMagnitudeMean    
20 TimeBodyAccelerometerJerkMagnitudeMean    
21 TimeBodyGyroscopeMagnitudeMean   
22 TimeBodyGyroscopeJerkMagnitudeMean    
23 FrequencyDomainBodyAccelerometerMeanX    
24 FrequencyDomainBodyAccelerometerMeanY    
25 FrequencyDomainBodyAccelerometerMeanZ    
26 FrequencyDomainBodyAccelerometerMeanFreqX    
27 FrequencyDomainBodyAccelerometerMeanFreqY    
28 FrequencyDomainBodyAccelerometerMeanFreqZ    
29 FrequencyDomainBodyAccelerometerJerkMeanX    
30 FrequencyDomainBodyAccelerometerJerkMeanY    
31 FrequencyDomainBodyAccelerometerJerkMeanZ    
32 FrequencyDomainBodyAccelerometerJerkMeanFreqX   
33 FrequencyDomainBodyAccelerometerJerkMeanFreqY       
34 FrequencyDomainBodyAccelerometerJerkMeanFreqZ    
35 FrequencyDomainBodyGyroscopeMeanX    
36 FrequencyDomainBodyGyroscopeMeanY    
37 FrequencyDomainBodyGyroscopeMeanZ   
38 FrequencyDomainBodyGyroscopeMeanFreqX    
39 FrequencyDomainBodyGyroscopeMeanFreqY    
40 FrequencyDomainBodyGyroscopeMeanFreqZ    
41 FrequencyDomainBodyAccelerometerMagnitudeMean    
42 FrequencyDomainBodyAccelerometerMagnitudeMeanFreq     
43 FrequencyDomainBodyAccelerometerJerkMagnitudeMean     
44 FrequencyDomainBodyAccelerometerJerkMagnitudeMeanFreq    
45 FrequencyDomainBodyGyroscopeMagnitudeMean    
46 FrequencyDomainBodyGyroscopeMagnitudeMeanFreq     
47 FrequencyDomainBodyGyroscopeJerkMagnitudeMean  
48 FrequencyDomainBodyGyroscopeJerkMagnitudeMeanFreq    
49 AngleTimeBodyAccelerometerMeanGravity     
50 AngleTimeBodyAccelerometerJerkMeanGravityMean    
51 AngleTimeBodyGyroscopeMeanGravityMean     
52 AngleTimeBodyGyroscopeJerkMeanGravityMean     
53 AngleXGravityMean     
54 AngleYGravityMean     
55 AngleZGravityMean
56 TimeBodyAccelerometerStandardDevX    
57 TimeBodyAccelerometerStandardDevY     
58 TimeBodyAccelerometerStandardDevZ     
59 TimeGravityAccelerometerStandardDevX   
60 TimeGravityAccelerometerStandardDevY    
61 TimeGravityAccelerometerStandardDevZ   
62 TimeBodyAccelerometerJerkStandardDevX   
63 TimeBodyAccelerometerJerkStandardDevY   
64 TimeBodyAccelerometerJerkStandardDevZ   
65 TimeBodyGyroscopeStandardDevX    
66 TimeBodyGyroscopeStandardDevY   
67 TimeBodyGyroscopeStandardDevZ    
68 TimeBodyGyroscopeJerkStandardDevX    
69 TimeBodyGyroscopeJerkStandardDevY    
70 TimeBodyGyroscopeJerkStandardDevZ         
71 TimeBodyAccelerometerMagnitudeStandardDev   
72 TimeGravityAccelerometerMagnitudeStandardDev    
73 TimeBodyAccelerometerJerkMagnitudeStandardDev    
74 TimeBodyGyroscopeMagnitudeStandardDev    
75 TimeBodyGyroscopeJerkMagnitudeStandardDev    
76 FrequencyDomainBodyAccelerometerStandardDevX    
77 FrequencyDomainBodyAccelerometerStandardDevY    
78 FrequencyDomainBodyAccelerometerStandardDevZ      
79 FrequencyDomainBodyAccelerometerJerkStandardDevX    
80 FrequencyDomainBodyAccelerometerJerkStandardDevY     
81 FrequencyDomainBodyAccelerometerJerkStandardDevZ      
82 FrequencyDomainBodyGyroscopeStandardDevX   
83 FrequencyDomainBodyGyroscopeStandardDevY   
84 FrequencyDomainBodyGyroscopeStandardDevZ   
85 FrequencyDomainBodyAccelerometerMagnitudeStandardDev    
86 FrequencyDomainBodyAccelerometerJerkMagnitudeStandardDev   
87 FrequencyDomainBodyGyroscopeMagnitudeStandardDev   
88 FrequencyDomainBodyGyroscopeJerkMagnitudeStandardDev     

