function [t,y,s] = read_datafile(filename)
fid = fopen(filename,'r');
header = fgetl(fid);
t = []; y = []; s = [];
i = 0;
while (feof(fid) == 0)
    i = i + 1;
    line = fgetl(fid);
    data = str2num(line);
    t(i,1) = data(:,1);
    y(i,1) = data(:,2);
    s(i,1) = data(:,3);
end
fclose(fid);
