function Qs = TotalContexualSupportFromAdjacents(x, y, r, p, img) % gives the total contexual support from all adjacent pixels that chosen pixel i has label l
    %img is the matrix showing edge probabilites
    [n,n] = size(img);
    c = AdjacencyCoefficients(x,y,n);
    QsTemp = 0;
    for  u = 1:n
        for v = 1:n
            if c(u,v) == 1 % if adjacent
                QsTemp = QsTemp + ContextualSupportFromJ(r,p); 
            end
        end
    end
    Qs = QsTemp;
end