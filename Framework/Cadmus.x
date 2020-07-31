// Cadmus
// Copyright (c) Aurora Tweaks 2020

#import "Cadmus.h"

@implementation Cadmus

-(void)respring {
    pid_t pid;
	const char* args[] = {"killall", "-9", "SpringBoard", NULL, NULL};
	posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

-(void)uicache {
    pid_t pid;
	const char* args[] = {"uicache", NULL, NULL};
	posix_spawn(&pid, "/usr/bin/uicache", NULL, NULL, (char* const*)args, NULL);
}

-(void)userspace {
    pid_t pid;
	const char* args[] = {"launchctl", "reboot", "userspace", NULL, NULL};
	posix_spawn(&pid, "/bin/launchctl", NULL, NULL, (char* const*)args, NULL);
}

@end
