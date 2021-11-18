`timescale 1ns / 1ps

module clock(
    input rst, clk, 
    output reg [3:0] digit,
    output reg [6:0] segd
    );

    reg [25:0]  clk_cnt;
    reg clk_1hz;

    reg [5:0] sec_cnt;
    reg [5:0] min_cnt;
    
    wire [3:0] sec1_val;
    wire [3:0] sec10_val;
    wire [3:0] min1_val;
    wire [3:0] min10_val;
    
    always @(negedge rst or posedge clk)
        if (rst == 0) begin
            clk_cnt <= 0;
            clk_1hz <= 0; 
        end
        else  if ( clk_cnt == 62499999 ) begin    // normal op.      
             clk_cnt <= 0;
             clk_1hz <= ~clk_1hz;
        end     
        else clk_cnt <= clk_cnt + 1;
        
    always @(negedge rst or posedge clk_cnt[17])
        if (rst == 0) digit <= 1; 
        else digit <= {digit[2:0], digit[3]};
      
     always @(negedge rst or posedge clk_1hz) 
        if (rst == 0) begin 
            sec_cnt <= 0; min_cnt <= 0; end
        else if ( (sec_cnt == 59) && (min_cnt == 59)) begin
            sec_cnt <= 0; min_cnt <= 0; end
        else if ( sec_cnt == 59) begin
            sec_cnt <= 0; min_cnt <= min_cnt +1 ; end
        else sec_cnt = sec_cnt + 1;
       
     assign  sec1_val   =  sec_cnt % 10;
     assign  sec10_val  =  sec_cnt / 10;       
    
     assign  min1_val   =  min_cnt % 10;
     assign  min10_val  =  min_cnt / 10;
   
     always @(digit) 
         case(digit)  
               4'b0001 :
                 case (sec1_val) 
                     4'h0 :  segd <= 7'b100_0000 ;
                     4'h1 :  segd <= 7'b111_1001 ;
                     4'h2 :  segd <= 7'b010_0100 ;
                     4'h3 :  segd <= 7'b011_0000 ;
                     4'h4 :  segd <= 7'b001_1001 ;
                     4'h5 :  segd <= 7'b001_0010 ;
                     4'h6 :  segd <= 7'b000_0010 ;
                     4'h7 :  segd <= 7'b101_1000 ;
                     4'h8 :  segd <= 7'b000_0000 ;
                     4'h9 :  segd <= 7'b001_0000 ;
                     default :  segd <= 7'b111_1111 ;
                 endcase
               4'b0010 :
                 case (sec10_val) 
                     4'h0 :  segd <= 7'b100_0000 ;
                     4'h1 :  segd <= 7'b111_1001 ;
                     4'h2 :  segd <= 7'b010_0100 ;
                     4'h3 :  segd <= 7'b011_0000 ;
                     4'h4 :  segd <= 7'b001_1001 ;
                     4'h5 :  segd <= 7'b001_0010 ;
                     4'h6 :  segd <= 7'b000_0010 ;
                     4'h7 :  segd <= 7'b101_1000 ;
                     4'h8 :  segd <= 7'b000_0000 ;
                     4'h9 :  segd <= 7'b001_0000 ;
                     default :  segd <= 7'b111_1111 ;
                 endcase
                 4'b0100 :
                 case (min1_val) 
                     4'h0 :  segd <= 7'b100_0000 ;
                     4'h1 :  segd <= 7'b111_1001 ;
                     4'h2 :  segd <= 7'b010_0100 ;
                     4'h3 :  segd <= 7'b011_0000 ;
                     4'h4 :  segd <= 7'b001_1001 ;
                     4'h5 :  segd <= 7'b001_0010 ;
                     4'h6 :  segd <= 7'b000_0010 ;
                     4'h7 :  segd <= 7'b101_1000 ;
                     4'h8 :  segd <= 7'b000_0000 ;
                     4'h9 :  segd <= 7'b001_0000 ;
                     default :  segd <= 7'b111_1111 ;
                 endcase
                 4'b1000 :
                 case (min10_val) 
                     4'h0 :  segd <= 7'b100_0000 ;
                     4'h1 :  segd <= 7'b111_1001 ;
                     4'h2 :  segd <= 7'b010_0100 ;
                     4'h3 :  segd <= 7'b011_0000 ;
                     4'h4 :  segd <= 7'b001_1001 ;
                     4'h5 :  segd <= 7'b001_0010 ;
                     4'h6 :  segd <= 7'b000_0010 ;
                     4'h7 :  segd <= 7'b101_1000 ;
                     4'h8 :  segd <= 7'b000_0000 ;
                     4'h9 :  segd <= 7'b001_0000 ;
                     default :  segd <= 7'b111_1111 ;
                 endcase
         endcase        
                        
endmodule