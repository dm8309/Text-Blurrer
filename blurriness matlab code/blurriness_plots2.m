folderPath = uigetdir();

% Check if the user selected a folder


if folderPath == 0
    disp('No folder was selected.')
    return;
end
files = dir(fullfile(folderPath, '*.png'));
for i = 1:numel(files)
    img = imread(fullfile(folderPath, files(i).name));
%     if (i == 2)
%         y = [(size(img,1)/2)*1.50 (size(img,1)/2)*1.50];
%     
%     else
        y = [(size(img,1)/2)*1.55 (size(img,1)/2)*1.55];
%     end
    % Read the current file into MATLAB
    x = [0 size(img,2)];
    c = improfile(img,x,y); 
%     imshow(img,[]);
%     improfile
    %figure(i) %changed
    %plot(x,y,'r'); %changed
    
    %subplot(2,1,1) %changed
    %title(['Blur Level' num2str(i-1)] ) %changed
    %imshow(img) ) %changed
    %hold on %changed
    %plot(x,y,'r') %changed
    %title(['Blur Level ' num2str(i-1)] ) %changed

   % subplot(2,1,2) %changed
    %red = c(:,1,1),'r'; %changed

    %subplot of all 4 images
    figure(1)
    subplot(4,1,(i));
    imshow(img) %changed
    title(['Blur Level ' num2str(i-1)] )


    
    %plot(c(:,1,1),'r')
    figure((i+1)) %changed
    %hold on %changed
    %plot(c(:,1,2),'g')
    %plot(c(:,1,3),'b')
    graph = c(:,1,1),'r' + c(:,1,2),'g' + c(:,1,3),'b';
    plot(graph)
    hold on
    xlabel('Image X Coordinates')
    ylabel('Intensity Values')
    title(['Blur Level ' num2str(i-1)] )
    %legend('Blur 0','Blur 1', 'Blur 2','Blur 3','Orientation','horizontal');


end

