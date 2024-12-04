library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)


data <- read_excel("/Users/ala/Desktop/NASA_Astronaut2-6-2020.xlsx", sheet = 2)
colnames(data)

# Bar Plot for MRD1 Right Eye Avg (Earth vs. Space)
ggplot(data) +
  geom_bar(aes(x = Astronaut, y = `MRD1- R Avg (E)`, fill = "Earth"), 
           stat = "identity", position = "dodge", alpha = 0.7) +
  geom_bar(aes(x = Astronaut, y = `MRD1- R Avg (S)`, fill = "Space"), 
           stat = "identity", position = "dodge", alpha = 0.7) +
  labs(title = "MRD1 Right Eye Avg Comparison: Earth vs. Space",
       x = "Astronaut",
       y = "MRD1 Right Eye Average",
       fill = "Environment") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  coord_flip()

# Scatter Plot for MRD1-R Avg (Earth) vs PTB R Avg (Earth)
ggplot(data, aes(x = `MRD1- R Avg (E)`, y = `PTB R (E) Avg`)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Correlation Between MRD1 Right Eye Avg (Earth) and PTB Right Eye Avg (Earth)",
       x = "MRD1 Right Eye Avg (Earth)",
       y = "PTB Right Eye Avg (Earth)") +
  theme_minimal()
