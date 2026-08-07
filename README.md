# Battery Charging Profile Team 3

## Team Members
- Cris Cervantes Gonzalez
- Soliana Hadera
- Vannara Net
- Aren Safarian

## Overview
This project utilizes MATLAB software to model the charging profile of a lithium-ion battery based on several provided datasets
which will be processed in order to perform a series of tasks. The aim of this project is to analyze the lithium-ion battery charging profile 
and interpret crucial data such as charging time, energy delivered, and energy loss. Our deliverables checklist was used to monitor project 
status and presents as follows:

_Task 1: Fit the voltage equation to a lithium-ion battery profile_
- Battery data imported from MathWorks datasets
- Fitted charging-curve model, including a plot containing a fitted curve and goodness-of-fit statistics
- Estimated tau value

_Task 2: Plot the electrical terms that express how energy moves in a circuit_
- Voltage vs. time plot (with points highlighting notable changes in charging dynamics)
- Current vs. time plot
- Power vs. time plot

_Task 3: Compute analytical results_
- Differentiation results computing rates of voltage change over specified time intervals
- Time required to reach 80% and 100% charge
- Integration results computing total energy delivered to the battery during charging
- Estimate of resistive energy loss (and, by extension, power loss)

A completed project entails thorough and accurate execution of all tasks detailed above. Additionally, an optional section analyzing the CC-CV cycles of the lithium-ion battery is included. 

## Execution Instructions
This project may be executed through either the MATLAB application or MATLAB online. Comprehensive execution instructions are provided below.

Prior to opening the live script file attached in this repository, appropriate helper functions and toolboxes must be downloaded. Note that toolbox downloads are only required if opening the live script through the MATLAB application. 

  _Required Helper Functions_
  - hPlotCurvesforCycles.m
  - hPlotRawMeasurementsWithSegments.m

Helper functions are accessible through the dedicated "Helper Functions" folder in this repository. They must be on the appropriate MATLAB path before executing any code. 

  _Required Toolboxes_
  - Curve Fitting Toolbox
  - Predictive Maintenance Toolbox

These toolboxes are required for features such as fitting curves, differential curves, and battery test parsers. Download sites for toolboxes for the MATLAB application are linked through the dedicated "Toolboxes" folder in this repository.

**MATLAB Application**

If running code through the MATLAB application, follow the steps outlined below:

1) Ensure all necessary helper functions and toolboxes are downloaded
2) Open the "BatteryChargingProfile_Team3.mlx live script in the repository
3) Open helper functions and add them to the MATLAB search path by clicking "Add C:/... to search path"
4) Click the green "Run" icon in the toolbar
5) Once prompted to choose a cycle number, enter a number within the designated range and click "Enter"
6) The remaining code will proceed to compile and no further user input is needed

**MATLAB Online**

If running code through MATLAB online, follow the steps outlined below:

1) Click on the following link to access the GitHub repository through MATLAB online:
          https://matlab.mathworks.com/open/github/v1?repo=DyDyVNR/MATLAB-Classroom-Challenge-BatteryProfile-Team3
2) Open helper functions and add them to the MATLAB search path by clicking "Add C:/... to search path"
3) Click the green "Run" icon in the toolbar
5) Once prompted to choose a cycle number, enter a number within the designated range and click "Enter"
6) The remaining code will proceed to compile and no further user input is needed


## File/Folder Overview
- <ins>Helper Functions</ins> - Contains plotting functions used by the main live script. These must be downloaded and added to MATLAB's search path prior to running code as detailed by the execution instructions above.
- <ins>Project Template and Instructions</ins> - Contains project templates and instructions as a reference for team members.
- <ins>resources/project</ins> - Contains initial commits of MATLAB files and is not necessary to run any code. May effectively be ignored.
- <ins>BatteryChargingProfile_Team3.mlx</ins> - The main Live Script that runs the battery charging profile analysis and generates the project's results.
- <ins>+THERMALBattery and +THERMALBatteryLumpingAdapters</ins> - Contain helper functions necessary for Simulink modeling.
- <ins>Teamwork_Agreement_BatteryProfileTeam3.pdf</ins> - Contains teamwork agreement as a .pdf file.
