#this is to create the id
id <- c(1:10)
# Adding names
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
#Adding job titles
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
#Creating the data frame
employee <- data.frame(id, name, job_title)
#This will allow us to see the table 
View(employee)
#This will print out the table inside the console
print(employee)

#this will separate the column name into two separate columns one called first_name 
#and the other one called last_name using the separator by space as reference
separate(employee,name,into = c('first_name','last_name'), sep = ' ')


#installing palmerpenguins
install.packages("palmerpenguins")
#loading the data palmerpenguins
library("palmerpenguins")
#Viewing the data
View(penguins)
#printing the data
print(penguins)

#adding two new columns the body mass in kg and flipper lenth in mts
penguins %>%
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m = flipper_length_mm/1000 )