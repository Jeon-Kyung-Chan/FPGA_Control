`timescale 1ns / 1ps

module buzzer(
    input clk,
    input ss0,pb3,pb2,pb1,pb0,
    output sound
    );

    reg [14:0] pcnt1,pcnt2,pcnt3,pcnt4,pcnt5;
    reg sig1,sig2,sig3,sig4,sig5;

    always @(posedge clk)
        if (ss0 == 0) begin
            pcnt1 <= 0;
            sig1 <= 0; end
        else  if ( pcnt1 == 23888 ) begin    // normal op.      
             pcnt1 <= 0;
             sig1 <= ~sig1; end     
        else pcnt1 <= pcnt1 + 1;
       
    always @(posedge clk)
        if (pb3 == 0) begin
            pcnt2 <= 0;
            sig2 <= 0; end
        else  if ( pcnt2 == 21282 ) begin    // normal op.      
             pcnt2 <= 0;
             sig2 <= ~sig2; end     
        else pcnt2 <= pcnt2 + 1;
        
    always @(posedge clk)
        if (pb2 == 0) begin
            pcnt3 <= 0;
            sig3 <= 0; end
        else  if ( pcnt3 == 18960 ) begin    // normal op.      
             pcnt3 <= 0;
             sig3 <= ~sig3; end     
        else pcnt3 <= pcnt3 + 1;
        
    always @(posedge clk)
        if (pb1 == 0) begin
            pcnt4 <= 0;
            sig4 <= 0; end
        else  if ( pcnt4 == 15943 ) begin    // normal op.      
             pcnt4 <= 0;
             sig4 <= ~sig4; end     
        else pcnt4 <= pcnt4 + 1;
        
    always @(posedge clk)
        if (pb0 == 0) begin
            pcnt5 <= 0;
            sig5 <= 0; end
        else  if ( pcnt5 == 14204 ) begin    // normal op.      
             pcnt5 <= 0;
             sig5 <= ~sig5; end     
        else pcnt5 <= pcnt5 + 1;
       
    assign sound = sig1 | sig2 | sig3 | sig4 | sig5;
            
endmodule