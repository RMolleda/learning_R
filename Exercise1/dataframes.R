# Ejercicios Data.frame

first_df <- data.frame(Date = as.Date(character()),
                       File = character(),
                       User = character(),
                       stringsAsFactors  = F)

str(first_df) # Check dataframe structure

# 2 - Write a R program to create a dataframe from four given vectors

first_vector <- c(2, 4, 6, 7)
second_vector <- c('A', 'E', 'I', 'O')
third_vector <- c(T, F, T, F)
fourth_vector <- c(3.4, 2.2, 6.5, 55.4)

df_from_vectors <- data.frame(first_vector, second_vector, third_vector, fourth_vector)


# 3 - Write a R program to get the structure of a given dataframe

str(first_df) # As in the exercise above

# 4 - Write a R program to get the statistical summary and nature of the data of a given dataframe

print('Here is the summary of your dataframe')
summary(df_from_vectors)

# 5 - Write a T program to extract specific column from a dataframe usign column name

df_from_vectors[, 'fourth_vector']

# 6 - Write a R program to extract first two rows from a given dataframe

df_from_vectors[1:2, ]

# 7 - Write a R program to extract third and fifth rows with first and third columns from a given dataframe

# Add a column
df_from_vectors[['fifth_col']] <- c('Hola', 'Adios', 'Buenas Tardes', 'Buenas noches')

# Add a row
df_from_vectors[nrow(df_from_vectors) +1, ] <- c('Hello!', 'Hey!', 'Buongiorno', 'Buona Sera')
df_from_vectors

df_from_vectors[c(3, 5), c(1, 3)]

# 8 - Write a R program to add new column in a given data frame

df_from_vectors$new_column <- c(1, 2, 4, 5)
df_from_vectors

# 9 - Write a R program to drop column(s) by name from a given data frame

new_row_df <- rbind(df, c(T, T))
new_row_df

# 10 - Write a R program to drop column(s) by name from a given data frame

dropped_cols <- subset(df_from_vectors, select = -c(first_vector, second_vector))
dropped_cols

# 11 - Write a R program to drop row(s) by number from a given data frame

dropped_rows <- df_from_vectors[-c(1, 4, 2), ]
dropped_rows

# 12 - Write a R program to sort a given data frame by multiple column(s)

df_from_vectors[with(df_from_vectors, order("first_vector"))]

df_from_vectors[order(df_from_vectors[, 4], df_from_vectors[, 1])]

# 13 - Write a R program to create inner, outer, left, right, join(merge) from given 2 dataframes

df_1 <- data.frame(c(1:4), c(2:5), c(3:6))
df_2 <- data.frame(c(2:5), c(1:4), c(3:6))
names(df_1) <- c('col1', 'col2', 'col3')
names(df_2) <- c('col1', 'col2', 'col3')

merged_dfs <- merge(df_1, df_2, by= 'col1')
merged_dfs

# 14 - Write a R program to replace NA values with 3 in a given data frame

df_na_to_replace <- data.frame('First column' = c(1, 3, 5, 3, 5),
                               'Second column' = c(4, 555, 3457, 324, 1),
                               'Third column' = c(NaN, NaN, NaN, NaN, NaN))

class(df_na_to_replace)

replace_nan_with_number <- function(df, n){
  df[is.na(df)] <- n
  return (df)
}
replace_nan_with_number(df = df_na_to_replace, n = 3)

# 15 - Write a R program to change a column name of a given data frame

change_col_name <- function(df, col_name, n){
  colnames(df)[n] <- col_name
  return (df)
}
change_col_name(df = df_na_to_replace, col_name = 'new name', n = 3)

# 16 - Write a R program to change more than one column name of a given data frame

df_na_to_replace
colnames(df_na_to_replace)[which(names(df_na_to_replace) == c('First.column', 'Second.column'))] <- c('new name 1', 'new name 2')
df_na_to_replace

# 17 - Write a R program to select some random rows from a given data frame

df_na_to_replace[sample(nrow(df_na_to_replace), 3), ]

# 18 - Write a R program to reorder an given data frame by column name

df_na_to_replace[, order(names(df_na_to_replace))]

# 19 - Write a R program to compare two data frames to find the row(s) in first data frame that are not present in second data frame

df_1 <- data.frame('index' = c('col1', 'col2', 'col3', 'col4'),
                   'the bridge' = c('data', 'full', 'ciber', 'ux/ui'),
                   'software' = c('python', 'java', 'C', 'indesign'),
)

df_2 <- data.frame('index' = c('first', 'second', 'third'),
                   'first_row' = c(1, 2, 34),
                   'second_row' = c(3, 4,33)
)

setdiff(df_1, df_2) # Use setdiff

# 20 - Write a R program to find elements which are present in two given dataframes

df_1 <- c(1, 2, 4, 5)
df_2 <- c(1, 4, 2, 4)

common_values <- intersect(df_1, df_2)
common_values

# 21 - Write a R program to find elements come only once that are common to both given data frames

values_that_only_come_once <- union(df_1, df_2)
values_that_only_come_once

# 22 - Write a R program to save the information of a data frame in a file and display the information of the file

save(df_1, file='data_example.rda') # use save to save the file

load('data_example.rda') # load the dataset

file.info('data_example.rda') # get info of the file

# 23 - Write a R program to count the number of NA values in a data frame column

NaN_sum <- sum(is.na(df_na_to_replace$Third.column))
print('Total NaN values in the data frame:')
print(NaN_sum)

# 24 - Write a R program to create a data frame using two given vectors and display the duplicated elements and unique rows of the said data frame

df_na_to_replace
print(duplicated(df_na_to_replace)) # show duplicated values
print(unique(df_na_to_replace)) # show unique values

# 25 - Write a R program to call the (built-in) dataset airquality.
# Check whether it is a dataframe or not? Order the entire dataframe by the first and second column

dataset <- airquality #Load the dataset
class(dataset) # Check the type

ordered_dataset <- dataset[order(dataset[, 1]), ]
ordered_dataset

# 26 - Write a T program to call the (built-in) dataset airquality.
# Remove the variables 'Solar.R' and 'Wind' and display the data frame

dataset <- airquality
dataset
removed_df <- subset(dataset, select = -c(Solar.R, Wind))
removed_df

