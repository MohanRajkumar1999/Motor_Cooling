%%Importing motor mechanical and electrical power

MMP = readmatrix("Motormechanicalpower.xlsx");
MEP = readmatrix("Motorelectricalpower.xlsx");

%Motor
%Mass of the motor
Mm = 23.69; %Kg
mCp = 1350; %J/kg-C
%Initial Motor Temperature
Tmotor_i = 20;%C
%Motor cooling
%Air
%Cp = 1350; %J/kg-C
%Water 
Cp = 4182; %J/kg-C
%Ambient temperature
Tamb = 18; %C

%Calculating the motor cooling mass flowrate

[Motor_max_HP,index] = max(out.Motor_Heating_Power.Data);
%Motor temperature at maximum of heating power
Tm = out.Motor_Temp.Data(index);

%Motor cooling power
Motor_cooling_max_power = Motor_max_HP*1.1;
%Motor Coolant mass flowrate
%m = MCP/(Cp*(Tm-Tamb))

Cm = Motor_cooling_max_power/(Cp*(Tm-Tamb)); %Kg/S
