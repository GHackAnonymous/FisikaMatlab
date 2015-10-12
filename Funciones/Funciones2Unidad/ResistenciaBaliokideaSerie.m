function [ Rbs ] = ResistenciaBaliokideaSerie( R )
%RESISTENCIABALIOKIDEA Summary of this function goes here
%   Detailed explanation goes here
    Rbs = 0;
    for i = 1:length(R)
        Rbs = Rbs + R(i);
    end

end

