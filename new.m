function x=new()

x=zeros(5,5);
for i=1:1:5
    for j=1:1:5
        x(i,j) = i*j;
    end
end
