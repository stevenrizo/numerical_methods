function [col1,col2,col3,col4] = assignment3(filename)
fid = fopen(filename,'r');
header = fgetl(fid);
blank_line = fgetl(fid);
blank_line = fgetl(fid);
col1 = []; col2 = []; col3 = []; col4 = [];
i = 0;
while (feof(fid) == 0)
    i = i + 1;
    line = fgetl(fid);
    data = str2num(line);
    if (size(data) == [1,4])
    col1(i,1) = data(:,1);
    col2(i,1) = data(:,2);
    col3(i,1) = data(:,3);
    col4(i,1) = data(:,4);
    else
        col1(i,1) = data(:,1);
        col2(i,1) = data(:,2);
        col3(i,1) = data(:,3);
        col4(i,1) = -999;
    end
end
fclose(fid);