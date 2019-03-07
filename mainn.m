% srcFiles = dir('C:\Users\sathya\Desktop\offline\signature-verification-master\user2\*.PNG');  % the folder in which ur images exists

filename = strcat('C:\Users\sathya\Desktop\offline\signature-verification-master\user1\1.PNG ');
    I = imread(filename);
    %figure, imshow(I);
     disp(size(I));
    tr=main(I);
    %tr=[tr; temp];
    %display(tr);
    disp(size(I));

% for i = 2 : length(srcFiles)-1
%       filename = strcat('C:\Users\sathya\Desktop\offline\signature-verification-master\user2\',srcFiles(i).name);
%       I = imread(filename);
%       %figure, imshow(I);
%       temp=main(I);
%       tr=[tr; temp];
%      % display(temp);
%       
%   end
%  display(tr);
%   gr(1:10)=0;
%   gr(11:12)=1;
%  display(size(gr));
%  display(size(tr));
%  
 %SVMStruct = svmtrain(tr,gr,'kernel_function','rbf');
  SVMStruct = svmtrain(tr,gr,'kernel_function',@rbf,'method','LS');
 
  filename = 'C:\Users\sathya\Desktop\offline\signature-verification-master\user2\13.png';
      I = imread(filename);
      figure, imshow(I);
      test1=main(I);
     
      group=svmclassify(SVMStruct,test1);
%       
%    
%    display(group);
