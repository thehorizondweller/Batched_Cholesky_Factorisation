%Name: Kshitij Anand
%Institute Roll: 18AE30008
%Subject: Symmetric Postitive Definite Matrix Generator for HP3 project

clear all;
clc;

%Enter Dimension of the metrices to be generated
dim = 96;

%Number of Matrices per file
n = 100;

fname = sprintf('Size_%d_sample_input.txt',dim);
fileID = fopen(fname, 'w');

for i=1:100
    A = zeros(dim);
    %Generate Symmetric Positive Definite Matrix
    A = randi(dim,dim);
    A = 0.5*(A+A');
    A = A + dim*eye(dim);
    %Matrix Generated
    
    %Write the Matrix to the Sample Input file
    for m = 1:dim
        for n = 1:dim
            entry = A(m,n);
            fprintf(fileID, '%4.2f', entry);
            if n ~= dim
                fprintf(fileID, ' ');
            else
                fprintf(fileID, '\n');
            end
        end
    end
end

fclose(fileID);
    
