{
        library(reshape2)
        
        # read in all the necessary fils, assumption is that files are in same working directory as run_analysis.R
        
        subjtrain = read.table("subject_train.txt", )
        print("subjtrain")
        subjtest = read.table("subject_test.txt", )
        print("subjtest")
        xtrain = read.table("X_train.txt", )
        print("xtrain")
        xtest = read.table("X_test.txt", )
        print("xtest")
        ytrain = read.table("Y_train.txt", )
        print("ytrain")
        ytest = read.table("Y_test.txt", )
        print("ytest")
        features = read.table("features.txt", )
        print("features")
        activitylabels = read.table("activity_labels.txt", )
        print("alabels")
        
   # Step 1: Merges the training and the test sets to create one data set.
        
        #Combine the train and test sets by column groupings (x,y, subject)
        xfull <- rbind(xtrain, xtest) 
        yfull <- rbind(ytrain, ytest)
        subjfull <- rbind(subjtrain, subjtest)
        
        # add the column labels 
        colnames(xfull) <- features$V2                
        colnames(yfull) <- "Activity"
        colnames(subjfull) <- "Subject"          
               
        # combine the subject id, activities id and features observations into one set each for train and test
        combinedfull <- cbind(subjfull, yfull, xfull)
        
   # Step 2:Extracts only the measurements on the mean and standard deviation for each measurement. 
        
        # subset data table with only those observations that are means or standard deviations        
        sub <- combinedfull[,grep("Subject|Activity|std()|mean()",colnames(combinedfull))]
       
   # Step 3: Uses descriptive activity names to name the activities in the data set
        
        # convert activities to activity label to make it more readable
        sub$Activity <- factor(sub$Activity, levels(factor(sub$Activity)),activitylabels$V2)       
        
   # Step 4: Appropriately labels the data set with descriptive variable names.
        
        # clean up the column names (features) to make them more readable by removing the parentheses and dashes 
        names(sub) <- gsub("\\(|\\)|\\-","",names(sub))
   
   # Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   
        # melts the data using Subject and Activity as ID variables
        submelt <- melt(sub,id=c("Subject","Activity"))
        
        # calculates the average for each measurement (column) of each Activity per Subject
        tidydata <- dcast(submelt, Subject+Activity ~variable,mean)
   
   # Writes the tidydata to a text file
        write.table(tidydata,"tidydata.txt",row.name=FALSE)
        
        
}