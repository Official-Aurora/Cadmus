#line 1 "Commands.x"



#import "Commands.h"

@implementation Commands

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

+(void)openUrl:(nullable NSURL *)URL {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:URL] options:@{} completionHandler:nil];
}

@end
