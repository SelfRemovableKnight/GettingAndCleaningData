# Description of the variables used in the tidy data set

The first two variables describe the subject and activity for which all other variables were measured/aggregated

1. "subject" : an integer indicating the subject for whom measurements were made
2. "activity" : the activity for which the measurements were made: this is a factor of 6 levels : 
..1 LAYING 
..2 SITTING 
..3 STANDING 
..4 WALKING 
..5 WALKING_DOWNSTAIRS 
..6 WALKING_UPSTAIRS

The other variables each represent the average value of all measurements collected for the given subject, activity, and "raw" variable.
The names of the aggregated variables correspond more or less to the original variables they summarize; for the precise correspondence, see below. The signals we refer to are the signal names in the raw data.
Values for all of the original signal variables are normalized and always between -1 and 1 (inclusive).

3. "tBodyAcc-mean()-X" : average X component of the estimated mean of signal tBodyAcc
4. "tBodyAcc-mean()-Y" : average Y component of the estimated mean of signal tBodyAcc
5. "tBodyAcc-mean()-Z" : average Z component of the estimated mean of signal tBodyAcc
6. "tBodyAcc-std()-X" : average X component of the estimated standard deviation of signal tBodyAcc
7. "tBodyAcc-std()-Y" : average Y component of the estimated standard deviation of signal tBodyAcc
8. "tBodyAcc-std()-Z" : average Z component of the estimated standard deviation of signal tBodyAcc
 9. "tGravityAcc-mean()-X" : average X component of the estimated mean of signal tGravityAcc
