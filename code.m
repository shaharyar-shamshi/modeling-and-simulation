% probability equation used for calculatng cancer
% p=1-(1-(1-(1-u)^2)^d)^(N*m);
% Parameter description :-
% muh denotes mutation_rate
% N denotes stem_cell_per_crypt
% m denote no_of_crypts
% d denotes division since birth
% k denote rate_limiting_mutation
% +++++++++++++++++++++++++++++++++++++ %
for j=1:2
   muh=3.00E-06;
   N=input('enter crypt_stem cell per crypt');
   m=1.50E+07;
   k=input('enter value of limiting_rate mutation');
   d=[0 456.5 912.5 1368.5 1825 2281.25 2737.5 3193.75 3650 4106.25 4562.5 5018.75 5475 5931.25 6387.5 6843.75 7300 7756.25 8212.5 ];
   prob=zeros(1,19);
   t=k;
   l=N;

for i=1:19
   prob(i)=1-(1-(1-(1-muh)^d(i))^t)^(l*m);

end
% person's age array with increment of five %
   age=0:5:90;
if(j==1)
   plot(age,prob,'r');
   legend('N1=8');
   xlabel('Person age');
   ylabel('Rates per 100,000 individual');
   grid on
   hold on
end
if(j==2)
    plot(age,prob,'g--');
    grid on
end
   
end 
hold off
