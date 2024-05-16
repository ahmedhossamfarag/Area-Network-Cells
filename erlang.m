function [A, B] = erlang()
B = [0.01 0.05 0.1 0.5 1.0 2 5 10 15 20 30 40];
filename = 'erlang_table.dat';
fileID = fopen(filename);
C = textscan(fileID,'%f');
fclose(fileID);
A = reshape(C{1}, length(B), [])';
end