### Example 3.7 

```matlab

clc;
clear;

function [p]=ErlangC(A, N) 
    temp = 0;
    for k=0:N-1
        temp = temp + A^k/factorial(k);
    end
    C = A^N + (factorial(N)*(1-(A/N))*temp);
    p = A^N/C;
endfunction

// Cell Radius 
R = 1.387;
// Area covered per cell 
Area = 2.598 * R*R;
//Number of cell per cluster 
NC = 4
// Total number of channel 
TN = 60
// Number of channel per cell
c = TN/NC;

pr_delay = 5/100;

disp("no. of channel = ", c);

Au = 0.029; 
p=0;
for A=0:0.001:100
    [p] = ErlangC(A,c);
    if(p>pr_delay) 
        value = A;
        break;    
     end
end

disp('Maximum traffic intensity is ' + string(value));
u = round(value/Au);
disp("No. of users are accomodated " + string(u));
pu = round(u/Area);
disp("No of users per kilometer " + string(pu));

```