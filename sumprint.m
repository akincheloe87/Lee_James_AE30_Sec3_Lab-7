function [ rowsum_and_colsum ] = sumprint( mat )
%SUMPRINT adds up the rows and columns with user input of a matrix.


mat = input ('Please input a matrix in the form [x y z; a b c]:\n')

[r,c] = size (mat);

colsum = 0;
for ii = 1:r
    rowsum = 0;
    for jj = 1:c
        rowsum = rowsum + mat(:,jj);
    end
        colsum = colsum + mat(ii,:);
end
disp('The sum of the rows is:')
disp(rowsum)
disp('The sum of the columns is:')
disp(colsum)
end 
