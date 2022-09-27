%**Log Distance Path Loss Model**

%log_dist_pl(fc,d0,n,d)  

%where
% fc : carrier frequency 
% d0 : reference distance
% n  : path loss exponent depends on the environment 
% d  : distance between the transmitter and the receiver 

d=[1:2:31].^2;

PL1=log_dist_pl(1800*10^6,100,2,d); %n=2
PL2=log_dist_pl(1800*10^6,100,3,d); %n=3


semilogx(d,PL1),grid on,title('Log Distance Path Loss Model'),xlabel('distance[m]'),ylabel('path loss [dB]')
hold on
semilogx(d,PL2),
legend('n=2','n=3')
hold off

function PL=log_dist_pl(fc,d0,n,d)
lamda=3*10^8/fc; 
PL=-20*log10(lamda/(4*pi*d0))+10*n*log10(d/d0);
end



%  *************************************
%  * DONE BY: IBRAHIM MOAKKIT          *
%  * EMAIL: ibrahimmoakkit@outlook.com *
%  *************************************
