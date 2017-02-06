function [max_val min_val std_val mean_val] = assignment2(data)
max_val = max(data);
min_val = min(data);
mean_val = mean(data);
dev = (data - mean_val).^2;
std_val = sqrt(mean(dev));