labels = {'e', 'ne'};

%quetion a
rArra.('e') = [1,1]; 
rArra.('ne') = [1,1];

%question b and c
rArrbc.('e') = [2,1]; 
rArrbc.('ne') = [1,1];

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
  
qbNew = qb;

qc =  [0 0   0   0   0;
       0 0.1 0.1 0.1 0;
       0 0.1 1   0.1 0;
       0 0.1 0.1 0.1 0;
       0 0   0   0   0;];
   
qcNew = qc;


for iteration = 1:2
    qa = qaNew;
    for pixelx = 1:5
        for pixely = 1:5
             qaNew(pixelx,pixely) = IterativeScheme(pixelx, pixely, qa ,rArra, labels);
        end
    end
end
fprintf('\n\nQuestion 2a:\n\n');
qaNew


for iteration = 1:2
    qb = qbNew;
    for pixelx = 1:5
        for pixely = 1:5
             qbNew(pixelx,pixely) = IterativeScheme(pixelx, pixely, qb ,rArrbc, labels);
        end
    end
end
fprintf('\n\nQuestion 2b:\n\n');
qbNew

for iteration = 1:2
    qc = qcNew;
    for pixelx = 1:5
        for pixely = 1:5
             qcNew(pixelx,pixely) = IterativeScheme(pixelx, pixely, qc ,rArrbc, labels);
        end
    end
end
fprintf('\n\nQuestion 2c:\n\n');
qcNew


         