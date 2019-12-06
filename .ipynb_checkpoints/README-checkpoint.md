# makefile-tutorial
C++/C　多文件编译命令

注:
1.Makefile的缩进用tab键
2.Makefile文件名是固定的，不要冲突

##方式１
cc = g++
prom = a
source = main.cpp zf.cpp
$(prom): $(source)
	$(cc) -o $(prom) $(source)


##方式２
cc = g++
prom = a
obj = main.o zf.o
$(prom): $(obj)
	$(cc) -o $(prom) $(obj)
main.o: main.cpp $(deps)
	$(cc) -c main.cpp
zf.o: zf.cpp $(deps)
	$(cc) -c zf.cpp


##方式３
cc = g++
prom = a
obj = main.o zf.o
$(prom): $(obj)
	$(cc) -o $(prom) $(obj)
%.o: %.cpp $(deps)
	$(cc) -c $< -o $@


##方式４
cc = g++
prom = a
obj = main.o zf.o
$(prom): $(obj)
	$(cc) -o $(prom) $(obj)
%.o: %.cpp $(deps)
	$(cc) -c $< -o $@
clean:
	rm -rf $(obj) $(prom)


清除中间编译生成的文件. 

>>make clean

git命令
=====

##### git init 本地仓库初始化</br>
##### git add youfilename 仓库添加文件</br>
##### git commit -m "first commit" 添加说明并提交</br>
##### git push origin master 推送到远程</br>
##### git log --pretty=online 查看提交的记录</br>
##### git reset --hard HEAD^ 返回上一个状态</br>
#####　git reflog 查看输入的记录</br>


[cmake教程](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
=====






