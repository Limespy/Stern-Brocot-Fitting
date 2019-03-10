clc
clearvars
close all

SB0=[1;1];
SB0=reshape(SB0,2,1);
% M=[1,1;0;1]
N=20;
t=zeros(length(N),1);
t2=t;
for j=1:length(N)
   n=N(j);
   tic
   SB=[SB0;zeros(n-2,1)];
   for i=1:(n/2-1)
      SB(2*i+1)=SB(i)+SB(i+1);
      SB(i*2+2)=SB(i+1);
   end
   t(j)=toc;
end
figure(1)
plot(log(N),log(t),'o')
grid on
xlabel('log N')
ylabel('log t')
SBF=SB(1:end-1)./SB(2:end);

