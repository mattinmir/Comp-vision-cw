function PsPlus1 = IterativeScheme(ii,img, rArr, labels)
    [x,y] = ind2sub(ii, img); % get x,y coords from index of pixel
    p = [img(ii), 1 - img(ii)];
    
    normaliser = 0;
    for k = 1:size(labels)
        normaliser = normaliser + p(1) * TotalContexualSupportFromAdjacents(x,y,rArr(ii).(labels{k}),img);
    end
    PsPlus1 = img(ii) * TotalContexualSupportFromAdjacents(x,y,rArr(ii).('e'),img) / normaliser;
end