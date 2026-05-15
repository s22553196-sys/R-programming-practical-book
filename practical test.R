
df <- data.frame(
  name = c(" Raj", " Amit ", "Neha", "raj", "Amit "),
  marks = c("80", "90", NA, "85", "90"),
  city = c("Pune", " pune", "Mumbai", "PUNE", "Mumbai")
)

#Original dataset
print("Original Dataset:")
print(df)

Remove extra spaces
df$name <- trimws(df$name)

#Convert names to lowercase
df$name <- tolower(df$name)

#Convert marks to numeric
df$marks <- as.numeric(df$marks)

# Handle missing values
df$marks[is.na(df$marks)] <- mean(df$marks, na.rm = TRUE)

#Standardize city names
df$city <- tolower(trimws(df$city))

#Filter students marks > 80
filtered_df <- df[df$marks > 80, ]

#Create grade column
df$grade <- ifelse(df$marks >= 85, "A", "B")

#cleaned dataset
print("Cleaned Dataset:")
print(df)

#filtered dataset
print("Students with marks greater than 80:")
print(filtered_df)



#Q.2 Statistical Analysis and tables
# Create dataset
data <- data.frame(
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Purchase = c("Yes","No","Yes","Yes","No","Yes"),
  Amount = c(5000,7000,8000,6000,4000,9000)
)

# Display dataset
print(data)

# 1.Mean of Amount
mean_amount <- mean(data$Amount)
print(mean_amount)

# 2.Median of Amount
median_amount <- median(data$Amount)
print(median_amount)

# 3.Frequency table for Gender
table_gender <- table(data$Gender)
print(table_gender)

# 4.Cross table of Gender and Purchase
cross_table <- table(data$Gender, data$Purchase)
print(cross_table)

# 5.Total purchase amount by Gender
total_amount <- aggregate(Amount ~ Gender, data, sum)
print(total_amount)

# 6.Count number of "Yes" purchases
yes_count <- sum(data$Purchase == "Yes")
print(yes_count)
