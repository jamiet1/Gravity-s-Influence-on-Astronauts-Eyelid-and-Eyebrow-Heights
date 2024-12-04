# Load necessary library
library(readxl)

# File path and sheet loading
file_path <- "~/NASA_Astronaut2-6-2020.xlsx"
sheet1 <- read_excel(file_path, sheet = 1)

# Calculate standard deviation and range for MRD and PTB columns
mrd_columns <- c("MRD1-R", "MRD1-L")
ptb_columns <- c("PTB-R", "PTB-L")

# Define a function to calculate range
calc_range <- function(x) {
  return(max(x, na.rm = TRUE) - min(x, na.rm = TRUE))
}

# Calculations for MRD
mrd_std <- sapply(sheet1[mrd_columns], sd, na.rm = TRUE)
mrd_range <- sapply(sheet1[mrd_columns], calc_range)

# Calculations for PTB
ptb_std <- sapply(sheet1[ptb_columns], sd, na.rm = TRUE)
ptb_range <- sapply(sheet1[ptb_columns], calc_range)

# Combine results into a data frame
variability_stats <- data.frame(
  Metric = c("Standard Deviation", "Range"),
  MRD_R = c(mrd_std["MRD1-R"], mrd_range["MRD1-R"]),
  MRD_L = c(mrd_std["MRD1-L"], mrd_range["MRD1-L"]),
  PTB_R = c(ptb_std["PTB-R"], ptb_range["PTB-R"]),
  PTB_L = c(ptb_std["PTB-L"], ptb_range["PTB-L"])
)

# Display the results
print(variability_stats)
