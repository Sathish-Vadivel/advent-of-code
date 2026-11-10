q)input:read0 `:q2input.txt
q)input
"Game 1: 2 red, 2 green; 1 red, 1 green, 2 blue; 3 blue, 3 red, 3 green; 1 blue, 3 green, 7 red; 5 red, 3 green, 1 blue"
"Game 2: 5 green, 4 red, 7 blue; 7 red, 4 green, 4 blue; 8 green, 11 blue, 4 red; 2 red, 18 blue, 3 green; 7 red, 15 blue"
"Game 3: 2 green, 4 blue; 2 red, 2 green; 6 red, 1 green; 2 red, 1 green; 2 green; 5 blue, 5 red"
"Game 4: 10 red, 7 green, 10 blue; 8 red, 2 green; 9 green, 6 red, 5 blue; 8 green, 2 blue, 4 red; 5 green, 9 blue; 10 red, 1 green, 9 blue"
"Game 5: 10 blue, 7 green, 2 red; 2 blue, 4 red; 2 green, 9 blue, 8 red"
...

q)conditionFunction:{ $[x like "*red";bool,:("I"$(x inter .Q.n))<=12; 
		   				x like "*green";bool,:("I"$(x inter .Q.n))<=13; 
		  				x like "*blue"; bool,:("I"$(x inter .Q.n))<=14]
		  			 }


q)mainFunction:{[input]
					{fl:first ":" vs x; 
					 ll:last ":" vs x; 
					 spl:trim "," vs "," sv ";" vs ll; 
					 fe:last conditionFunction each spl; 
					 delete bool from `.; 
					 chk:if[all fe=1b; gr,:"I"$fl inter .Q.n]
					 } each input; 
					 :sum gr
				}

q)mainFunction input