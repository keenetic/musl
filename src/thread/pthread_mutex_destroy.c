#include "pthread_impl.h"

int pthread_mutex_destroy(pthread_mutex_t *m)
{
	int type = m->_m_type & 3;

	if (type == PTHREAD_MUTEX_NORMAL && m->_m_lock == EBUSY)
		return EBUSY;
	else if (type == PTHREAD_MUTEX_RECURSIVE && m->_m_count)
		return EBUSY;

	return 0;
}
