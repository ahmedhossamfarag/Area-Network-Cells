 %% Input
area = 1e4;
userD = 2;
cir = 3;
userA = 0.05;
trunckBW = 1;
totalBW = 100;
blockPr = 0.01;

[ncell, sectoring] = minNoCells(area, userD, cir, userA, trunckBW, totalBW, blockPr);