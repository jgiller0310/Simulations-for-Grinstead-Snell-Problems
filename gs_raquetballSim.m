function [win_freq]=gs_raquetballSim(n)
% For Grinstead & Snell - Probability: Exercise 1.1.4

% Simulates 1000 games of raquetball where you have a 60% chance of winning
% a volley when yoiu serve, and a 50% chance when you receive. Calculates
% your win frequency, taken to approach the probability that you will win a
% game against this particular opponent in the limit as the number of games
% goes to infinity.

wins=0;

for i=1:n
    us=0;
    them=0;
    Server=1;
    while us < 21
        if them == 21
            %'opponent wins'
            break
        elseif Server == 1
            x=rand;
            if x <= .6
                us = us+1;
                x=rand;
                if us == 21
                    %'I win'
                    wins=wins+1;
                    break
                end
                
            else
                Server=0;
                
            end
            
        end
        
        if Server == 0
            y=rand;
            if y <= .5
                them = them+1;
                y=rand;
                
            else
                Server=1;
            end
        end
    end
    win_freq=wins/n;
end

end