function hPlotCurvesforCycles(curveData, parser, cycleList, cyclingPhase, stepIndex, plotInterval, curveType)
% HPLOTCURVESFORCYCLES - helper function to plot differential curves over
% cycles
arguments
    curveData
    parser
    cycleList (:,1) = sort(unique(curveData.(parser.CycleIndexVariable)))
    cyclingPhase  (1,1) string {mustBeMember(cyclingPhase,{'Charge', 'Discharge', 'Both'})} ="Discharge"
    stepIndex = 10
    plotInterval =200
    curveType (1,1) string {mustBeMember(curveType,{'IC', 'DV', 'DT'})} = "IC"
end

if cyclingPhase ~= "Both"
    curveData = curveData(curveData.CyclingPhases == cyclingPhase, :);
end

switch curveType
    case 'IC'
        figure;
        hold on
        for cycleIndex = 1:plotInterval:length(cycleList)
            curveCycle = curveData(curveData.(parser.CycleIndexVariable) ==  cycleIndex, :);
            curveStep = curveCycle(curveCycle.(parser.StepIndexVariable) == stepIndex, :);
            ICTable = curveStep.IC{1};
            IC = ICTable.IC;
            IC_x =  ICTable.interpolatedVoltage;
            z =  cycleIndex*ones(length(IC_x),1);
            plot3(IC_x, z, IC);
        end
        xlabel('Voltage (V)');
        ylabel('Cycle number');
        zlabel('IC (Ah/V)');
        title('Incremental capacity curves over cycles')
        grid on
        view([-25, 30])
        hold off
    case 'DV'
        figure;
        hold on
        for cycleIndex = 1:plotInterval:length(cycleList)
            curveCycle = curveData(curveData.(parser.CycleIndexVariable) ==  cycleIndex, :);
            curveStep = curveCycle(curveCycle.(parser.StepIndexVariable)  == stepIndex, :);
            DVTable = curveStep.DV{1};
            DV = DVTable.DV;
            DV_x = DVTable.interpolatedTime;
            z =  cycleIndex*ones(length(DV_x),1);
            plot3(DV_x, z, DV);
        end
        xlabel('Time (s)');
        ylabel('Cycle number');
        zlabel('DV (V/Ah)');
        title('Differential voltage curves over cycles')
        grid on
        view([-15, 5])
        hold off
    case 'DT'
        figure;
        hold on
        for cycleIndex = 1:plotInterval:length(cycleList)
            curveCycle = curveData(curveData.(parser.CycleIndexVariable) ==  cycleIndex, :);
            curveStep = curveCycle(curveCycle.(parser.StepIndexVariable)  == stepIndex, :);
            DTTable = curveStep.DT{1};
            DT = DTTable.DT;
            DT_x = DTTable{1}.interpolatedVoltage;
            z =  cycleIndex*ones(length(DT_x),1);
            plot3(DT_x, z, DT);
        end
        xlabel('Time (s)');
        ylabel('Cycle number');
        zlabel(['DT (', char(176), 'C/V)']);

        title('Differential temperature curves over cycles')
        hgrid on
        view(3)
        hold off
    otherwise
        warning('Unexpected curve type. No plot created.')
end
