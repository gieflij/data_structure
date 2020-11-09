`timescale 1ns / 1ps

module tb_bcd_counter();

reg    [4:0]    i;

//bcd counter 입력
reg             clk;
reg             rst_n;
//bcd counter 출력
wire    [3:0]   q;

//100MHz clock
parameter   PERI0D_100MHZ   =   10; //10ns
always begin
    #(PERI0D_100MHZ/2);
    clk <= ~clk;
end

//bcd counter
bcd_counter bcd_counter_u0 (    .clk(clk),
                                .rst_n(rst_n),

                                .q(q)   );
                                
//testbench
initial begin
    i   =   5'd0;
    clk =   1'b0;
    rst_n   = 1'b0;
    #(PERI0D_100MHZ*2);
    rst_n   =   1'b1;
    
    for(i = 5'd0; i < 5'd30; i = i + 5'd1) begin
        #PERI0D_100MHZ;
    end
    
    $stop;
end

endmodule
