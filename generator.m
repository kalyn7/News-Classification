function [ GetWeight ] = Weight( Data )
%WEIGHT Summary of this function goes here
%   Detailed explanation goes here

Caps = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
Small = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];


GetWeight = [];
for i = 1 : numel(Data)
   GetData = Data(i);
   try
   GetData = cell2mat(GetData);
   catch
   end
   GetData = double(GetData);
   
   GetWeight(i) = 0;
   
   for j = 1 : numel(GetData)
        Word = char(GetData(j));
        
        for a = 1 : numel(Caps)
           if strcmp(Word,Caps(a))
              GetWeight(i) = GetWeight(i) + double(Caps(a)); 
           end
        end
        for a = 1 : numel(Small)
           if strcmp(Word,Small(a))
              GetWeight(i) = GetWeight(i) + double(Caps(a)); 
           end
        end
        
   end
end

end

