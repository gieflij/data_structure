module vending_machine(
input   wire    rst_n,  //state reset
input   wire    clk,
input   wire    coin,   //coin == 1'b1 ? 동전입력 O:X
input   wire    selection,  //selection ==  1'b1 ? 음료선택 O:X
input   wire    refund, //refund == 1'b1 ? 환불요청 O:X

output  reg     beverage //beverage == 1'b1 ? 음료출력 O:X
);

parameter   IDLE    =   2'b00,   //initial state
             SEL     =   2'b01,   //구매 state
             GET     =   2'b10,   //음료출력 state
             
             COIN       =   3'b001,  //input condition
             SELECTION  =   3'b010, //input condition
             REFUND     =   3'b100; //input condition
             
reg     [1:0]   currentstate, nextstate;
wire    [2:0]   control;

assign control = {refund, selection, coin};

always @(currentstate or control)
begin
    case(currentstate)
        IDLE    :   begin
                        if(control == COIN)
                            nextstate   =   SEL;
                        else
                            nextstate   =   IDLE;
                        beverage = 1'b0; //음료출력 X
                    end
                    
        //SEL state에서의 nextstate, beverage output
        SEL     :   begin
                        if(control == SELECTION)
                            nextstate   =   GET;
                        else if(control == REFUND)
                            nextstate   =   IDLE;
                        else
                            nextstate   =   SEL; //nothing choose
                        beverage = 1'b0; //음료출력 X
                     end
        //
        GET     :   begin
                        nextstate   =   IDLE;
                        beverage    =   1'b1;
                    end
        default :   begin
                        nextstate   =   IDLE;
                        beverage    =   1'b0;
                    end
    endcase
end

always @(posedge clk or negedge rst_n)
begin
    if(rst_n == 1'b0)
        currentstate <= IDLE;
    //if 만족 못하면 nextstate를 currenstate에 저장
    else
        currentstate <= nextstate;
    //
end

endmodule
