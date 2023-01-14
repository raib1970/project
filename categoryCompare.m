function [speciesMean,otherSpeciesMean]= categoryCompare(data, category, indexofmeasurement)

 phaseIndex= find(data(:,1)==category);
 newdata= data(phaseIndex,:);
 [r c]=size(newdata);

 phaseIndexOthers=find(data(:,1)~=category);
 newdataothers=data(phaseIndexOthers,:);

 [ro co]=size(newdataothers);

%sum of column and mean
speciesMean = sum(newdata(:,indexofmeasurement))/r;
otherSpeciesMean=sum(newdataothers(:,indexofmeasurement))/ro;

end