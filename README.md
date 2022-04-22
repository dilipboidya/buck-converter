# Mixed Signal Based Buck-Converter


## Buck Converter or Stepdown Converter

- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Analog version of stepdown converter in eSim](#analog-version-of-stepdown-converter-in-eSim)
  * [Schematic Diagram](#Schematic-diagram)
  * [Netlists](#etlists)
  * [NgSpice Plot](#ngspice-plot)
 
- [Mixed Signal based stepdown converter](#mixed-signal-based-stepdown-converter)
  * [Circuit Diagram in eSim](#circuit-diagram-in-esim)
  * [Verilog Code](#verilog-code)
  * [Makerchip](#makerchip)
  * [Makerchip Plots](#makerchip-plots)
  * [Netlists](#netlists)
  * [NgSpice Plots](#ngspice-plots)
  
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

## Abstract
This paper presents a design of mixed signal on buck converter to step down the input voltage. The step-down converter presented here offers a good efficiency performance. The proposed converter is designed in eSim tool.

## Reference Circuit Diagram
![circuit-of-buck-converter](https://user-images.githubusercontent.com/43288153/163370865-eb20f076-9c63-499f-b790-19e0a11e24ff.jpg)

fig1: schematic diagram of buck-converter

![Schematic-diagram-of-Buck-converter](https://user-images.githubusercontent.com/43288153/163419076-c7da3eab-93dd-4d0e-a43a-58436db4fb71.png)
fig2: circuit diagram of buck-converter

## Reference Waveform
![Reference waveform](https://user-images.githubusercontent.com/43288153/163389443-c79e4f64-fbdc-4ba5-9f81-1ae77dea5bf6.png)

fig3: waveform
## Circuit Details
A step-down converter is also known as buck converter, as the name suggests it steps down the input voltage to lower voltage, since the power is always conserved therefore the current in the output is higher than the input current and thus power is conserved. A typical step-down converter consists of a switch (transistor) and a diode as a semiconductor device, and storing element: inductor and a capacitor, the former is used to store electrical energy in the form of magnetic energy and the later is to smooth the output voltage i.e., to filter out the ripple.
The working principle of the step-down converter can be explained as follows-
1) When the transistor is ON state, current starts flowing through the inductor stores electric energy by generating magnetic field around it and since capacitor  therefore, charge will be stored and the voltage across it will appear across the load. 
2) When the transistor is turned OFF, inductor will pump out its stored energy tand current will start flowing[2].The current will flow until the stored energy in the inductor collapsed during this period diode will be in forward bias and thus allow current to flow through it. Using Verilog the PWM signal can be generated to drive the gate of the transistor, thus a mixed signal design can be accomplished easily.

# Software Used
## eSim
It is an open source Electronics Design Automation by FOSSEE, IIT Bombay. It is made using NgSpice and Kicad.
More at:
</br>
https://esim.fossee.in/home
## NgSpice
It is used for spice simulations, it is an Open Source Software.
For more details visit:
</br>
http://ngspice.sourceforge.net/docs.html

## Makerchip
It is an Online Web Browser IDE for Verilog/System-Verilog/TL-Verilog Simulation.
More details here 
</br> https://www.makerchip.com/
## Verilator
It is a tool used to convert Verilog code to C++ objects.
Visit: 
https://www.veripool.org/verilator/

# Analog version of stepup converter in eSim

## Schematic Diagram 
NOTE: For switching purpose a BJT is used, however a power n-channel MOSFET can also be used for that a model file must be created in eSim beforehand

![Final AC CKT Diagram](https://user-images.githubusercontent.com/43288153/163411627-104e6724-8520-45c8-a697-9583e9f88439.png)


fig4: schematic diagram of stepdown converter

## Netlists

```
* /home/dilip/eSim-Workspace/buck_converter/buck_converter.cir

* EESchema Netlist Version 1.1 (Spice format) creation date: Thu Apr 14 19:40:20 2022

* To exclude a component from the Spice Netlist add [Spice_Netlist_Enabled] user FIELD set to: N
* To reorder the component spice node sequence add [Spice_Node_Sequence] user FIELD and define sequence: 2,1,0

* Sheet Name: /
D1  GND Net-_D1-Pad2_ eSim_Diode		
L1  Net-_D1-Pad2_ Vout 1		
C1  Vout GND 10n		
R1  Vout GND 10k		
Q1  Vin pwm Net-_D1-Pad2_ eSim_NPN		
v2  Vin GND DC		
v1  pwm GND pulse		
U3  Vout plot_v1		
U2  Vin plot_v1		
U1  pwm plot_v1		

.end
```

## NgSpice Plot

![AC Vin](https://user-images.githubusercontent.com/43288153/163418531-1917361e-b6c9-4945-83a2-411df9207fa8.png)
fig6.1: input voltage
![AC pwm](https://user-images.githubusercontent.com/43288153/163418602-0d8f4529-be76-4e57-a1d8-0cca12d2e5c9.png)
fig6.2: PWM signal

![AC Vout](https://user-images.githubusercontent.com/43288153/163411944-01c48ec4-b672-4407-89b1-69e05a9728a4.png)
fig6.3: waveform of buck converter


# Mixed Signal based buck converter

## Circuit Diagram in eSim

![MSD ckt diagram](https://user-images.githubusercontent.com/43288153/163416011-24ae9606-841f-4bb0-8062-ee768b99c6e6.png)

fig7: circuit diagram of buck converter
## Verilog Code
```
 `timescale 1ns / 1ps

module pwm(
	input clk,
	output out
	);
// Create a simple counter

reg [7:0] counter =0;
always @ (posedge clk) begin
	if (counter < 5000) counter<= counter +1; // count until 5000
	else counter <=0;// reset counter
end

// create 50% duty cycle

assign out = (counter<50) ? 1:0; // assign out to 1 if counter value is less than 50
endmodule

```

## Makerchip
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/    /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/      /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/    

//Your Verilog/System Verilog Code Starts Here:
 `timescale 1ns / 1ps

module pwm(
	input clk,
	output out
	);
// Create a simple counter

reg [7:0] counter =0;
always @ (posedge clk) begin
	if (counter < 5000) counter<= counter +1; // count until 5000
	else counter <=0;// reset counter
end

// create 50% duty cycle

assign out = (counter<50) ? 1:0; // assign out to 1 if counter value is less than 50
endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  out;//output
//The $random() can be replaced if user wants to assign values
		pwm pwm(.clk(clk), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

```

## Makerchip Plots
![makerchip plot](https://user-images.githubusercontent.com/43288153/163364298-fa350f92-010e-4b50-8a03-c480967b580b.png)

fig9: makerchip plot

## Netlists

```
* /home/dilip/eSim-Workspace/Mixed_Signal_Based_Buck_Converter/Mixed_Signal_Based_Buck_Converter.cir

* EESchema Netlist Version 1.1 (Spice format) creation date: Thu Apr 14 19:44:45 2022

* To exclude a component from the Spice Netlist add [Spice_Netlist_Enabled] user FIELD set to: N
* To reorder the component spice node sequence add [Spice_Node_Sequence] user FIELD and define sequence: 2,1,0

* Sheet Name: /
Q1  Vin Net-_Q1-Pad2_ Net-_D1-Pad2_ eSim_NPN		
L1  Net-_D1-Pad2_ Vout 1		
D1  GND Net-_D1-Pad2_ eSim_Diode		
C1  Vout GND 10n		
R1  Vout GND 10k		
v2  Vin GND DC		
U6  Vout plot_v1		
U4  Vin plot_v1		
v1  clk GND pulse		
U3  clk Net-_U1-Pad1_ adc_bridge_1		
U5  Net-_U1-Pad2_ Net-_Q1-Pad2_ dac_bridge_1		
U2  clk plot_v1		
U1  Net-_U1-Pad1_ Net-_U1-Pad2_ pwm		

.end

```

## NgSpice Plots
![MSD Vin](https://user-images.githubusercontent.com/43288153/163416180-bec525a8-fc74-4583-af39-bcd93bcd4a74.png)
fig11: input voltage

![MSD Vout](https://user-images.githubusercontent.com/43288153/163416304-a3f8dd3f-c192-4ab7-b41e-54935ee142ed.png)
fig12: output voltage

![MSD clk](https://user-images.githubusercontent.com/43288153/163416597-f4d48494-82bd-4e10-9b28-40b54bdb23b8.png)
fig13: clock



## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully

## Steps to run this project
1. Open a new terminal 
2. Clone this project using the following command:</br>
```git clone https:///github.com/dilipboidya/buck-converter.git ```</br>
3. Change directory:</br>
```cd MSD_BC/Mixed_Signal_Based_Buck_Converter```</br>
4. Run NgSpice:</br>
```ngspice Mixed_Signal_Based_Buck_Converter.cir.out```</br>
5.  To run this project in eSim:
-  Run  eSim</br>
-  Load the project</br>
-  Open eeSchema</br>
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Sumanto Kar, eSim Team, FOSSEE

## References
1. S. Masri, N. Mohamad and M. H. M. Hariri, "Design and development of DC-DC buck converter for photovoltaic application," 2012 International Conference on Power Engineering and Renewable Energy (ICPERE), 2012, pp. 1-5, doi: 10.1109/ICPERE.2012.6287236.
2. Electronicscoach, "What is buck converter?" https://electronicscoach.com/buck-converter.html [accessed April. 14 2022]]
