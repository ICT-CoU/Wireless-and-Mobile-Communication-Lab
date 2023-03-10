### Calculates maximum traffic intensity and maximum no. of users accomodated in Erlang B system for given no of Channels.

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


pr_blocking = input("Enter probability of blocking "); 
pr_delay = input("Enter probability of block call delay "); 
y = input("Enter call rate "); 
H = input("Enter the avarage call duration "); 
c = input("Enter number of channels "); 
disp("no. of channel = ", c);

Au = y*H; 
p=0;
for A=1:1:100
    [p] = ErlangB(A,c);
    if(p>pr_blocking)
        value = A;
        break;    
     end
end

disp('For blocking probability of', pr_blocking);
disp('Maximum traffic intensity is ', value);
u = value/Au;
disp("No. of users are accomodated ", u);
break;
```
