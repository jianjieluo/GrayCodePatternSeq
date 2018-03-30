% 使用方法：修改分辨率resolution，再运行即可

resolution = [1024, 768];
  
graySeq = GrayCodePattern4ProjectorCalibration(resolution);
% graySeq = GrayCodePattern(resolution);

s = size(graySeq);

for i = 1:s(3)
    imwrite(graySeq(:,:,i), sprintf('./output/%d.jpg', i));
end