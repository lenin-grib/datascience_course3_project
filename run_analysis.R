## -- STEP 0 -- (load libraries and read data)

library(plyr)
library(dplyr)

## read all relevant files into separate tables, using the names of the files as table names
## first, we need to create a list of files to read
rootdirectory <- "./UCI HAR Dataset"

fltest <- list.files(file.path(rootdirectory,"/test"), pattern = "[.]txt$", full.names = T)
fltrain <- list.files(file.path(rootdirectory,"/train"), pattern = "[.]txt$", full.names = T)
filelist <- c(fltest,fltrain, file.path(rootdirectory,"features.txt"), file.path(rootdirectory,"activity_labels.txt"))

## then, for each of the files create a variable name which is filename/basename without extension,
## convert data into data table and store in this variable
for (i in c(filelist)) {
        tmp_var_name <- sub("\\..*","", basename(i))
        assign((tmp_var_name), tbl_df(read.table(i)))
}

## -- STEP 1 -- (Merge the training and the test sets to create one data set)

## add explicit IDs to the datasets for easier binding
y_test <- tibble::rowid_to_column(y_test, "ID")
y_train <- tibble::rowid_to_column(y_train, "ID")
X_test <- tibble::rowid_to_column(X_test, "ID")
X_train <- tibble::rowid_to_column(X_train, "ID")
subject_test <- tibble::rowid_to_column(subject_test, "ID")
subject_train <- tibble::rowid_to_column(subject_train, "ID")


## add activity and subject columns to the datasets
withlabels_test <- tbl_df(merge(X_test,y_test, by = "ID"))
withlabels_train <- tbl_df(merge(X_train,y_train, by = "ID"))
dataset_test <- tbl_df(merge(withlabels_test,subject_test, by = "ID"))
dataset_train <- tbl_df(merge(withlabels_train,subject_train, by = "ID"))


## assign column names based on features description
newnames <- c("id", as.character(features$V2), "activity", "subject")
colnames(dataset_test) <- newnames
colnames(dataset_train) <- newnames

## merge test and train sets together
dataset_full <- rbind(dataset_test, dataset_train)

## -- STEP 2-- (Extract only the measurements on the mean and standard deviation for each measurement)

## find relevant feature names (the ones that contain mean or standard deviation values)
## according to the feature_info file those values are marked by "mean()" and "std()" 
## in their names. (Basically we need to make sure meanFreq() columns are not included)
features_ext <- features[grep("mean\\(\\)|std\\(\\)", features$V2),2]

## convert it to the character vector for easier subsetting
cn <- c("id", "activity", "subject", as.character(features_ext$V2))

## get the new dataset with only relevant measurements
dataset_ext <- dataset_full[, names(dataset_full) %in% cn]

## -- STEP 3 -- (Use descriptive activity names to name the activities in the data set)

## set activity labels to be descriptive based on activity_labels data
ids <- activity_labels$V1
descriptions <- as.character(activity_labels$V2)

dataset_ext$activity <- mapvalues(dataset_ext$activity, ids, descriptions)

## -- STEP 4 -- (Appropriately labels the data set with descriptive variable names) 

## Nicer names for the variables
names(dataset_ext) <- gsub("^t", "Time", names(dataset_ext))
names(dataset_ext) <- gsub("^f", "Frequency", names(dataset_ext))
names(dataset_ext) <- gsub("-mean\\(\\)", "Mean", names(dataset_ext))
names(dataset_ext) <- gsub("-std\\(\\)", "StdDev", names(dataset_ext))
names(dataset_ext) <- gsub("-", "", names(dataset_ext))
names(dataset_ext) <- gsub("BodyBody", "Body", names(dataset_ext))

## reordeing for easier viewing and dropping the id
order <- c(ncol(dataset_ext),ncol(dataset_ext)-1,2:(ncol(dataset_ext)-2))

dataset <- dataset_ext[, order]

## -- STEP 5 -- (From the data set in step 4, creates a second, independent tidy data set with 
##the average of each variable for each activity and each subject.)

## group by subject and then by activity
dataset_grouped <- group_by(dataset, subject, activity)

## get mean of the rest of the variables 
dataset_final <- summarize_all(dataset_grouped, mean)
## indicate that variables will represent Mean values
names(dataset_final)[-c(1,2)] <- paste0("Mean", names(dataset_final)[-c(1,2)])
## save result in a file
write.table(dataset_final, "./dataset_final.txt", row.name=FALSE)
