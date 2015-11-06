function Qs = TotalContexualSupportFromAdjacents(x, y, r, img) % gives the total contexual support from all adjacent pixels that chosen pixel i has label l
    %img is the matrix showing edge probabilites
    n = size(img);
    c = AdjacencyCoefficients(x,y,n);
    QsTemp = 0;
    for  jj = 1:n
       QsTemp = QsTemp + c(jj)* ContextualSupportFromJ(r,[img(jj) 1-img(jj)]); 
    end
    Qs = QsTemp;
end