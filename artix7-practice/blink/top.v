module top(
    input wire clk,
    output wire led
);

reg [26:0] counter = 0;
reg led_state = 0;

always @(posedge clk) begin
    if (counter == 62_500_000 - 1) begin
        counter <= 0;
        led_state <= ~led_state;
    end else begin
        counter <= counter + 1;
    end
end

assign led = led_state;

endmodule
