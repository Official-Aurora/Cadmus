// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import "AUCommands.h"

@implementation AUCommands

+(bool)shouldRun {
	return NO;
}

-(void)respring:(bool)vibrate {
	if ([AUCommands shouldRun]) {
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/usr/bin/killall"];
        [task setArguments:@[@"-9", @"SpringBoard"]];
		[task launch];
		if (vibrate) {
			AudioServicesPlaySystemSound(1519);
		}
	} else {}
}

-(void)uicache:(bool)vibrate {
	if ([AUCommands shouldRun]) {
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/usr/bin/uicache"];
        [task setArguments:@[]];
		[task launch];
		if (vibrate) {
			AudioServicesPlaySystemSound(1519);
		}
	} else {}
}

-(void)userspace:(bool)vibrate {
	if ([AUCommands shouldRun]) {
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/bin/launchctl"];
        [task setArguments:@[@"reboot", @"userspace"]];
		[task launch];
		if (vibrate) {
			AudioServicesPlaySystemSound(1519);
		}
	} else {}
}

-(void)ldrestart:(bool)vibrate {
	if ([AUCommands shouldRun]) {
		setuid(0);
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/usr/bin/ldrestart"];
        [task setArguments:@[]];
		[task launch];
		if (vibrate) {
			AudioServicesPlaySystemSound(1519);
		}
	} else {}
}

-(void)customCommand:(NSString *)command :(bool)vibrate {
	if ([AUCommands shouldRun]) {
		setuid(0);
    	NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath:@"/bin/sh"];
        [task setArguments:@[@"-c", command]];
		[task launch];
	} else {}
}

@end
