# Getting-and-Cleaning-Data
Final project for Getting and Cleaning Data course

#Information regarding the dataset used for the project

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This repo contains the R code for running the analysis on the final project of the Getting and Cleaning Data course.
The code is found in the file run_analysis.R. After being downloaded, it can be read into R usning read.table().
To run the code, please be sure the working directory is set to the location of the data files.
The code will produce results for all five steps of the project. 

The general flow of the code is as follows:
 - Read in all the data files using read.table
 - Change the activity and features files (column 2) into a character class so that the names can be used in the 
   final dataset
 - The variables in the features file were cleaned up to be tidy by removing the non letters and spaces
 - Bind the x and y data frames and select out the columns based on the index created using the features file
 - Bind the subject files together and then the activity files
 - Bind subject, activity and data into one data frames
 - Add column names and replace activtiy code with character values
 
 - Use reshape2 to melt and dcase the data and write out to a file named secondtidy.txt
 
 See codebook.md for variable names and definitions.