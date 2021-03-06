load fisheriris

data = [meas(:,1), meas(:,2)];
groups = ismember(species,'setosa');
[train, test] = crossvalind('holdOut',groups);
cp = classperf(groups);


svmStruct = svmtrain(data(train,:),groups(train),'showplot',true);
