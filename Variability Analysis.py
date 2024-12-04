import pandas as pd

file_path = '~/NASA_Astronaut2-6-2020.xlsx'
data = pd.ExcelFile(file_path)

# Calculate standard deviation and range for MRD and PTB columns
mrd_columns = ['MRD1-R', 'MRD1-L']
ptb_columns = ['PTB-R', 'PTB-L']

# Calculations for MRD
mrd_stats = sheet1[mrd_columns].agg(['std', lambda x: x.max() - x.min()])
mrd_stats.index = ['Standard Deviation', 'Range']

# Calculations for PTB
ptb_stats = sheet1[ptb_columns].agg(['std', lambda x: x.max() - x.min()])
ptb_stats.index = ['Standard Deviation', 'Range']

# Combine and display results
variability_stats = pd.concat([mrd_stats, ptb_stats], axis=1, keys=['MRD', 'PTB'])
import ace_tools as tools; tools.display_dataframe_to_user(name="Variability Statistics for MRD and PTB", dataframe=variability_stats)
