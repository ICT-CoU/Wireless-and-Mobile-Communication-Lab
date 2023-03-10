// Calculates maximum traffic intensity and maximum no. of users accomodated in Erlang B system for given no of Channels.
clc;
clear;

function [p]=ErlangB(A, N) //Calculate blocking probability of Erlang B system.
    pr1 = (A^N)/factorial(N);
    
    pr2 = 0;
    for k=0:N
        pr2 = pr2 + ((A^k)/factorial(k));
    end
    p = pr1/pr2;
endfunction


pr_blocking = input("Enter probability of blocking "); // Probability of blocking for particular system.
pr_delay = input("Enter probability of block call delay "); //Probabily of blocked call delayed for particular system.
y = input("Enter call rate "); //Average number of calls per minute
H = input("Enter the avarage call duration "); //Average call duration in minute
c = input("Enter number of channels "); //Number of channel
disp("no. of channel = ", c);

Au = y*H; //Traffic intensity per user
p=0;
for A=1:1:100
    [p] = ErlangB(A,c);
    if(p>pr_blocking) //Find maximum traffic intensity for entered blocking prabability
        value = A;
        break;    
     end
end

disp('For blocking probability of', pr_blocking);
disp('Maximum traffic intensity is ', value);
u = value/Au;
disp("No. of users are accomodated ", u);
break;
