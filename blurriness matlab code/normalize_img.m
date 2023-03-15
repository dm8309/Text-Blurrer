folderPath = uigetdir();

% Check if the user selected a folder
if folderPath == 0
    disp('No folder was selected.')
    return;
end
files = dir(fullfile(folderPath, '*.png'));
for i = 1:numel(files)
    % Read the current file into MATLAB
    img = imread(fullfile(folderPath, files(i).name));
    img_old = img
    
    %img = imread('img')
    max_pixel = max(img(:));
    normalized_img = uint8(double(img)*255/double(max_pixel));
    figure(1)
    imshow(img_old)
    figure(2)
    imshow(normalized_img)

end

