function [ grayPatternSeq ] = GrayCodePattern( resolution )
% input: resolution: the gray pattern img size you want

col_proj_img_num = ceil(log2(resolution(1)));
row_proj_img_num = ceil(log2(resolution(2)));

% generate col pattern seq
col_gray_de = grays(col_proj_img_num);
mat = transpose(flip(transpose(de2bi(col_gray_de))));

colPatternSeq = zeros(resolution(2), resolution(1), col_proj_img_num);

for i = 1:col_proj_img_num
    colPatternSeq(:, :, i) = transpose(repmat(mat(:, i), 1, resolution(2)));
end

% generate row pattern seq
row_gray_de = grays(row_proj_img_num);
mat2 = transpose(flip(transpose(de2bi(row_gray_de))));

rowPatternSeq = zeros(resolution(2), resolution(1), row_proj_img_num);

for i = 1:row_proj_img_num
    rowPatternSeq(:, :, i) = repmat(mat2(1:resolution(2), i), 1, resolution(1));
end

% cat 2 seq
grayPatternSeq = cat(3, colPatternSeq, rowPatternSeq);

end

