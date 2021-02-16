# Ejercicios "BASIC"

# 3 - Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60
# and sum of numbers from 51 to 91

seq(20, 50) # sequence from 20 to 50

mean(seq(20,60)) # mean of numbers from 20 to 60

sum(seq(51,91)) # sum of numbers from 51 to 91

# 4 - Write a R program to create a vector which contains 10 random integer values between -50 and 50

sample(seq(-50, 50), 10) # Create a random sample of numbers from -50 to 50

# 5 - Write a R program to get the first 10 fibonacci numbers

numbers <- numeric(10)
numbers[1] <- numbers[2] <- 1
for (i in 3:10)
  numbers[i] <- numbers[i -2] + numbers[i -1]
numbers

# 7 - Write a R program to print the numbers from 1 to 100 and print 'Fizz' for multiples of 3
# Print 'buzz' for multiples of 5
#Print 'FizzBuzz' for multiples of both

seq_100 <- seq(1, 100)

for (i in seq_100) {
  if (i %% 3 == 0 & i %% 5 == 0)
  {print("FizzBuzz")}
  else if (i %% 3 == 0)
  {print("Fizz")}
  else if (i %% 5 == 0)
  {print("Buzz")}
}

# 9 - Write a R program to find the factors of a given number
# Use a for loop to iterate through the numbers

factor_of_number <- function(number){
  for (i in 1:number){
    if ((number %% i) == 0){
      print(i)
    }
  }
}

factor_of_number(number = 20)

# 10 - Write a R program to find the maximum and the minimum value of a given vector

find_max_and_min <- function(vector){
  max_value <- max(vector)
  min_value <- min(vector)
  print('Max value:')
  print(max_value)
  print('min value:')
  print(min_value)
}

find_max_and_min(vector=c(2, 5, 6, 90))

# 13 - Write a R program to create a list of random numbers in normal distribution and count occurrences of each value

random_numbers <- floor(rnorm(100, 10, 10))
random_numbers

table(random_numbers) # To count the occurrences of each value

# 15 - Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type

numeric_vector <- c(1, 3, 5, 7, 9)
character_vector <- c('hola', 'adios', 'hasta luego', 'ahora nos vemos', 'k ase')
logical_data <- c(T, F, F, F, T)

vectors_list <- list(numeric_vector, character_vector, logical_data)

for (i in 1:(length(vectors_list))){
  print(vectors_list[[i]])
  print(class(vectors_list[[i]]))
}

# 22 - Write a R program to create bell curve of a random normal distribution
random_numbers <- floor(rnorm(100, 10, 10))
table_random_numbers <- table(random_numbers) # Gets the counts of each value
barplot(table_random_numbers)

# 25 - Write a R program to create a Dataframe which contain details of 5 employees and display the details

employees_df <- data.frame(Name = c('Dio', 'Gabriel', 'Clara', 'El resto'),
                           Age = c(27, 28, 26, 200),
                           Location = c('Madrid', 'Extremadura', 'Andalucía', 'España'))

summary(employees_df)