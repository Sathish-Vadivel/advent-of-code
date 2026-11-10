q)input:read0 `:q2_part1_input.txt
q)input
"Game 1: 2 red, 2 green; 1 red, 1 green, 2 blue; 3 blue, 3 red, 3 green; 1 blue, 3 green, 7 red; 5 red, 3 green, 1 blue"
"Game 2: 5 green, 4 red, 7 blue; 7 red, 4 green, 4 blue; 8 green, 11 blue, 4 red; 2 red, 18 blue, 3 green; 7 red, 15 blue"
"Game 3: 2 green, 4 blue; 2 red, 2 green; 6 red, 1 green; 2 red, 1 green; 2 green; 5 blue, 5 red"
"Game 4: 10 red, 7 green, 10 blue; 8 red, 2 green; 9 green, 6 red, 5 blue; 8 green, 2 blue, 4 red; 5 green, 9 blue; 10 red, 1 green, 9 blue"
"Game 5: 10 blue, 7 green, 2 red; 2 blue, 4 red; 2 green, 9 blue, 8 red"
...


q)func:{[input]
			{secString:last ":" vs x; 
			 sets:trim "," vs "," sv ";" vs secString; 
			 minCube:(max "I"$((sets where sets like "*red") inter \:.Q.n))*(max "I"$((sets where sets like "*blue") inter \:.Q.n))* (max "I"$((sets where sets like "*green") inter \:.Q.n)); 			 
			 sumAllCube,:minCube}each input;
			 :sum sumAllCube
			 }
			 
q)
q)func input