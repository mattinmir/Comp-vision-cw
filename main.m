labels = {'e', 'ne'};

%quetion a
rArr.('e') = [1,1]; 
rArr.('ne') = [1,1];

%question b and c
%rArr.('e') = [2,1]; 
%rArr.('ne') = [1,1];

qa = [0 0 0 0 0; 0 0.1000 0.1000 0.1000 0; 0 0.1000 0.9000 0 0; 0 0.1000 0 0 0; 0 0 0 0 0;];

for iteration = 1:2
    for pixel = 1:size(qa)
        qa(pixel) = IterativeScheme(pixel, qa ,rArr, labels);
    end
end

qa
    
         