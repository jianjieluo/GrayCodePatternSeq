# GrayCodePatternSeq
Generate gray code pattern sequence images, time-coded light patterns , used in structured light.

This simple project is inspired by [*Gray code pattern sequence*](https://cn.mathworks.com/matlabcentral/answers/21857-gray-code-pattern-sequence) and use `grays` function in [*Gray Code Manipulation*](https://cn.mathworks.com/matlabcentral/fileexchange/15570-gray-code-manipulation).



## Usage

1. Create `./output/` directory.
2. Modify the input value `resolution` in `CreateAndSaveGraySeq.m`, which specifies the output pattern image's size.
3. Choose `GrayCodePattern4ProjectorCalibration(resolution)` or `GrayCodePattern(resolution)` function in `CreateAndSaveGraySeq.m`.
4. Run `CreateAndSaveGraySeq.m` in Matlab.
5. Get the gray code pattern sequence in `./output/` directory.


### 1. Choose `GrayCodePattern(resolution)` 


You can get general gray code pattern sequence with the resolution you want.

## 2. Choose `GrayCodePattern4ProjectorCalibration(resolution)`

These images(1024 x 768) generated in `./output/` directory can be used directly in this paper [Projector-Camera Calibration / 3D Scanning Software](http://mesh.brown.edu/calibration/). **An opposite image of each pattern** is also be generated in order to improve the accuracy in the projector calibration.

**1024 x 768 patterns** are in `output/` .
