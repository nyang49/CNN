tempTable = table();
tempTable.ppm = ppm.';
tempTable.spec_mat = spec_mat.';
result = horzcat(tempTable.ppm,tempTable.spec_mat);
colnames = ["ppm","X"+[1:500]];
result = array2table(result,'VariableNames',colnames);
%writetable(result,'result500.csv','Delimiter',',');

mixture = result(:,1:2);
mixture = array2table(mixture,'VariableNames',{'ppm' 'values'})
writetable(mixture,'D:\UW-MADISON\CNN\nan_templates\mixture.csv','Delimiter',',');


% =====================================================================================

1. add these codes at the end of file

2. comment out 
"save('simu_spect.mat','conc_mat','spec_mat','ppm','pheno_mat','pheno_tab','group_ident_vec','compd_vec','pheno_vec','group_vec','sampleindvec');"

3. colnames = ["ppm","X"+[1:500]]; # make sure to change it to sample size

4. writetable(mixture,'D:\UW-MADISON\CNN\nan_templates\mixture.csv','Delimiter',','); # change the working dir, have to keep it for later usage.



