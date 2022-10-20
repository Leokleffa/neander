module DFFRSE (input d,  
               input clk,  
               input reset, 
				   input set,
				   input enable, 
               output reg q);  
	
    
    always @ (posedge clk or posedge reset or posedge set)  
     begin
		if(reset)
          q <= 0;
		else if(set)
			 q <= 1;
		else if (clk)
		begin
		if (enable)
          q <= d; 
	   end
	end
	  
endmodule  