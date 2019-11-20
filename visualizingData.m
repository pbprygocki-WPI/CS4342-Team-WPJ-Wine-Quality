data.X = readtable('winequality-redTrainData.csv'); % features
opt = delimitedTextImportOptions('PreserveVariableNames',true)
opt = setvartype(opt,'double');
data.Y = readtable('winequality-redTrainLabel.csv',opt); % labels

for Type = 1:8
    classindex{Type} = find(data.Y{:,1} == Type);
end

% visualize the data
for fi = 1:11
    for tk = 3:8
        bins = 10;
        classData{tk} = data.X{classindex{tk},fi};
        h{tk} = histcounts(classData{tk},bins);
    end
    figure
    bar([h{3};h{4};h{5};h{6};h{7};h{8}]);
end