### Example 3.4

```matlab

clc;
clear;

function [p]=ErlangB(A, N) 
    pr1 = (A^N)/factorial(N);
    
    pr2 = 0;
    for k=0:N
        pr2 = pr2 + ((A^k)/factorial(k));
    end
    p = pr1/pr2;
endfunction


pr_blocking = 0.5/100;  
c = input("Enter number of channels "); 
disp("no. of channel = ", c);

Au = 0.1;
p=0;
for A=0:0.001:100
    [p] = ErlangB(A,c);
    if(p>pr_blocking) 
        value = A-0.001;
        break;    
     end
end

disp('Maximum traffic intensity is ', value);
u = value/Au;
disp("No. of users are accomodated ", u);
```