# Ejercicios de listas

# 1 - Write a R program to create a list containing strings, numbers, vectors, an logical values

my_list <- list(c('hola', 'adiós'), 45, 'Hello', FALSE)
my_list

# 8 - Write a R program to merge two given lists into one list

list1 <- list('hola, qué tal?', 'my name is Leo', 66, 4.7, T)
list2 <- list('muy bien, y tú?', 'my name is Aurelio', 55, F)

merged_list <- append(list1, list2)
merged_list
print(length(merged_list))

# 12 - Write a R program to convert a given dataframe to a list by rows

df_row_list <- split(df, seq(nrow(df))) # Here you choose how to split the df
df_row_list

# 14 - Write a R program to assign NULL to a given list element

assign_null_value <- function(list, position){
  list[[position]] <- NA
  print(c('your list:', list))
} 

assign_null_value(list = list1, position = 3)