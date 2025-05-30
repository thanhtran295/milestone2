module imem(
    input                   i_clk, //for uart boost
    input                   i_reset, //for uart
    
    input           [31:0]  i_addr, 
    output logic    [31:0]  o_rdata   
);
    memory imem_inst (
        .i_clk         (i_clk), 
        .i_reset       (i_reset), 
        .i_addr        ({2'b00,i_addr[31:2]}),
        .i_wdata       ('0),
        .i_bmask       ('0), 
        .i_wren        (1'b0),
        .o_rdata       (o_rdata)
    );
    
    

endmodule

