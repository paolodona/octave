# make sure the outcome variable is in the first column
# this will calculate the correlation between any other variable (columns) and the outcome (first var)
#
clear;clc;
fprintf('loading correlation.csv...\n');
d = importdata('correlation.csv', ',');
# d = importdata('test2.csv', ',');
fprintf('data size %ix%i\n\n', size(d.data));
x = d.data(:,1);
cols = size(d.data)(2);
outcome_varname = strtrim(d.colheaders{1,1});

for i=[2:cols]
  variable_name = strtrim(d.colheaders{1,i});
  y = d.data(:, i);
  fprintf("%5.2f%% Correlation between %s and %s (R_sq) \n", corr(x, y)^2*100, variable_name, outcome_varname);
end

# linear regression formula
m = length(x);
X = [ones(m, 1), d.data(:, 2:end)];
theta = (pinv(X'*X))*X'*x;
# printf("bookings = %f + (%f*hosts) + (%f*searches) \n", theta);

fprintf("\n Multiple regression formula:\n\n")
fprintf("%s =\n", outcome_varname)
fprintf("  %f\n", theta(1))
for i=[2:cols]
  variable_name = strtrim(d.colheaders{1,i});
  fprintf("+ (%f * %s)\n", theta(i), variable_name);
end
