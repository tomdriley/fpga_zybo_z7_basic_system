`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 06/16/2024 08:58:58 PM
//////////////////////////////////////////////////////////////////////////////////

module apb_slave #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32,
    parameter REG_COUNT = 4
) (
    input s_apb_aclk,
    input s_apb_aresetn,
    input [ADDR_WIDTH-1:0]s_apb_paddr,
    input s_apb_penable,
    input s_apb_psel,
    input s_apb_pwrite,
    input [DATA_WIDTH-1:0] s_apb_pwdata,
    output [DATA_WIDTH-1:0] s_apb_prdata,
    output s_apb_pready,
    output s_apb_pslverr
);
    assign s_apb_prdata = {DATA_WIDTH{1'b0}};
    assign s_apb_pready = 1'b0;
    assign s_apb_pslverr = 1'b0;
endmodule
