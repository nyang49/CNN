%temp = load('simu_spect.mat');
tempTable = table();
tempTable.ppm = ppm.';
tempTable.spec_mat = spec_mat.';
result = horzcat(tempTable.ppm,tempTable.spec_mat);
colnames = ["ppm","X"+[1:500]];
result = array2table(result,'VariableNames',colnames);
%writetable(result,'result500.csv','Delimiter',',');

mixture = result(:,1:2);
mixture = array2table(mixture,'VariableNames',{'ppm' 'values'})
%writetable(mixture,'D:\UW-MADISON\CNN\nan_templates\mixture.csv','Delimiter',',');