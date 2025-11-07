class clock_generation;
  task clk_gen();

    $display("Time %0t:Clock Generation Starts",$time);
    forever #5 clk=~clk;
    $display("Time %0t: Clock Generation Stops", $time);
  endtask
endclass
