function PsPlus1 = IterativeScheme(x,y,img, rArr, labels)    
    p = [img(x,y), 1 - img(x,y)];
    
    normaliser = 0;
    for k = 1:size(labels,2)
        temp = TotalContexualSupportFromAdjacents(x, y, rArr.(labels{k}), p, img);
        normaliser = normaliser + p(k) * temp;
    end
    PsPlus1 = img(x,y) * TotalContexualSupportFromAdjacents(x, y, rArr.('e'), p, img) / normaliser;
end