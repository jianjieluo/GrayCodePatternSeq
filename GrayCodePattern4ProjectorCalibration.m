function [ grayPatternSeq ] = GrayCodePattern4ProjectorCalibration( resolution )
% input: resolution: the gray pattern img size you want

col_proj_img_num = ceil(log2(resolution(1)));
row_proj_img_num = ceil(log2(resolution(2)));

% 生成全白和全黑图
refferPattern(:, :, 1) = ones(resolution(2), resolution(1));
refferPattern(:, :, 2) = zeros(resolution(2), resolution(1));

% generate col pattern seq
col_gray_de = grays(col_proj_img_num);
mat = transpose(flip(transpose(de2bi(col_gray_de))));

colPatternSeq = zeros(resolution(2), resolution(1), 2 * col_proj_img_num);

for i = 1:col_proj_img_num
    colPatternSeq(:, :, 2 * i - 1) = transpose(repmat(mat(:, i), 1, resolution(2)));
    temp = colPatternSeq(:, :, 2 * i - 1);
    colPatternSeq(:, :, 2 * i) = ones(size(temp)) - temp;
end

% generate row pattern seq
row_gray_de = grays(row_proj_img_num);
mat2 = transpose(flip(transpose(de2bi(row_gray_de))));

rowPatternSeq = zeros(resolution(2), resolution(1), 2 * row_proj_img_num);

for i = 1:row_proj_img_num
    rowPatternSeq(:, :, 2 * i - 1) = repmat(mat2(1:resolution(2), i), 1, resolution(1));
    temp2 = rowPatternSeq(:, :, 2 * i - 1);
    rowPatternSeq(:, :, 2 * i) = ones(size(temp2)) - temp2;
end

% cat 3 seq
grayPatternSeq = cat(3, refferPattern, colPatternSeq, rowPatternSeq);

end

