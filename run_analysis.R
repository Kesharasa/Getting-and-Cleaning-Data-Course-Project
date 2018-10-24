# The output (Tidy data with the file name "tidy.txt") will be in the following format


# Subject | Activity            | (columns containing mean of the variables for the given combination of activity and subject)
#   1     |  Walking            |          .
#   2     |  Walking            |          .
#   .     |    .                |          .
#   .     |    .                |          .
#   .     |    .                |          .
#   .     |    .                |          .
#   30    |  Walking            |          .
#   1     |    Walking Upstairs |          .
#   2     |    Walking Upstairs |          .
#   .     |    .                |          .
#   .     |    .                |          .
#   .     |    .                |          .
#   .     |    .                |          .  
#  30     | Laying              |          .



# Function to remove "." charecter. Later to be used in lapply() in main routine. 

func <- function(x)
{
         gsub("[.]","",x)
}

# Function to take the first charecter. Later to be used in lapply() in main routine. 
firstele <- function(x)
{
         x[1]
}

#______________________________________________________________________________________________
# MAIN ROUTINE
#______________________________________________________________________________________________


# to set the working directory and to download the dataet if it is not present.
if(!(dir.exists("UCI HAR Dataset")))
{
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",dest="UCI HAR Dataset.zip")
        unzip("UCI HAR Dataset.zip")
        setwd("./UCI HAR Dataset")
}else
{
        if(file.exists("UCI HAR Dataset.zip") & !(dir.exists("UCI HAR Dataset")) )
        {
                unzip("UCI HAR Dataset.zip")
                setwd("./UCI HAR Dataset")      
        }
        else
        {
                setwd("./UCI HAR Dataset")  
        }
}

#reading the data 
x_train <- read.table("train/X_train.txt")
x_test <- read.table("test/X_test.txt")
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")

# reading the column names
vars <- read.table("features.txt")


# creating only the test and train data variables
test <- cbind(x_test,y_test,subject_test)
train <- cbind(x_train,y_train,subject_train)

#creating the complete table with train and test data 
complete <- rbind(train,test)

# selecting only the column names  in the vars vector
va <- as.character(vars[,2])

# Adding the "activity" and "subject" column names
va[562] <- "activity"
va[563] <- "subject"

# the colnames "fBodyGyro-bandsEnergy" are not unique. It is made unique in by the help of make.names function
colnames(complete) <- make.names(va,unique = TRUE)

#To load the "dplyr" package
library(dplyr)

# the end result is store as a tibble
comp_tib <- as_tibble(complete)

# only mean and Standard deviation containing columns are selected and stored in separate variables.
data_mean <- select(comp_tib,contains("mean"))
data_std <- select(comp_tib,contains("std"))

# the activity and subject columns are selected and stored.
data_misc <- select(comp_tib,contains("activity"),contains("subject"))
# the comptlete requried data set is stored. Here activity and subject columns names are present at the end. Subject olumns being the last column.
data_comp <- cbind(data_mean,data_std,data_misc)
data_comp <- as_tibble(data_comp)

# All the column names i.e the variales are selected and using the func and firsteles functions, the "." is removed
# lapply and sapply are use for this.
allva <- colnames(data_comp)
allva <- lapply(allva,func)
allva<- sapply(allva,firstele)

# the colnames are made tidy. "mean" is made as "Mean" , "t" as "Time", "f" as "fourier" and "s" , "a" are made capital.
# "Gravity" , "StandardDev" , "acc" is made as "Accelerometer" , "gyro" as "Gyroscope" is used to be more explicit
# "Mag" is made as "Magnitude" , "BodyBody"  is made "Body" , 
# allva stands for "All Variables"
allva <- sub("[m][e][a][n]","Mean",allva)
allva <- sub("^t","Time",allva)
allva <- sub("^f","FrequencyDomain",allva)
allva <- sub("^a","A",allva)
allva <- sub("^s","S",allva)
allva <- sub("Anglet","AngleTime",allva)
allva <- sub("[g][r][a][v][i][t][y]","Gravity",allva)
allva <- sub("std","StandardDev",allva)
allva <- sub("[A][c][c]","Accelerometer",allva)
allva <- sub("[M][a][g]","Magnitude",allva)
allva <- sub("[B][o][d][y][B][o][d][y]","Body",allva)
allva <- sub("[G][y][r][o]","Gyroscope",allva)




# the column names in data_comp is set to the cleaned variable names
colnames(data_comp) <- allva


# now to calculate the mean of all the subjects and by each activity for every column
# the idea that I have used here is, I have stored the mean calculated for all 
# the acitvities for fist subject as the first element of a list  similarly I have stored the 
# mean of all the activities of the nth subject as the nth element of the list.
activ <- list()
for (i in 1:30) {
a1 <- filter(data_comp,Subject == i)
a1 <- group_by(a1,Activity)
k <- summarise_all(a1,funs(mean))
activ[[i]] <- k
}



# to collate the data for all the subjects by a particular activity. I have used a temporary
# variable tr for this purpose
tr <- data.frame()
tr <- as_tibble(tr)

# using rbind function to collate all the results.
for(i in 1:6){
        for (j in 1:30) {
                tr <- rbind(tr,activ[[j]][i,])
        } 
}

fin_data <- data.frame()
fin_data <- as_tibble(fin_data)

# final data is rearranged with "Subject" column in the beginning
# second argument in the following select() is to take all columns apart from "Subject" column.
fin_data <- select(tr,Subject,colnames(tr)[-(which(colnames(tr)=="Subject"))] )


# Changing the numbers in activity column to activity labels.
act <- select(fin_data,2)
act <- mutate(act,Activity = sub("1","WALKING",Activity))
act <- mutate(act,Activity = sub("2","WALKING_UPSTAIRS",Activity))
act <- mutate(act,Activity = sub("3","WALKING_DOWNSTAIRS",Activity))
act <- mutate(act,Activity = sub("4","SITTING",Activity))
act <- mutate(act,Activity = sub("5","STANDING",Activity))
act <- mutate(act,Activity = sub("6","LAYING",Activity))

# setting the column value 
fin_data <- mutate(fin_data,Activity = act$Activity)

write.table(fin_data,"tidy.txt",row.names = FALSE,quote = FALSE)

