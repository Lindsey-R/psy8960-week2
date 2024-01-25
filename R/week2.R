# Import and Labeling
rt_df <- read.csv(file = "~/psy8960-week2/data/week2.csv", header = TRUE)
rt_df$condition <- factor(rt_df$condition, levels = c("A", "B"), labels = c("Control", "Experimental"))
rt_df$gender <- factor(rt_df$gender, levels = c("M", "F", "N"), labels = c("Male", "Female", "Nonbinary"))

