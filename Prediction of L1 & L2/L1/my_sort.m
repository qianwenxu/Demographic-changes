function [sorted_array,sorted_xuhao]=my_sort(num_array)
[~,n]=size(num_array);
sorted_xuhao=1:n;
for i=2:length(num_array)
   for j=1:i-1
       if num_array(i)>num_array(j)
           tmp=num_array(i);
           tmp1=sorted_xuhao(i);
           for k=i-1:-1:j
               num_array(k+1)=num_array(k);
               sorted_xuhao(k+1)=sorted_xuhao(k);
           end
           num_array(j)=tmp;
           sorted_xuhao(j)=tmp1;
           break
       end
   end
end

sorted_array=num_array;