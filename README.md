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

This project may be executed through either the MATLAB application or MATLAB Online. Comprehensive execution instructions are provided below.

If using the MATLAB application to open the live script file attached in this repository, appropriate helper functions, toolboxes, and Simulink dependencies must be installed. Note that installations are only required if opening the live script through the MATLAB application. MATLAB Online provides automatic access to all required products without installation requirements.

Helper functions are accessible through the dedicated "Helper Functions" folder in this repository. They must be downloaded and added to the appropriate MATLAB search path before executing any code.

***Required Helper Functions***

- hPlotCurvesforCycles.m
- hPlotRawMeasurementsWithSegments.m

Download sites for toolboxes for the MATLAB application are linked below. Toolboxes are required for features such as fitting curves, differential curves, and battery test parsers. The following toolboxes must be downloaded:

***Required Toolboxes***

- Curve Fitting Toolbox

https://www.mathworks.com/products/curvefitting.html](https://www.mathworks.com/products/curvefitting.html

- Predictive Maintenance Toolbox

https://www.mathworks.com/products/predictive-maintenance.html](https://www.mathworks.com/products/predictive-maintenance.html

If you wish to run the Simulink models through the MATLAB application, Simulink and Simscape installations are required as linked below.
These installations are not required to run the live script or run Simulink models using MATLAB Online, but they must be downloaded in order to run Simulink models through the MATLAB application.

***Simulink Download***

https://www.mathworks.com/products/simulink.html](https://www.mathworks.com/products/simulink.html

***Simscape Download***

https://www.mathworks.com/products/simscape.html](https://www.mathworks.com/products/simscape.html

To access files required for Simulink modeling, navigate to the "Simulink" folder. This will contain a sub-folder entitled "Simulink Dependencies." All files in this "Simulink Dependencies" folder must be downloaded and added to the MATLAB search path prior to running code. Required dependencies include the following:

***Required Simulink Dependencies***

- All files in the "+THERMALBattery" sub-folder
- All files in the "+THERMALBatteryLumpingAdapters" sub-folder
- THERMALBattery.mat
- THERMALBattery\_lib.slx
- CCCV.slx
- MSCCCV.slx

All of the above helper functions, toolboxes, and dependencies MUST be installed if running the live script through the MATLAB application. Installations are not required if using MATLAB Online.

**MATLAB Application**

If running code through the MATLAB application, follow the steps outlined below.

1. Ensure up-to-date versions of MATLAB, Simulink, and Simscape are installed
2. Ensure all necessary helper functions, toolboxes, and Simulink dependencies are installed
3. Open the "BatteryChargingProfile\_Team3.mlx" live script in the repository
4. Add "Helper Functions" and "Simulink Dependencies" folders to the MATLAB search path by clicking on them and selecting "Add ... to search path"
5. Click the green "Run" icon in the toolbar
6. Once prompted to choose a cycle number, enter a number within the designated range and click "Enter"
7. The remaining code will proceed to execute and no further user input is needed

**MATLAB Online**

If running code through MATLAB Online, follow the steps outlined below:

1. Click on the following link to access the GitHub repository through MATLAB online:

https://matlab.mathworks.com/open/github/v1?repo=DyDyVNR/MATLAB-Classroom-Challenge-BatteryProfile-Team3

2. Add "Helper Functions" and "Simulink Dependencies" folders to the MATLAB search path by clicking on them and selecting "Add ... to search path"
3. Click the green "Run" icon in the toolbar
4. Once prompted to choose a cycle number, enter a number within the designated range and click "Enter"
5. The remaining code will proceed to execute and no further user input is needed

**Simulink**

All graphs produced by Simulink have been included in the live script and may be viewed using the instructions above. However, Simulink graphs and models may be viewed in further detail through the process detailed below. This process is nearly identical for the MATLAB application and MATLAB Online.

1. Open the "CCCV.slx" and "MSCCCV.slx" files in the "Simulink" folder and add them to the MATLAB search path to access Simulink models.
2. Click the green "Run" icon in the toolbar
3. Once the simulation has run successfully, double-click the scope block (as highlighted below) to view graphs.

## Reproducing Results

In order to reproduce the results shown in BatteryChargingProfile_Team3.pdf, open BatteryChargingProfile_Team3.mlx to access the main live script. When prompted to enter a cycle number, enter "1" to select cycle 1. This will produce the results shown in BatteryChargingProfile_Team3.pdf, as we primarily focused on cycle 1 throughout our coding and editing process.

## File/Folder Overview
_Helper Functions_ - Contains plotting functions used by the main live script. 

_Project Template and Instructions_ - Contains project templates and instructions as a reference for team members.

_Resources (Ignore)_ - Contains initial commits of MATLAB files and is not necessary to run any code. May effectively be ignored.

_Simulink_ - Contains all Simulink files and dependencies.

_BatteryChargingProfile_Team3.mlx_ - The main live script that runs the battery charging profile analysis and generates the project's results.

_BatteryChargingProfile_Team3.pdf_ - .pdf file of the main live script attached for viewing convenience

_README.md_ - Main README file detailing project objectives, requirements, and execution instructions.

_Teamwork_Agreement_BatteryProfileTeam3.pdf_ - Contains teamwork agreement as a .pdf file.
