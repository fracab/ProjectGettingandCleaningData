library("plyr")
library("dplyr")
if(!file.exists("UCI HAR Dataset")){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Dataex.zip")
    unzip("Dataex.zip")
}#check if files are present, if necessary download and unzip them 

#load all the dframes available in order to merge them
train<-read.table("~/UCI HAR Dataset/train/X_train.txt")
labelstr<-read.table("~//UCI HAR Dataset/train/Y_train.txt")
subjecttr<-read.table("~/UCI HAR Dataset/train/subject_train.txt")

test<-read.table("~/UCI HAR Dataset/test/X_test.txt")
labelsts<-read.table("~/UCI HAR Dataset/test/Y_test.txt")
subjectts<-read.table("~/UCI HAR Dataset/test/subject_test.txt")

train$label<-labelstr[,1]#add label column to train
test$label<-labelsts[,1]#same for test

train$subject<-subjecttr[,1]#add subject column to train
test$subject<-subjectts[,1]#same for test

test$origin<-"test"#for records, which df comes from
train$origin<-"train"#for records, which df comes from
traintest<-rbind(train,test)#now merge the two df
traintest<-select(traintest, subject, everything())#move subject in front of the df (will ease reading)

#make the dataframe  more readable adding labels and feature descritpion 
activitylabels<-read.table("~/UCI HAR Dataset/activity_labels.txt")
activitylabels<- rename(activitylabels, label=V1, Description=V2)
traintest <- join(traintest,activitylabels, by= "label")#give the value of the activity taking values from activity_labels.txt
traintest<-select(traintest, Description, everything())#move Description at the beginning of the df for ease of reading

features<-read.table("~/UCI HAR Dataset/features.txt")
features$V2<-as.character(features$V2)
features$V2<-make.names(features$V2)#makes the names of cols syntactically valid 
features$V2<-make.unique(features$V2)#makes the names of cols unique (there are duplicates that hinder the analysis) 
colnames(traintest) <- c("Description", "subject", features$V2,"label", "origin")#give names to the features taking values from features.txt

Colmnstd<-2+(grep("*mean\\.|std", features$V2))# numbers of the columns with means or sd values. note we added 2 extra col. (for "Description" and "Subject") and mean inclusion of "." in order to avoid meanFreq values
datasetAvgStD<-(select(traintest, c(1,2, Colmnstd, ncol(traintest)-1, ncol(traintest))))#select the columns according to features and keeping the added columns

#From the dataset, creates a second, independent tidy data set with the average of each variable for each activity and each subject
subori<-(unique(datasetAvgStD[,c("subject","origin")]))%>%(unique)#keep track of origin of subjects
tidydataset<-group_by(datasetAvgStD, subject, Description)%>%summarise_each(funs(mean))#the required data set 

tidydataset$origin<-NULL#origin is no longer valid so we delete it
tidydataset <- join(tidydataset,subori, by= "subject")# add it again taking data from subori. also, now tidydataframe is no longer grouped

nobs<-group_by(datasetAvgStD, subject, Description)%>%summarise_each(funs(length))%>%ungroup# calculate the number of observations
nobs<-data.frame(nobs[,3])
tidydataset$nobs<-nobs[,1]# add the number of observation for each record, for further analysis

tidydataset<-mutate(tidydataset, ID=paste("Sbj",tidydataset$subject,"_",tidydataset$Description, sep=""))#add an ID column, for further analysis

write.table(tidydataset, "MeansAvStDDataset.txt", sep="\t") 
