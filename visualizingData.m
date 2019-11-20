data.X = readtable('C:\Users\Wenjing Ying\OneDrive\Machine Learning\Project\winequality-redTrainData.csv'); % features
opt = delimitedTextImportOptions('PreserveVariableNames',true)
opt = setvartype(opt,'double');
data.Y = readtable('C:\Users\Wenjing Ying\OneDrive\Machine Learning\Project\winequality-redTrainLabel.csv',opt); % labels

for Type = 1:8
    classindex{Type} = find(data.Y{:,1} == Type);
end



% visualize the data
for fi = 1:11
    for Type = 3:8
        classData{Type} = 
    end
end

data1 = randn(20,1);
data2 = randn(30,1);
edges = -4:1:4;
h1 = histcounts(data1,edges);
h2 = histcounts(data2,edges);
figure
bar(edges(1:end-1),[h1; h2]’)