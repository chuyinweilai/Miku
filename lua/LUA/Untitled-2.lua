function fscxy(valorx1, valory1,valorx2, valory2,Aleatorio)   	
	
	if not valory1 and not valorx2 and not valory2 then  			
		Uno = "\\fscx" ..math.floor(valorx1).. "\\fscy" ..math.floor(valorx1)..""  			
		return Uno; 		
	end 	

	if not  valorx2 and not valory2 then  			
		Dos = "\\fscx" ..math.floor(valorx1).. "\\fscy" ..math.floor(valory1)..""  			
		return Dos; 		
	end 

	if not valory2 then  			
		valorxalter = math.random(valorx1,valorx2);   			
		tres = "\\fscx" ..math.floor(valorxalter).. "\\fscy" ..math.floor(valory1)..""  			
		return tres; 		
	end 	

	if valorx2 and valory2 then 			 			
		if Aleatorio then  				
			valorx=math.random(valorx1,valorx2) 				
			valory=math.random(valory1,valory2) 			
		else			 					
			VecX = {valorx1,valorx2} 					--VecX = {1: valorx1, 2: valorx2}
			VecY = {valory1,valory2}	 					
			function DesIgualar() 						
				valorx = VecX[math.random(1,2)];   		--从第一第二个数组中随机抽选一个				
				valory = VecY[math.random(1,2)];   						
			while valorx==valory do 							
				DesIgualar() 						--若相等则重新抽选，否则输出
			end 					
		end 					 					
		DesIgualar() 			
	end 	

	cuatro = "\\fscx" ..math.floor(valorx).. "\\fscy" ..math.floor(valory)..""  			
	return cuatro; 		
	end	   
end

print(fscxy(70,70,70,90))
-- \fscx70\fscy70	