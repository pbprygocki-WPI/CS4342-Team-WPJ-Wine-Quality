data.X = readtable('winequality-redTrainData.csv'); % features
opt = delimitedTextImportOptions('PreserveVariableNames',true)
opt = setvartype(opt,'double');
data.Y = readtable('winequality-redTrainLabel.csv',opt); % labels

bins = 30

for i = 1:11
    figure
    histogram(data.X{:, i}, bins);
    title("Attribute " + i);
end