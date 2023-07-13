FROM archlinux:latest 
WORKDIR /opt/workdir
ARG C_FLAGS="-Ofast -march=native \
	-flto -fno-signed-zeros \
	-fno-trapping-math -funroll-loops \
	-D_GLIBCXX_PARALLEL"
RUN pacman -Sy cmake extra-cmake-modules gcc ninja qt5ct qtkeychain-qt5 --noconfirm
CMD cmake -B target/release -D CMAKE_BUILD_TYPE=Release -D CMAKE_C_FLAGS='$C_FLAGS' -G 'Ninja' && cmake --build target/release -j$(nproc)
