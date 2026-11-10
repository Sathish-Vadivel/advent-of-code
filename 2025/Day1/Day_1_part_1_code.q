inputF:read0 `:Day_1_part_1_input.txt;
start:50;
finalValCal:0N;
i:0;
list:0+til 100;
do[4654;input:inputF[i];start:$[(first input) = "L"; start - "J"$(1_ input); start+"J"$(1_ input)];if[not start in list;start:start mod 100];finalValCal:finalValCal,start;i:i+1];
count finalValCal where finalValCal = 0
