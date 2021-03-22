.PHONY: all

all: _vfydir
	g++ -o build/olcExampleProgram olcExampleProgram.cpp -lX11 -lGL -lpthread -lpng -lstdc++fs -std=c++17
	ln -s build/olcExampleProgram olcExampleProgram

_vfydir:
	@echo "+ VERIFY build/ folder"
	@mkdir -p build/

clean:
	@echo "- REMOVE symlink"
	@rm -f olcExampleProgram
	@echo "- REMOVE build/ folder"
	@rm -fr build/
