//The file name and the module name must be the same.

module counter #(
    parameter WIDTH = 8
) (
    // interface signals
    input logic clk,
    input logic rst,
    input logic en,
    input logic incr,
    output logic [WIDTH-1:0] count
);

always_ff @ (posedge clk, posedge rst)
    if (rst) count <= {WIDTH{1'b0}};
    else     count <= count + {incr, en};
endmodule
