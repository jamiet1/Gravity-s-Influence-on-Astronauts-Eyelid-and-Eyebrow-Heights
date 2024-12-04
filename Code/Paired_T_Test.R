library(readxl)
setwd("/Users/katherinejin/Desktop/STATS 140XP")
data2 <- read_excel("NASA_Astronaut2-6-2020.xlsx", sheet = 2) 
colnames(data2)

# Perform paired t-tests 
t_test_MRD1_R <- t.test(data2$`MRD1- R Avg (E)`, data2$`MRD1- R Avg (S)`, paired = TRUE) 
t_test_MRD1_L <- t.test(data2$`MRD1- L Avg (E)`, data2$`MRD1- L Avg (S)`, paired = TRUE) 
t_test_PTB_R <- t.test(data2$`PTB R (E) Avg`, data2$`PTB R (S) Avg`, paired = TRUE) 
t_test_PTB_L <- t.test(data2$`PTB L (E) Avg`, data2$`PTB L (S) Avg`, paired = TRUE) 
# Print the results 
print(t_test_MRD1_R) 
print(t_test_MRD1_L) 
print(t_test_PTB_R) 
print(t_test_PTB_L)
