function [ncell, sectoring]= minNoCells(area, userD, cir, userA, trunckBW, totalBW, blockPr)
    
    %% Drived
    nuser = area * userD;
    ntrucnk = totalBW / trunckBW;
    
    [A, B] = erlang();
    b = B==blockPr;
    
    %% Required
    ncell = inf;
    reuseF = 0;
    nsector = 0;
    
    %% Compution
    
    maxi = floor(sqrt(ntrucnk));
    for i = 1:maxi
        for j = 0:i
            N = i^2 + i*j + j^2;
            for s = [1 2 3 6]
                n = interference(i, j, s);
                cir_ = 3*N/n;
                if(cir_ >= cir)
                    ntrucnkCell = ntrucnk / N;
                    ntrucnkSector = floor(ntrucnkCell / s);
                    if(ntrucnkSector < 1 || ntrucnkSector > 100); continue; end
                    sectorA = A(ntrucnkSector, b);
                    nuserSector = floor(sectorA / userA);
                    if(nuserSector == 0); break; end
                    nuserCell = nuserSector * s;
                    ncell_ = ceil(nuser / nuserCell);
                    if(ncell_ < ncell)
                        ncell = ncell_;
                        reuseF = N;
                        nsector = s;
                    end
                end
            end
        end
    end
    
    %% Output
    
    sectoring = 360 / nsector;
end