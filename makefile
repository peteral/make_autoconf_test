include makefile.config

SOURCE = $(wildcard *.c)
OBJS   = $(SOURCE:.c=.o)
DEPS   = $(SOURCE:.c=.d)
-include ${DEPS}

# $@ => app
# $^ => ${OBJS}
app: ${OBJS}
	${CC} -o $@ $^

clean:
	-@rm *.o
	-@rm *.d
	-@rm app
	-@rm makefile.config
	-@rm config.log
	-@rm config.status

help:
	-@echo "app - compiles project executable (app)"
	-@echo "clean   - cleans generated files"