function c = AdjacencyCoefficients(x,y,n) % n is the length of the sides of the square, x,y are the coordinates of the pixel in question, where 1,1 is the top left
    ctemp = zeros(n); 
    for u = 1:n
        for v = 1:n
            % u,v != current pixel && is adjacent
            if ~isequal([u,v], [x,y]) && ismember(u, [x-1 x x+1]) && ismember(v, [y-1 y y+1])
                ctemp(u,v) = 1; % Set that pixel's coefficient to 1 if adjacent
            end
        end
    end
    c = ctemp;
end