function [new_a]=by_travel(a,p)
new_a=zeros(44,21);
for i=1:44
    for j=1:21
        p_sum=0;
        for k=1:44
            p_sum=p_sum+p(i,k);
        end
        new_a(i,j)=(1-p_sum)*a(i,j);
        for k=1:44
            new_a(i,j)=new_a(i,j)+p(k,i)*a(k,j);
        end
    end
end
end