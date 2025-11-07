class reset_generation;
  task rst_gen;
  
    $display("Time %0t: Reset Generation Started",$time);
    #10 rst = 1'b1;
 
  endtask
endclass
