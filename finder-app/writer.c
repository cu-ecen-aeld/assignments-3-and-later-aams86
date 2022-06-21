#include <stdio.h>
#include <syslog.h>
#include <string.h>

int main( int argc, char *argv[] ) {
	openlog(NULL, LOG_NDELAY, LOG_USER);
	printf( "%s, %s\n" , argv[1] ,argv[2]);
	if(argc != 3) {
		syslog(LOG_ERR, "invalid number of arguments.  Please input path and filename");
		return 1;
	}
	
	char *writeString =  argv[2];
	char *filename = argv[1];

	FILE *pfile = fopen(filename, "w");
	fwrite(writeString, strlen(writeString), 1, pfile);

	syslog(LOG_DEBUG, "Writing to %s with %s",filename, writeString);
	fclose(pfile);
	closelog();
	return 0;
}
