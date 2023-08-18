`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 18.08.2023 05:26:31
// Design Name: 
// Module Name: alu
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


module alu(input [7:0]a,
           input [7:0]b,
           input [3:0]sel,
           output reg [7:0]result,
           output carryout
           );
    wire [8:0]temp;
    assign temp = a+b;
    assign carryout = temp[8];
    
    always @(*) begin
        case(sel)
            4'b0000:
            result = a+b;
            //carryout <= temp[8];
            4'b0001:
            result = a-b;
            4'b0010:
            result = a/b;
            4'b0011:
            result = a&b;
            4'b0100:
            result = a|b;
            4'b0101:
            result = a^b;
            4'b0110:
            result = a<<1;
            4'b0111:
            result = a>>1;
            4'b1000:
            result = b>>1;
            4'b1001:
            result = b<<1;
            4'b1010:
            result = ~(a&b);
            4'b1011:
            result = ~(a|b);
            4'b1100:
            result = a==b;
            4'b1101:
            result = a!=b;
            4'b1100:
            result = ~a;
            4'b1111:
            result = ~b;
        endcase
    end
            
    
endmodule
