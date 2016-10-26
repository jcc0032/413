module ALU1(In1,In2, Control, theResult);
   input [7:0] In1, In2;
	input[3:0] Control;
	output [7:0] theResult;
	
reg [7:0] temp_theResult;
	
	always @(Control, In1, In2)
begin
	case(Control)
	4'b0000: temp_theResult=In1;
	4'b0001: temp_theResult=In2;
	4'b0010: temp_theResult=In1 + In2;
	4'b0011: temp_theResult=In1 - In2;
	4'b0100: temp_theResult=In1 & In2;
	4'b0101: temp_theResult=In1 | In2;
	4'b0110: temp_theResult=In1 << 1;
	4'b0111: temp_theResult=In1 >> 1;
	endcase
end

assign theResult = temp_theResult;

endmodule
