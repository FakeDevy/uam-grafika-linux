all: main_5_1

CXXFILES=src/Camera.cpp src/Shader_Loader.cpp src/Render_Utils.cpp src/Texture.cpp \
				 src/SOIL/*.c

CXXFLAGS=$(shell pkg-config --cflags glew freeglut assimp) -std=c++14 \
				 -Wno-write-strings -Wno-int-to-pointer-cast -Wno-narrowing -fPIC
LDLIBS=$(shell pkg-config --libs glew freeglut assimp)

%: src/%.cpp
	$(CXX) $(CXXFLAGS) $(LDLIBS) $< -o $@ $(CXXFILES)
