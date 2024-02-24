# Preprocessing

data <- as.data.frame(data)

# Remove poorly performing participants
data <- mutate(data, totalPerformance = rowSums(select(data, p1_before:p6_before), na.rm = TRUE))