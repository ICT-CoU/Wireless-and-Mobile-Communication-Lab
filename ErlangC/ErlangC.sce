// Calculates maximum traffic intensity and maximum no. of users accomodated in Erlang C system for given no of Channels.
clc;
clear;

function [p]=ErlangC(A, N) //Calculate probabibility of blocked call delayed in Erlang C System.
    temp = 0;
    for k=0:N-1
        temp = temp + A^k/factorial(k);
    end
    C = A^N + (factorial(N)*(1-(A/N))*temp);
    p = A^N/C;
endfunction


pr_delay = input("Enter probability of block call delay "); //Probabily of blocked call delayed for particular system.
y = input("Enter call rate "); //Average number of calls per minute
H = input("Enter the avarage call duration "); //Average call duration in minute
c = input("Enter number of channels "); //Number of channel
disp("no. of channel = ", c);

Au = y*H; //Traffic intensity per user
p=0;
for A=1:1:100
    [p] = ErlangC(A,c);
    if(p>pr_delay) //Find maximum traffic intensity for entered per delay
        value = A;
        break;    
     end
end

disp('For block call delay probability of', pr_delay);
disp('Maximum traffic intensity is ', value);
u = value/Au;
disp("No. of users are accomodated ", u);

