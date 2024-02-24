#include <unistd.h>
#include <string.h>
void main(X
	size_t len;
	int msg_len = 0;
	char buff[100];
	strncpy(buff, "This is an example of writing to a screen using write) system callin", 99);
	msg_len = strlen(buff);
	len = write(1, buff, msg_len);
｝
