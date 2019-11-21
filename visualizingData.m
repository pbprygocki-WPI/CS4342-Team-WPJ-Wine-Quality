data.X = readtable('winequality-redTrainData.csv'); % features
opt = delimitedTextImportOptions('PreserveVariableNames',true)
opt = setvartype(opt,'double');
data.Y = readtable('winequality-redTrainLabel.csv',opt); % labels

% the indexes of each class of data
for Type = 1:8
    classindex{Type} = find(data.Y{:,1} == Type);
end

% the priors of each class
for tpk = 3:8
    Prior{tpk} = length(classindex{tpk})/length(data.Y{:,1});
end

%figure;
%colors = 'brgymc';
%sym = 'xo+*.s';
%styles = {'bx', 'ro', 'g+','y*','m.','cs'};

% modelling the classes as a multinormal distribution
for k = 1:2
    for c = 3:8
    X = data.X{classindex{c},:}; 
        %str = sprintf('%s%s', sym(c), colors(c));
        % Plot data and model
        % h=scatter(X(:,1), X(:,2), 100, str);hold on
        % compute Normal
        mu{c}= mean(X);
        if k == 1
            Sigma{c} = cov(X); % Seperated classes % for QDA
        else
            Sigma{c} = cov(data.X{:,:}); % All classes For LDA
        end
    end
end


