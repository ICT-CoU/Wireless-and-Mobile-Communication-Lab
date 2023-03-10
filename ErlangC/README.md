
### Calculates maximum traffic intensity and maximum no. of users accomodated in Erlang C system for given no of Channels.

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


pr_delay = input("Enter probability of block call delay ");
y = input("Enter call rate ");
H = input("Enter the avarage call duration "); 
c = input("Enter number of channels "); 
disp("no. of channel = ", c);

Au = y*H; 
p=0;
for A=1:1:100
    [p] = ErlangC(A,c);
    if(p>pr_delay) 
        value = A;
        break;    
     end
end

disp('For block call delay probability of', pr_delay);
disp('Maximum traffic intensity is ', value);
u = value/Au;
disp("No. of users are accomodated ", u);
```

## Output

```matlab
Enter probability of block call delay 0.1
Enter call rate 3/60
Enter the avarage call duration 2 (minutes)
Enter number of channels 50

//Output
no. of channel =  50
For block call delay probability of 0.1
Maximum traffic intensity is  41
No. of users are accomodated  410
```

