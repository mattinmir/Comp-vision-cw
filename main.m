labels = {'e', 'ne'};

%quetion a
rArr.('e') = [2,1]; 
rArr.('ne') = [1,1];

%question b and c
%rArr.('e') = [2,1]; 
%rArr.('ne') = [1,1];

qa = [0 0   0   0   0;
      0 0.1 0.1 0.1 0; 
      0 0.1 0.9 0   0;
      0 0.1 0   0   0;
      0 0   0   0  0;];
  
 qaNew = qa;
 
 
qb = [0 0 0   0 0;
      0 0 0   0 0; 
      0 0 0.1 0 0;
      0 0 0   0 0;
      0 0 0   0 0;];
 
for iteration = 1:2
    qa = qaNew;
    for pixelx = 1:5
        for pixely = 1:5
             qaNew(pixelx,pixely) = IterativeScheme(pixelx, pixely, qa ,rArr, labels);
        end
    end
end

qaNew
         