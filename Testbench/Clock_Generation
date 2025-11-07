// Code your testbench here
// or browse Examples
//Module Declaration
`include "run_test.sv"

logic [3:0] din;
logic [3:0] dout;
logic rst;
logic clk;

module dff_tb_top;


  // Instantiation of DFF
  dff dff_inst (	
    .clk(clk),
    .rst(rst),
    .din(din),
    .dout(dout)
  );

  // Initialization
  initial begin
    din = 1'b0;
    clk = 1'b1;
    rst = 1'b0;
  end
  
  run_test run_h =new();
  
  //calling test
  initial begin
    run_h.run();     
  end
  
  // Monitoring the signals 
  initial begin  
    $monitor("Monitored value at time=%0t, clk=%0b, rst=%0b, din=%0d, dout=%0d", $time, clk, rst, din, dout);
   // #80 $finish;
  end

  // Dumping signals 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end

endmodule
