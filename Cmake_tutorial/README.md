Makefile 与CMakeLists.txt
=

1.Makefile适用与ubuntu系统，将需要执行的命令写入Ｍakefile文件,方便一次性编译. <br/> 
2. CMake是一个跨平台的软件，在很多平台可以使用。一般在windows下，我们会直接使用VS生成项目，在linux下面，我们也可以使用QT Creater生成项目，
但是两个不同平台上面的项目不能相互移植。这就有了CMake的用武之地，我们可以先编写一个CMakeLists.txt文件，将需要的.h和.cpp文件包含进来，
然后在不同的平台使用CMake调用各自的编译器生成各自的工程．
