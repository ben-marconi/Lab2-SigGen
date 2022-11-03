module sinegen #(
    parameter A_WIDTH = 8,
              D_WIDTH = 8
)(
    input logic clk,
    input logic rst, 
    input logic en,
    input logic [D_WIDTH-1:0] incr,
    output logic [D_WIDTH-1:0] data1,
    output logic [D_WIDTH-1:0] data2
);
    logic [A_WIDTH-1:0] addr;

counter addrCounter (
    .clk (clk),
    .rst (rst),
    .en (en),
    .incr (incr),
    .count (addr),
);

rom sineRom (
    .clk (clk),
    .addr1 (addr),
    .addr2 (addr + incr),
    .data1 (data1),
    .data2 (data2)
);

endmodule
