function egrelti_otu(basamak) 
if nargin ~= 1 
    basamak= 100000; 
end 

clf 
axis square;
hold on; 

nokta =rand(2,1); 

for n = 1:basamak 
    zar = rand(1);
 
    if zar < 0.1 
        yeni_nokta = T(nokta,0,0,0,0.16,0,0); 
    end
    
   if (zar > 0.1) && (zar < 0.86) 
       yeni_nokta=T(nokta,0.85,0.04,-0.04,0.85,0,1.6); 
   end
   
   if  (zar > 0.86) && (zar < 0.93) 
       yeni_nokta = T(nokta,0.2,-0.26,0.23,0.22,0,1.6); 
   end
   
   if (zar > 0.93) 
       yeni_nokta = T(nokta, -0.15,0.28,0.26,0.24,0,0.44);
   end
   nokta = yeni_nokta; 
  x = yeni_nokta(1); 
  y= yeni_nokta(2);
  plot(x,y,'');
end
  
function U=T(X,a,b,c,d,e,f)
U = zeros(1,2); 
U(1) = a*X(1)+b*X(2)+e; 
U(2) = c*X(1)+d*X(2)+f; 




