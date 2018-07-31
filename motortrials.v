module motortrials (leftbackwards,rightbackwards, leftforward, rightforward,
							frontob,rightob,leftob,frontfl,rightfl,leftfl, Buzzer ,pump);
output reg leftbackwards;
output reg rightbackwards;
output reg leftforward;
output reg rightforward;
output reg Buzzer;
output reg pump;
input frontob,rightob,leftob,frontfl,rightfl,leftfl;


always @(*)
begin

if((frontob == 1) & (rightob == 1) & (leftob == 1) & frontfl == 1 & rightfl == 1 & leftfl == 1)
	begin
		rightforward = 0;
		leftforward = 0;
		rightbackwards = 1;
		leftbackwards = 1;
		Buzzer = 0;
		pump = 0;
	end
	
	
		
	

else
	begin
		if((frontob == 0) & (rightob == 1) & (leftob == 1) & frontfl == 1 & rightfl == 1 & leftfl == 1)
				begin
				rightforward = 1;
				leftforward = 0;
				rightbackwards = 0;
				leftbackwards = 1;
				Buzzer = 0;
				pump = 0;
				end
			else
			begin
					if((frontob == 0) & (rightob == 1) & (leftob == 0) & frontfl == 1 & rightfl == 1 & leftfl == 1)
						begin
						rightforward = 1;
						leftforward = 0;
						rightbackwards = 0;
						leftbackwards =1;
						Buzzer = 0;
                  pump = 0;
						end
						
			   	else 
					begin
						  if((frontob == 0) & (rightob == 0) & (leftob == 1) & frontfl == 1 & rightfl == 1 & leftfl == 1)
								begin
								  rightforward = 1;
								  leftforward = 0;
								  rightbackwards = 0;
								  leftbackwards =1;
								  Buzzer = 0;
                          pump = 0;
							   end
						else 
							begin
							  if((frontob == 0) & (rightob == 0) & (leftob == 0) & frontfl == 1 & rightfl == 1 & leftfl == 1)
								  begin
								  rightforward = 1;
								  leftforward = 0;
								  rightbackwards = 0;
								  leftbackwards =1;
									Buzzer = 0;
                          pump = 0;
								  end
								  else
								  begin
								    if(frontfl == 0 & rightfl == 1 & leftfl == 1)
										begin
												rightforward = 1;
												leftforward = 1;
												rightbackwards = 1;
												leftbackwards = 1;
												Buzzer = 1;
												pump = 1;
										end
										else
										begin 
													
											if(frontfl == 1 & rightfl == 0 & leftfl == 1)
												begin
														rightforward = 1;
														leftforward = 0;                
														rightbackwards = 0;
														leftbackwards = 1;
														Buzzer = 1;
														pump = 1;
												end
												
											else
											begin
												if(frontfl == 1  & rightfl == 1 & leftfl == 0)
													begin
															rightforward = 0;
															leftforward = 1;
															rightbackwards = 1;          
															leftbackwards = 0;
															Buzzer = 1;
															pump = 1;
												   end
													
													else
														begin
														    if(frontfl == 0  & rightfl == 1 & leftfl == 0)
													        begin
																	rightforward = 0;
																	leftforward = 1;
																	rightbackwards = 1;          
																	leftbackwards = 0;
																	Buzzer = 1;
																	pump = 1;
												         end
														    
															else
															begin
															  if(frontfl == 0  & rightfl == 0 & leftfl == 1)
													                begin
																	rightforward = 1;
																	leftforward = 0;
																	rightbackwards = 0;          
																	leftbackwards = 1;
																	Buzzer = 1;
																	pump = 1;
												                  end
																		
																		else
																		begin
																		if((frontob == 1) & (rightob == 1) & (leftob == 0) & frontfl == 1 & rightfl == 1 & leftfl == 1)
																			begin
																			  rightforward = 1;
																			  leftforward = 0;
																			  rightbackwards = 0;
																			  leftbackwards =1;
																			  Buzzer = 0;
																			  pump = 0;
																			end
																			else
																			begin
																			if((frontob == 1) & (rightob == 0) & (leftob == 1) & frontfl == 1 & rightfl == 1 & leftfl == 1)
																			begin
																			  rightforward = 1;
																			  leftforward = 0;
																			  rightbackwards = 0;
																			  leftbackwards =1;
																			  Buzzer = 0;
																			  pump = 0;
																			end
																			else
																			begin
																			if((frontob == 1) & (rightob == 0) & (leftob == 0) & frontfl == 1 & rightfl == 1 & leftfl == 1)
																			begin
																			  rightforward = 1;
																			  leftforward = 0;
																			  rightbackwards = 0;
																			  leftbackwards =1;
																			  Buzzer = 0;
																			  pump = 0;
																			end
																			end
																			
																			end
																		
																		end
															end
															 
														
														end
												
													
										end
									end
								end
							end
						end
				   end
	         end			
end

	
endmodule