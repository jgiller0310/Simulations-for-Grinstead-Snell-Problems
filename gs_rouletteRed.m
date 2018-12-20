% For Grinstead & Snell - Probability: Exercise 1.1.6

% This class simulates the winnings you'd earn from betting on red 1000
% times at the roulette table in your favorite casino.

winnings=0;
wins=[];
p=18/38;

for i=1:1000
   x=rand;
   if x <= p
       winnings = winnings +1;
       
   else
       winnings= winnings -1;
   end
   wins=[wins winnings];
end
fprintf('your winnings are %i\n',winnings)
fprintf('the highest you got was %i\n',max(wins))
fprintf('the lowest you went was %i',min(wins))

figure
plot(wins)
hold on
plot(zeros(1000))
hold off