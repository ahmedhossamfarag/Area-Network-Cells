function n = interference(i, j, s)
    if(s == 1)
        n = 6; return
    end
    if i == 1
        switch s
            case 2
                n = 4;
            case 3
                n = 3;
            case 6
                n = 2;
        end
    else
        switch s
            case 2
                n = 3;
            case 3
                n = 2;
            case 6
                n = 1;
        end
    end
    % iangles = (30 + 60 * (0:5)) * pi / 180;
    % ivectors = cos(iangles) + 1i *sin(iangles);
    % jvectors = [ivectors(2:end) ivectors(1)];
    % centers = i * ivectors + j * jvectors;
    % angles = angle(centers);
    % angles(angles < 0) = mod(angles(angles < 0) + 2*pi, 2*pi);
    % s = 2*pi / s;
    % n = length(find(angles - s <= 1e-3));
end