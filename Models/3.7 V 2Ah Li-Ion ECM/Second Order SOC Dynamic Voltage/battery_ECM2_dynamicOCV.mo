model battery_ECM2_dynamic_temp
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {88, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(
    Placement(transformation(origin = {-78, 46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 1000) annotation(
    Placement(transformation(origin = {-46, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.01) annotation(
    Placement(transformation(origin = {-46, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(transformation(origin = {-110, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(transformation(origin = {-100, 72}, extent = {{10, -10}, {-10, 10}}, rotation = -180)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {58, 24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SineCurrent sineCurrent(I = 0.5, f = 1, offset = 1) annotation(
    Placement(transformation(origin = {28, 24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(transformation(origin = {58, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain gain(k = -1/7200) annotation(
    Placement(transformation(origin = {70, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {122, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(
    Placement(transformation(origin = {88, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput SOC annotation(
    Placement(transformation(origin = {148, -34}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {142, -58}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor21(R = 0.01) annotation(
    Placement(transformation(origin = {-12, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C = 1000) annotation(
    Placement(transformation(origin = {-12, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain1(k = 1.2) annotation(
    Placement(transformation(origin = {20, -56}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {-110, 28}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(transformation(origin = {-22, -50}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Sources.Constant const1(k = 3) annotation(
    Placement(transformation(origin = {12, -18}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
equation
  connect(resistor1.n, resistor2.p) annotation(
    Line(points = {{-68, 46}, {-68, 54}, {-58, 54}, {-58, 60}, {-56, 60}}, color = {0, 0, 255}));
  connect(capacitor.p, resistor1.n) annotation(
    Line(points = {{-56, 30}, {-60, 30}, {-60, 37}, {-68, 37}, {-68, 46}}, color = {0, 0, 255}));
  connect(voltageSensor.n, resistor1.p) annotation(
    Line(points = {{-90, 72}, {-88, 72}, {-88, 46}}, color = {0, 0, 255}));
  connect(currentSensor.n, ground.p) annotation(
    Line(points = {{68, 24}, {78, 24}}, color = {0, 0, 255}));
  connect(sineCurrent.n, currentSensor.p) annotation(
    Line(points = {{38, 24}, {48, 24}}, color = {0, 0, 255}));
  connect(currentSensor.i, integrator.u) annotation(
    Line(points = {{58, 13}, {58, 3}}, color = {0, 0, 127}));
  connect(gain.y, add.u2) annotation(
    Line(points = {{81, -40}, {110, -40}}, color = {0, 0, 127}));
  connect(integrator.y, gain.u) annotation(
    Line(points = {{58, -19}, {58, -41}}, color = {0, 0, 127}));
  connect(const.y, add.u1) annotation(
    Line(points = {{99, -14}, {103, -14}, {103, -28}, {109, -28}}, color = {0, 0, 127}));
  connect(add.y, SOC) annotation(
    Line(points = {{133, -34}, {147, -34}}, color = {0, 0, 127}));
  connect(resistor2.n, capacitor.n) annotation(
    Line(points = {{-36, 60}, {-36, 30}}, color = {0, 0, 255}));
  connect(resistor21.p, capacitor2.p) annotation(
    Line(points = {{-22, 60}, {-22, 30}}, color = {0, 0, 255}));
  connect(resistor21.n, capacitor2.n) annotation(
    Line(points = {{-2, 60}, {-2, 30}}, color = {0, 0, 255}));
  connect(capacitor2.p, capacitor.n) annotation(
    Line(points = {{-22, 30}, {-36, 30}}, color = {0, 0, 255}));
  connect(capacitor2.n, sineCurrent.p) annotation(
    Line(points = {{-2, 30}, {18, 30}, {18, 24}}, color = {0, 0, 255}));
  connect(signalVoltage.p, voltageSensor.p) annotation(
    Line(points = {{-110, 38}, {-110, 72}}, color = {0, 0, 255}));
  connect(resistor1.p, signalVoltage.p) annotation(
    Line(points = {{-88, 46}, {-110, 46}, {-110, 38}}, color = {0, 0, 255}));
  connect(capacitor2.n, signalVoltage.n) annotation(
    Line(points = {{-2, 30}, {-2, 18}, {-110, 18}}, color = {0, 0, 255}));
  connect(signalVoltage.n, ground1.p) annotation(
    Line(points = {{-110, 18}, {-110, 8}}, color = {0, 0, 255}));
  connect(SOC, gain1.u) annotation(
    Line(points = {{148, -34}, {152, -34}, {152, -56}, {32, -56}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u2) annotation(
    Line(points = {{10, -56}, {-10, -56}}, color = {0, 0, 127}));
  connect(const1.y, add1.u1) annotation(
    Line(points = {{1, -18}, {-10, -18}, {-10, -44}}, color = {0, 0, 127}));
  connect(add1.y, signalVoltage.v) annotation(
    Line(points = {{-32, -50}, {-128, -50}, {-128, 28}, {-122, 28}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end battery_ECM2_dynamic_temp;
