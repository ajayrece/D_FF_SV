class compare;
  task compare_out();   
    forever @(posedge clk or negedge clk) begin
      if(rst) begin #0.01
        if(din == dout) begin
          $display("Time=%0t: din = %0d matches with dout = %0d so testcase Passed{rst=%0b}.",$time,din,dout,rst);
        end
        else begin
          $error("Time=%0t: din = %0d doesn't matches with dout = %0d so testcase is Failed{rst=%0b}",$time,din,dout,rst);
        end
      end
      else begin #0.01
        if(dout == 0) begin
          $display("Time=%0t: din = %0d doesn't matches with dout = %0d so testcase Passed{rst=%0b}.",$time,din,dout,rst);
        end
        else begin
          $error("Time=%0t: din = %0d matches with dout = %0d so testcase is Failed",$time,din,dout);
        end
      end
    end
  endtask
endclass
