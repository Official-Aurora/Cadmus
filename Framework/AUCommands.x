// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import "AUCommands.h"

@implementation AUCommands

+(bool)shouldRun {
	return NO;
}

-(void)respring:(bool)vibrate {
	if ([AUCommands shouldRun]) {
    	pid_t pid;
		const char* args[] = {"killall", "-9", "SpringBoard", NULL, NULL};
		posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
		if (vibrate) {
			AudioServicesPlaySystemSound(1519);
		}
	} else {}
}

-(void)uicache:(bool)vibrate {
	if ([AUCommands shouldRun]) {
    	pid_t pid;
		const char* args[] = {"uicache", NULL, NULL};
		posix_spawn(&pid, "/usr/bin/uicache", NULL, NULL, (char* const*)args, NULL);
		if (vibrate) {
			AudioServicesPlaySystemSound(1519);
		}
	} else {}
}

-(void)userspace:(bool)vibrate {
	if ([AUCommands shouldRun]) {
    	pid_t pid;
		const char* args[] = {"launchctl", "reboot", "userspace", NULL, NULL};
		posix_spawn(&pid, "/bin/launchctl", NULL, NULL, (char* const*)args, NULL);
		if (vibrate) {
			AudioServicesPlaySystemSound(1519);
		}
	} else {}
}

@end
