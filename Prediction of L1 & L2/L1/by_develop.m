function [new_a]=by_develop(a,b,beta)
new_a=zeros(44,21);
for i=1:44
    for j=1:21
        new_a(i,j)=(1+beta*b(i))*a(i,j)+a(i,j)*b(i)*(1-beta);
    end
end
end