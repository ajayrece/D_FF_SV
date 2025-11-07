class stimulus;
  task stimulus();
  $display("Stimulus Started");

    repeat(1500) @(posedge clk or negedge clk) begin
      din = $urandom_range(0,15);
    end
    $finish;

  endtask
endclass
