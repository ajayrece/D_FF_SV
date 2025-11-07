`include "clock_generation.sv"
`include "reset_generation.sv"
`include "stimulus.sv"
`include "reset_test.sv"
`include "compare.sv"

  clock_generation clk_h = new();
  reset_generation rst_h = new();
  stimulus stimulus_h = new();
  reset_test rst_test_h = new();
  compare compare_h = new();
class run_test;
  //Run Task
  task run();
    fork
      clk_h.clk_gen();
      rst_h.rst_gen();
      rst_test_h.rst_test();
      stimulus_h.stimulus();
      compare_h.compare_out();
    join
  endtask
endclass
