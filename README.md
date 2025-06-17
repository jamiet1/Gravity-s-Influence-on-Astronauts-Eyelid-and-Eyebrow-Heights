# Gravity’s Influence on Astronauts’ Eyelid and Eyebrow Heights

## Overview
This project investigates how gravity impacts astronauts' eyelid and eyebrow heights by comparing measurements taken on Earth and in space. The findings provide insights into human adaptation to microgravity, which is critical for astronaut health during long-term space missions.

The full poster can be found here: https://www.overleaf.com/read/jpsxdwbczjvw#3d4a8a 

## Dataset
The dataset used in this study is **NASA_Astronaut2-6-2020.xlsx** from the Jules Stein Eye Institute, containing:
- Eyelid and eyebrow measurements on Earth and in space.
- Measurement metrics (e.g., MRD1-L, PTB-L).

This dataset can be found here: https://ucla.app.box.com/s/sn7lystvokoqllft2mk55d6yyt19hehi/folder/292096583155

## Objectives
1. Compare eyelid heights between Earth and space.
2. Compare eyebrow heights between Earth and space.
3. Assess correlations between changes in eyelid and eyebrow heights.

## Hypotheses
1. **Eyelid Height**:
   - **H₀**: The mean eyelid height on Earth is equal to the mean eyelid height in space.
   - **Hₐ**: The mean eyelid height on Earth is not equal to the mean eyelid height in space.
2. **Eyebrow Height**:
   - **H₀**: The mean eyebrow height on Earth is equal to the mean eyebrow height in space.
   - **Hₐ**: The mean eyebrow height on Earth is not equal to the mean eyebrow height in space.
3. **Correlation**:
   - **H₀**: There is no correlation between eyelid and eyebrow heights.
   - **Hₐ**: There is a correlation between eyelid and eyebrow heights.

## Methods
- **Data Cleaning**:
  - Used a cleaned dataset with splitted names and dates, and no NA value, ensuring consistency in column names.
- **Statistical Analysis**:
  - Paired t-tests for comparing mean measurements.
  - Correlation analysis for eyelid and eyebrow changes.
- **Visualization**:
  - Boxplots, bar plots, dot plots, and line plots for visual comparisons.

## Results
- **Individual Variability**: Astronauts' facial features respond differently to microgravity, with varying degrees of change observed.
- **Environmental Influence**: Gravity significantly affects the relationship between eyelid and eyebrow positions, with distinct differences between Earth and space.
- **Microgravity-Induced Changes**: Increased variability in facial measurements in space suggests microgravity impacts astronauts' facial anatomy over time.

## Challenges
- **Small Sample Size:**: There is a limit on the generalization of findings to the broader astronaut population.
- **Uncontrolled Confounding Variables**: Factors such as age were not explicitly adjusted for in the analysis, which may influence results. 
- **Measurement Variability**: Potential inconsistencies in data collection methods. 

## How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/jamiet1/Gravity-s-Influence-on-Astronauts-Eyelid-and-Eyebrow-Heights.git
