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
