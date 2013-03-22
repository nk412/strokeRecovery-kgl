function RMSE(file1, file2)
%Returns the root mean square error between two files of the stroke competition submission format
%RMSE=sqrt(mean((y-y_pred).^2));


real=csvread(file1,1,0);
pred=csvread(file2,1,0);

y=real(:,6);
y=[y;real(:,7)];

y_pred=pred(:,6);
y_pred=[y_pred;pred(:,7)];

rmse_val=sqrt(mean((y-y_pred).^2));
rmse_val



return;