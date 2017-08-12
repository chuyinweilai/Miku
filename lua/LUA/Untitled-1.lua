-- 以Intervalo值为间隔，循环执行dato1，dato2.

function AutoTags(Intervalo,Dato1,Dato2)            
	local RESULTADO=""     
	local SUERTE = 0     
	local CONTADOR = 0     
	local ARREGLO = 0                           
	local count = math.ceil(400/Intervalo)
	-- local count = math.ceil(line.duration/Intervalo)
	ARREGLO = {Dato1,Dato2}
	for i = 1, count do               
		CONTADOR = i    	    	    		
		if Dato1 and Dato2 then     					
			if  CONTADOR%2 ==0 then    								
				SUERTE = ARREGLO[1]    					
			else    								
				SUERTE = ARREGLO[2]    					
			end	    		
		end     				    	
		RESULTADO = RESULTADO .."\\t(" ..(i-1)*Intervalo.. "," ..i*Intervalo.. ",\\" ..SUERTE..")".."" 
	end         		     
	return RESULTADO	  	    	               
  end

print(AutoTags(40,'frz-1','frz1'))
-- 生成： 在旋转1度到-1度之间循环
-- \t(0,40,\frz1)\t(40,80,\frz-1)\t(80,120,\frz1)\t(120,160,\frz-1)\t(160,200,\frz1)\t(200,240,\frz-1)\t(240,280,\frz1)\t(280,320,\frz-1)\t(320,360,\frz1)\t(360,400,\frz-1)	