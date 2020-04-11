include makefile.config

compile: 
	${MSBUILD} ${OPTIONS}

clean:
	-@rm *.o
	-@rm config.log
	-@rm confg.status

help:
	-@echo "compile - compiles project executable"
	-@echo "clean   - cleans generated files"