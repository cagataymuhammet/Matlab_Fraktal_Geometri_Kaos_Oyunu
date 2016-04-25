function kaos(basamak) 
if nargin ~= 1 
    basamak= 1000; 
end 

clf 
axis square;
hold on; 
a = [0;0]; 
b = [50;100]; 
c = [100;0]; 
nokta =rand(2,1)*900;

for n = 1 :basamak 
    zar =rand(1);
   if zar < 1/3
    yeni_nokta = (a-nokta)/2 + nokta;
   elseif zar > 2/3 
       yeni_nokta = (c-nokta)/2 + nokta;
   else
       yeni_nokta = (b-nokta)/2 + nokta; 
   end
   nokta = yeni_nokta; 
   x = yeni_nokta(1); 
   y = yeni_nokta(2); 
   plot(x,y,''); 
end
 