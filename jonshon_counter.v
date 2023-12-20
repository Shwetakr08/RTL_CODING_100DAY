////////////////////////////////////////////////////////////////////////////////////
//   4-bit Johnson Counter
/*//////////////////////////////////////////////////////////////////////////////////
*
* 
*The 4-bit johnson counter contains 4 D flip-flops and it counts 8 no.of cycles. The inverted output of the last flip-flop is fed back as input to the first flip-flop.From the figure, ABCD is the outputs of the flip-flop in the 4-bit pattern.

*The input value of ‘D’ is the inverted output of the last flip-flop.

*The ‘CLK’ is used to count the states or cycles of the counter, which is in the closed-loop.

*The reset pin is used as an on/off switch.

*As the data will be rotating around a continuous closed loop, a counter can also be used to detect various patterns or values within the data.

*For example, when there is a clock pulse, the output pattern of the flip-flops would be 1000, 1100, 1110, 1111, 0111, 0011, 0001

When there is no clock pulse, the output will be 0000.*/

///////////////////////////////////////////////////////////////////////////////////////////////////////


module johnson_counter(clk,reset,count);
//Johnson counter can be implement for any number of bits by changing  Width Parameter.Initially it was 4.
parameter WIDTH=4;
  //inputs
input clk,reset;
  //outputs
output reg [WIDTH-1:0] count;

always@(posedge clk)
begin
if(reset)
count={~count[0],count[WIDTH-1:1]};
else 
count=1;
end
endmodule
