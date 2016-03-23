function [ S ] = lumpsum( P,i,n )
% P= borrowed amount
% i= annual interest rate
% n= number of years 
% this takes the borrowed amount, interest rate, and number of years to
% display the lump sum to be paid when interest on a loan is compounded
% annually.

S = P.*(1+i).^n;
end

