#include <sys/mman.h>
#include <fcntl.h>
#include <sys/stat.h>
#include "syscall.h"

const char unsigned *__map_file(const char *pathname, size_t *size, dev_t *dev, ino_t *ino, time_t *mtime)
{
	struct stat st;
	const unsigned char *map = MAP_FAILED;
	int fd = sys_open(pathname, O_RDONLY|O_CLOEXEC|O_NONBLOCK);
	if (fd < 0) return 0;
	if (!__fstat(fd, &st)) {
		map = __mmap(0, st.st_size, PROT_READ, MAP_SHARED, fd, 0);
		*size = st.st_size;
		if (ino) *ino = st.st_ino;
		if (dev) *dev = st.st_dev;
		if (mtime) *mtime = st.st_mtim.tv_sec;
	}
	__syscall(SYS_close, fd);
	return map == MAP_FAILED ? 0 : map;
}
