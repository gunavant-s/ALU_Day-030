`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 18.08.2023 05:50:21
// Design Name: 
// Module Name: tb_alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_alu();
    reg [7:0]a,b;
    reg [3:0]sel;
    wire carryout;
    wire [7:0]result;
    
    alu DUT(.a(a),
            .b(b),
            .carryout(carryout),
            .sel(sel),
            .result(result)
            );
    integer i;
    initial begin
       a = 8'd35;
       b = 8'd30;
       sel = 0;
       for(i=0;i<=15;i=i+1) begin
          #10;
          sel = sel + 8'd1;
       end
       $stop;
    end
    
endmodule
