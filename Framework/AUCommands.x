// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import "AUCommands.h"

@implementation AUCommands

+(bool)shouldRun {
	return NO;
}

+(void)respring {
	if ([AUCommands shouldRun]) {
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/usr/bin/killall"];
        [task setArguments:@[@"-9", @"SpringBoard"]];
		[task launch];
	} else {}
}

+(void)uicache {
	if ([AUCommands shouldRun]) {
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/usr/bin/uicache"];
        [task setArguments:@[]];
		[task launch];
	} else {}
}

+(void)userspace {
	if ([AUCommands shouldRun]) {
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/bin/launchctl"];
        [task setArguments:@[@"reboot", @"userspace"]];
		[task launch];
	} else {}
}

+(void)ldrestart {
	if ([AUCommands shouldRun]) {
		setuid(0);
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/usr/bin/ldrestart"];
        [task setArguments:@[]];
		[task launch];
	} else {}
}

+(void)customCommand:(NSString *)command {
	if ([AUCommands shouldRun]) {
		setuid(0);
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/bin/sh"];
        [task setArguments:@[@"-c", command]];
		[task launch];
	} else {}
}

@end
