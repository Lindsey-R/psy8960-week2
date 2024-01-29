# Import and Labeling
rt_df <- read.csv(file = "data/week2.csv", header = TRUE) ## Don't do ~/ 
rt_df$condition <- factor(rt_df$condition, levels = c("A", "B"), labels = c("Control", "Experimental"))
rt_df$gender <- factor(rt_df$gender, levels = c("M", "F", "N"), labels = c("Male", "Female", "Nonbinary"))

# Analysis
mean(rt_df$rt)
rt_f_df <- rt_df[rt_df$gender == "Female", ]
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]][2]

# returns a data frame - [[1]] - extract the first item of a list; [2], subset dataframe
# if datasets[[1]][[2]]: returns a vector
# [ ] - subset; $ extract, shortcut for [[]]