# can you read this?

# use the file pane to navigate to the 00-software folder
# then go to session > set working directory > file pane dir

# set the woerking directory of Rstudio to where the data is
setwd("~/git/columbia/2014-11-csaph-r/00-software")
getwd()

read.csv(file = "inflammation-01.csv", header = FALSE)

pizza <- 55
pizza + 1
rm(pizza)


pizza <- 55
# Pizza # does not exist

pizza * 2.2


inflam <- read.csv(file = "inflammation-01.csv", header = FALSE)
dim(inflam)
# first 6 rows
head(inflam)

# last 1 row
tail(inflam, n = 1)

mass <- 47.5
mass
age <- 122
age

mass <- mass * 2.0
mass

age <- age - 20
age

class(inflam)
dim(inflam)

# subsetting
inflam[4, 11]
inflam[30, 20]

subset <- inflam[1:4, 1:10]
inflam[5:20, 20:25]

# c for combine -- create vectors
rows_of_interest <- c(3, 4, 7, 32)
rowOfInterest <- c(3, 4, 7, 32)
row.of.interest <- c(3, 4, 7, 32)

col_of_interest <- c(3:5)

inflam[rows_of_interest, col_of_interest]


inflam[5, ]
inflam[, 35]


max(inflam[, 20])
max(inflam[1 , ])

patient_1 <- inflam[1 , ]
patient_1

min(patient_1)
sd(patient_1)
median(patient_1)

class(as.matrix(patient_1))
mean(as.matrix(patient_1))
as.data.frame()

# mean inflammation level for each patient
apply(X = inflam, MARGIN = 1, FUN = mean)

apply(X = inflam, MARGIN = 1, FUN = mean)[8]

mean_patients <- apply(X = inflam, MARGIN = 1, FUN = mean)
mean_patients
mean_patients[8]

# day-by-day averages for all patients, using margin = 2
apply(X = inflam, MARGIN = 2, FUN = mean)

round(mean_patients, 2)

# min, max, mean, median, sd

avg_day_inflammation <- apply(inflam, 2, mean)
sd_day_inflammation <- apply(inflam, 2, sd)
min_day_inflammation <- apply(inflam, 2, min)
max_day_inflammation <- apply(inflam, 2, max)

plot(avg_day_inflammation)
plot(sd_day_inflammation)
plot(min_day_inflammation)
plot(max_day_inflammation)

T <- 'pizza'
T

# FUNCTIONS
abs_zero_value <- function(){
  return(273.15)
}

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5 / 9)) + abs_zero_value()
  # kelvin<-((temp-32)*(5/9))+273.15
  return(kelvin)
}

fahr_to_kelvin(32)
fahr_to_kelvin(212)

kelvin_to_celsius <- function(temp){
  celsius <- temp - abs_zero_value()
  return(celsius)
}
kelvin_to_celsius(0)

fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  result
}

# write a funciton that takes in a dataframe (inflam)
# and it will print return the 4 plots we made
# witin the function re-calculate the max_day_inflammation
# using the apply() functions we did earlier

# print(plot(max_day_inflammation))

# analyze(inflam)

what_am_i <- 1111111111
what_am_i

example_function <- function(){
  print(what_am_i)
  what_am_i <- 42
  print(what_am_i)
}

example_function()
what_am_i

inflam
analyze <- function(data_frame_to_analyze){
  avg_day_inflammation <- apply(data_frame_to_analyze, 2, mean)
  sd_day_inflammation <- apply(data_frame_to_analyze, 2, sd)
  min_day_inflammation <- apply(data_frame_to_analyze, 2, min)
  max_day_inflammation <- apply(data_frame_to_analyze, 2, max)

  plot(avg_day_inflammation)
  plot(sd_day_inflammation)
  plot(min_day_inflammation)
  plot(max_day_inflammation)
}
analyze(inflam)

infl2 <- read.csv(file = "inflammation-02.csv",
                  header = FALSE)
analyze(infl2)


# write a funciton, named analyze_file
# that takes in a file name
# and plots the stuff from analyze()

analyze_file <- function(file_name){
  data <- read.csv(file = file_name, header = FALSE)
  analyze(data)
}

analyze_file("inflammation-01.csv")
analyze_file("inflammation-05.csv")

list.files(path = './', pattern = 'inflammation')
# more complicated patters, you should look into
# something called regular expressions
list.files(path = './', pattern = '^i.*csv')

list_of_inflam_files <- list.files(path = './',
                                   pattern = 'inflammation')
list_of_inflam_files
class(list_of_inflam_files)


# loops

## for loop

# for every time in a list of something{
#   do soemthing
# }

some_numbers <- c(1, 2, 3, 4, 5)
some_numbers
pizza <- 1
for(pizza in some_numbers){
  print(pizza)
  print(pizza + 50)
}


list_of_inflam_files <- list.files(path = './',
                                   pattern = 'inflammation')
list_of_inflam_files

for(file_name in list_of_inflam_files){
  analyze_file(file_name)
}

