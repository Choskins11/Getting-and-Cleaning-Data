##Read in all the files

activity <- read.table("activity_labels.txt")
features <- read.table("features.txt")
testsubject <- read.table("test/subject_test.txt")
testx <- read.table("test/X_test.txt")
testy <- read.table("test/y_test.txt")
trainsubject <- read.table("train/subject_train.txt")
trainx <- read.table("train/X_train.txt")
trainy <- read.table("train/y_train.txt")

##Prepare activity and features by changing to character vectors
##Get names of columns with mean and std from features file to be added to final dataframe
##Clean up names to remove non characters and spaces

activity[,2] <- as.character(activity[,2])
features[,2] <- as.character(features[,2])
featuresneed <- grep(".*mean.*|.*std.*",features[,2])
featuresnames <- features[featuresneed,2]
featuresnames = gsub("-mean", "Mean", featuresnames)
featuresnames = gsub("-std", "Std", featuresnames)
featuresnames = gsub("\\()", "", featuresnames)
featuresnames = gsub("\\-", "", featuresnames)

#Combine (rows) testx and trainx. Subset the variables using the index created by featuresneed
#Combine (rows) test and train subjects and test and train activities
#Combine (columns) results to a final data frame

data <- rbind(testx, trainx)
data1 <- data[featuresneed]
combosubject <- rbind(testsubject, trainsubject)
comboactivity <- rbind(testy, trainy)
datafinal <- cbind(combosubject, comboactivity, data1)

#Add column names and replace activity numbers with descriptions

colnames(datafinal) <- c("subject", "activity", featuresnames)
datafinal$activity[datafinal$activity == 1] <- "walking"
datafinal$activity[datafinal$activity == 2] <- "walking upstairs"
datafinal$activity[datafinal$activity == 3] <- "walking downstairs"
datafinal$activity[datafinal$activity == 4] <- "sitting"
datafinal$activity[datafinal$activity == 5] <- "standing"
datafinal$activity[datafinal$activity == 6] <- "laying"

#There are obvious things to be simplified, but honestly, I am tired!

#Last but not least, the other dataset of the avgerage or each variable
#for subject and activity

library(reshape2)
datamelted <- melt(datafinal, id=c("subject", "activity"))
finaldata <- dcast(datamelted, subject + activity ~ variable, mean)

#Write to file to put on coursera

write.table(finaldata, "secondtidy.txt", row.names = FALSE)
