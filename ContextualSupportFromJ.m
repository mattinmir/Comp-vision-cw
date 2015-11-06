function qsj = ContextualSupportFromJ(r, p)% returns the contextual support from pixel j about whether or not chosen pixel i has label l
% r = compatability array for chosen pixel i having some label l given that the
% pixel j has each of the k labels that exist eg for our coursework 
% k = {edge, not edge}, and r would be the compatability coefficients that i is an edge
% given that j is either an edge or not an edge ie r = [2,1] (e:e, e:ne)

% if you want to find prob that i is not an edge, use r = [1,1] instead
% (ne:e, ne:ne)

% p = probability array of pixel j being assigned the kth label
% so for our cw, the value in the grid is the prob of j being an edge, and
% 1 - that value is the prob of j not being an edge, 
% so p = [p(edge), 1-p(edge)]

% if using in general, make sure that the the p values match up with the r values
% such that if r(1) -> (i:e, j:e), p(1) -> P(j:e) and  r(2) -> (i:e, j:ne), p(2) -> P(j:ne) and etc.

    m = size(r);
    qsjTemp = 0;
    for k = 1:m;
        qsjTemp = qsjTemp + r(k)*p(k);
    end
    qsj = qsjTemp;
end
