data.X = readtable('winequality-redTrainData.csv'); % features
opt = delimitedTextImportOptions('PreserveVariableNames',true)
opt = setvartype(opt,'double');
data.Y = readtable('C:\Users\Wenjing Ying\OneDrive\Machine Learning\Project\winequality-redTrainLabel.csv',opt); % labels

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
    bar(edges(1:end-1),[h1; h2]');
end