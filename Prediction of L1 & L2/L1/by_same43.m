function [new_a]=by_same43(a,p,b,gama)
new_a=zeros(43,21);
L=zeros(43,21);
for i=1:43
    [sorted_array,sorted_xuhao]=my_sort(a(i,:));
    nowrate=0;
    sumren=sum(a(i,:));
    q=0;
    for j=1:21
        nowrate=nowrate+sorted_array(j)/sumren;
        q=j;
        if(nowrate>0.7) 
            break;
        end
    end
    for j=1:21
        if(ismember(j,sorted_xuhao(1:q)))
            L(i,j)=b(i,j)*a(i,j)+b(i,j)*sum(a(i,:))*gama*a(i,j)/sum(sorted_array(1:q));
            new_a(i,j)=a(i,j)-sum(p(i,:))*a(i,j)+ L(i,j);
            for s=1:43
                new_a(i,j)=new_a(i,j)+p(s,i)*a(s,j);
            end
        else
            L(i,j)=b(i,j)*a(i,j)*(1-gama);
            new_a(i,j)=a(i,j)-sum(p(i,:))*a(i,j)+ L(i,j);
            for s=1:43
                new_a(i,j)=new_a(i,j)+p(s,i)*a(s,j);
            end
        end
    end
end
end