module led_01(
    clk,
    rst_n,
    led

);

input clk;
input rst_n;
output led;

reg [28:0] cnt0;
reg [28:0] x;
wire add_cnt0;
wire end_cnt0;
always @(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        cnt0 <= 0;
    end
    else if(add_cnt0)begin
        if(end_cnt0)
            cnt0 <= 0;
        else
            cnt0 <= cnt0 + 1;
    end
end

assign add_cnt0 = 1;       
assign end_cnt0 = add_cnt0 && cnt0==x - 1 ;  


reg [3:0] cnt1;
wire add_cnt1;
wire end_cnt1;
always @(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        cnt1 <= 0;
    end
    else if(add_cnt1)begin
        if(end_cnt1)
            cnt1 <= 0;
        else
            cnt1 <= cnt1 + 1;
    end
end

assign add_cnt1 =end_cnt0 ;       
assign end_cnt1 = add_cnt1 && cnt1==9-1 ;   

reg led;

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        led<=0;
    end
    else if(cnt0 == 50000000-1)begin
        led<=0;
    end
    else if(end_cnt0)begin
        led<=1;
    end
end

always  @(*)begin
    if(cnt1==0)begin
        x = 2*50000000;
    end
    else if(cnt1==1)begin
        x = 3*50000000;
    end
    else if(cnt1==2) begin
        x = 4*50000000;
    end
    else if(cnt1==3) begin
        x = 5*50000000;
    end
    else if(cnt1==4) begin
        x = 6*50000000;
    end
    else if(cnt1==5) begin
        x = 7*50000000;
    end
    else if(cnt1==6) begin
        x = 8*50000000;
    end
    else if(cnt1==7) begin
        x = 9*50000000;
    end
    else begin
        x = 10*50000000;
    end
end


endmodule
