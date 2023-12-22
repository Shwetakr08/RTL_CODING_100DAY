module one_hot(bin_i,one_hot_o);
parameter BIN_W=5;
parameter ONE_HOT_W=32;
input   [BIN_W-1:0]     bin_i;
output  wire [ONE_HOT_W-1:0] one_hot_o;

  assign one_hot_o = 1'b1<<bin_i;

endmodule