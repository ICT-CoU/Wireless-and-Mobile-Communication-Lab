
### Example 3.2

```matlab

clc;
clear;

n = input("path loss exponent, n = ");
minSn = input("Minimum required signal-to-interference ratio(dB) : ");

x=1, y=1;
while(1)
    N = x*x + x*y + y*y;
    disp("consider a " + string(N) + "-cell reuse pattern");
    Q = sqrt(3*N);
    disp("Frequency reuse factor " + string(Q));
    sn = (1/6)*(Q)^n;
    snDB = 10*log10(sn);
    //disp(snDB);
    if(snDB > minSn)
        disp("Greater than the minimum required S/I, N=" + string(N) +" can be used");
        break;
    end
    disp("Less than the minimum required S/I");
    if(x>y)
        y = y+1;
    else
        x = x+1;
    end  
     
end

```