10. "tGravityAcc-mean()-Y" : average Y component of the estimated mean of signal tGravityAcc
11. "tGravityAcc-mean()-Z" : average Z component of the estimated mean of signal tGravityAcc
12. "tGravityAcc-std()-X" : average X component of the estimated standard deviation of signal tGravityAcc
13. "tGravityAcc-std()-Y" : average Y component of the estimated standard deviation of signal tGravityAcc
14. "tGravityAcc-std()-Z" : average Z component of the estimated standard deviation of signal tGravityAcc
15. "tBodyAccJerk-mean()-X" : average X component of the estimated mean of signal tBodyAccJerk
16. "tBodyAccJerk-mean()-Y" : average Y component of the estimated mean of signal tBodyAccJerk
17. "tBodyAccJerk-mean()-Z" : average Z component of the estimated mean of signal tBodyAccJerk
18. "tBodyAccJerk-std()-X" : average X component of the estimated standard deviation of signal tBodyAccJerk
19. "tBodyAccJerk-std()-Y" : average Y component of the estimated standard deviation of signal tBodyAccJerk
20. "tBodyAccJerk-std()-Z" : average Z component of the estimated standard deviation of signal tBodyAccJerk
21. "tBodyGyro-mean()-X" : average X component of the estimated mean of signal tBodyGyro
22. "tBodyGyro-mean()-Y" : average Y component of the estimated mean of signal tBodyGyro
23. "tBodyGyro-mean()-Z" : average Z component of the estimated mean of signal tBodyGyro
24. "tBodyGyro-std()-X" : average X component of the estimated standard deviation of signal tBodyGyro
25. "tBodyGyro-std()-Y" : average Y component of the estimated standard deviation of signal tBodyGyro
26. "tBodyGyro-std()-Z" : average Z component of the estimated standard deviation of signal tBodyGyro
27. "tBodyGyroJerk-mean()-X" : average X component of the estimated mean of signal tBodyGyroJerk
28. "tBodyGyroJerk-mean()-Y" : average Y component of the estimated mean of signal tBodyGyroJerk
29. "tBodyGyroJerk-mean()-Z" : average Z component of the estimated mean of signal tBodyGyroJerk
30. "tBodyGyroJerk-std()-X" : average X component of the estimated standard deviation of signal tBodyGyroJerk
31. "tBodyGyroJerk-std()-Y" : average Y component of the estimated standard deviation of signal tBodyGyroJerk
32. "tBodyGyroJerk-std()-Z" : average Z component of the estimated standard deviation of signal tBodyGyroJerk
33. "tBodyAccMag-mean()" : average of the estimated mean of signal tBodyAccMag
34. "tBodyAccMag-std()" : average of the estimated standard deviation of signal tBodyAccMag
35. "tGravityAccMag-mean()" : average of the estimated mean of signal tGravityAccMag
36. "tGravityAccMag-std()" : average of the estimated standard deviation of signal tGravityAccMag
37. "tBodyAccJerkMag-mean()" : average of the estimated mean of signal tBodyAccJerkMag
38. "tBodyAccJerkMag-std()" : average of the estimated standard deviation of signal tBodyAccJerkMag
39. "tBodyGyroMag-mean()" : average of the estimated mean of signal tBodyGyroMag
40. "tBodyGyroMag-std()" : average of the estimated standard deviation of signal tBodyGyroMag
41. "tBodyGyroJerkMag-mean()" : average of the estimated mean of signal tBodyGyroJerkMag
42. "tBodyGyroJerkMag-std()" : average of the estimated standard deviation of signal tBodyGyroJerkMag
43. "fBodyAcc-mean()-X" : average X component of the estimated mean of signal fBodyAcc
44. "fBodyAcc-mean()-Y" : average Y component of the estimated mean of signal fBodyAcc
45. "fBodyAcc-mean()-Z" : average Z component of the estimated mean of signal fBodyAcc
46. "fBodyAcc-std()-X" : average X component of the estimated standard deviation of signal fBodyAcc
47. "fBodyAcc-std()-Y" : average Y component of the estimated standard deviation of signal fBodyAcc
48. "fBodyAcc-std()-Z" : average Z component of the estimated standard deviation of signal fBodyAcc
49. "fBodyAccJerk-mean()-X" : average X component of the estimated mean of signal fBodyAccJerk
50. "fBodyAccJerk-mean()-Y" : average Y component of the estimated mean of signal fBodyAccJerk
51. "fBodyAccJerk-mean()-Z" : average Z component of the estimated mean of signal fBodyAccJerk
52. "fBodyAccJerk-std()-X" : average X component of the estimated standard deviation of signal fBodyAccJerk
53. "fBodyAccJerk-std()-Y" : average Y component of the estimated standard deviation of signal fBodyAccJerk
54. "fBodyAccJerk-std()-Z" : average Z component of the estimated standard deviation of signal fBodyAccJerk
55. "fBodyGyro-mean()-X" : average X component of the estimated mean of signal fBodyGyro
56. "fBodyGyro-mean()-Y" : average Y component of the estimated mean of signal fBodyGyro
57. "fBodyGyro-mean()-Z" : average Z component of the estimated mean of signal fBodyGyro
58. "fBodyGyro-std()-X" : average X component of the estimated standard deviation of signal fBodyGyro
59. "fBodyGyro-std()-Y" : average Y component of the estimated standard deviation of signal fBodyGyro
60. "fBodyGyro-std()-Z" : average Z component of the estimated standard deviation of signal fBodyGyro
61. "fBodyAccMag-mean()" : average of the estimated mean of signal fBodyAccMag
62. "fBodyAccMag-std()" : average of the estimated standard deviation of signal fBodyAccMag
63. "fBodyBodyAccJerkMag-mean()" : average of the estimated mean of signal fBodyAccJerkMag
64. "fBodyBodyAccJerkMag-std()" : average of the estimated standard deviation of signal fBodyAccJerkMag
65. "fBodyBodyGyroMag-mean()" : average of the estimated mean of signal fBodyGyroMag
66. "fBodyBodyGyroMag-std()" : average of the estimated standard deviation of signal fBodyGyroMag
67. "fBodyBodyGyroJerkMag-mean()" : average of the estimated mean of signal fBodyGyroJerkMag
68. "fBodyBodyGyroJerkMag-std()" : average of the estimated standard deviation of signal fBodyGyroJerkMag
