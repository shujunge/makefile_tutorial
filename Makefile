##方式１
#cc = g++
#prom = a
#source = main.cpp zf.cpp
#$(prom): $(source)
#	$(cc) -o $(prom) $(source)


##方式２
#cc = g++
#prom = a
#obj = main.o zf.o
#$(prom): $(obj)
#	$(cc) -o $(prom) $(obj)
#main.o: main.cpp $(deps)
#	$(cc) -c main.cpp
#zf.o: zf.cpp $(deps)
#	$(cc) -c zf.cpp


##方式３
#cc = g++
#prom = a
#obj = main.o zf.o
#$(prom): $(obj)
#	$(cc) -o $(prom) $(obj)
#%.o: %.cpp $(deps)
#	$(cc) -c $< -o $@


##方式４
cc = g++
prom = a
obj = main.o zf.o
#$(prom): $(obj)
#	$(cc) -o $(prom) $(obj)
#%.o: %.cpp $(deps)
#	$(cc) -c $< -o $@
#clean:
	#rm -rf $(obj) $(prom)
#	rm -f core $(prom) $(obj)


main:main.o zf.o
	$(cc) $^ -o $(prom)
%.o: %.cpp $(deps)
	$(cc) -c $< -o $@
clean:
	#rm -rf $(obj) $(prom)
	rm -f core $(prom) $(obj)
