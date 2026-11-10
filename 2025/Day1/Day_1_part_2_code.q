inputF:read0 `:Day_1_input.txt;
start:50;
i:0;
list:0+til 100;
do[count inputF;input:inputF[i];distance:"J"$1_ input; if[first input="R"; zeroCount+: (start+distance) div 100];if[first input="L"; zeroCount+: $[start=0; distance div 100;(distance+100-start) div 100]]; start:$[(first input)="L"; (start-distance) mod 100; (start+distance) mod 100];i:i+1];
zeroCount