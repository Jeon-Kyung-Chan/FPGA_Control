`timescale 1ns / 1ps

module cnt4v2(
    input rst, clk,
    output reg [3:0] qout,
    output wire [6:0] segd
    );
        
    always @(negedge rst or posedge clk)  //posedge: high일 때  
        if(rst == 0) qout <= 0;
        else qout <= qout+1;   

    assign segd =   (qout ==4'h0)? (7'b100_0000):
                    (qout ==4'h1)? (7'b111_1001):
                    (qout ==4'h2)? (7'b010_0100):
                    (qout ==4'h3)? (7'b011_0000):
                    (qout ==4'h4)? (7'b001_1001):
                    (qout ==4'h5)? (7'b001_0010):
                    (qout ==4'h6)? (7'b000_0010):
                    (qout ==4'h7)? (7'b101_1000):
                    (qout ==4'h8)? (7'b000_0000):
                    (qout ==4'h9)? (7'b001_0000):
                    (qout ==4'ha)? (7'b010_0000):
                    (qout ==4'hb)? (7'b000_0011):
                    (qout ==4'hc)? (7'b010_0111):
                    (qout ==4'hd)? (7'b010_0001):
                    (qout ==4'he)? (7'b000_0110):
                    (qout ==4'hf)? (7'b000_1110):
                                   (7'b111_1111);                  
                                 
endmodule