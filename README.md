# Gravity’s Influence on Astronauts’ Eyelid and Eyebrow Heights

## Overview
This project investigates how gravity impacts astronauts' eyelid and eyebrow heights by comparing measurements taken on Earth and in space. The findings provide insights into human adaptation to microgravity, which is critical for astronaut health during long-term space missions.

## Dataset
The dataset used in this study is **NASA_Astronaut2-6-2020.xlsx** from the Jules Stein Eye Institute, containing:
- Eyelid and eyebrow measurements on Earth and in space.
- Measurement metrics (e.g., MRD1-L, PTB-L).

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
  - Renamed columns for consistency.
  - Split the "Name/Date" column into separate fields.
- **Statistical Analysis**:
  - Paired t-tests for comparing mean measurements.
  - Correlation analysis for eyelid and eyebrow changes.
- **Visualization**:
  - Boxplots, violin plots, and heatmaps for visual comparisons.

## Results
- **Eyelid Height**: Decreased by 0.6 mm on average in space.
- **Eyebrow Height**: Decreased by 0.8 mm on average in space.
- **Correlation**: Moderate positive correlation (r = 0.58, p < 0.01).

## Challenges
- **Column Naming**: Ensured consistency across datasets.
- **Data Cleaning**: Split combined columns for better usability.

## How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/jamiet1/Gravity-s-Influence-on-Astronauts-Eyelid-and-Eyebrow-Heights.git
