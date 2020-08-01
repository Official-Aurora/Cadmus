// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import "AUCommands.h"

@implementation AUCommands

+(bool)shouldRun {
	return NO;
}

-(void)respring {
	if ([AUCommands shouldRun]) {
    	pid_t pid;
		const char* args[] = {"killall", "-9", "SpringBoard", NULL, NULL};
		posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
	} else {}
}

-(void)uicache {
	if ([AUCommands shouldRun]) {
    	pid_t pid;
		const char* args[] = {"uicache", NULL, NULL};
		posix_spawn(&pid, "/usr/bin/uicache", NULL, NULL, (char* const*)args, NULL);
	} else {}
}

-(void)userspace {
	if ([AUCommands shouldRun]) {
    	pid_t pid;
		const char* args[] = {"launchctl", "reboot", "userspace", NULL, NULL};
		posix_spawn(&pid, "/bin/launchctl", NULL, NULL, (char* const*)args, NULL);
	} else {}
}

@end
