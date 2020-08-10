// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import "AUCommands.h"

@implementation AUCommands

+(void)respring {
    NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/usr/bin/killall"];
    [task setArguments:@[@"-9", @"SpringBoard"]];
	[task launch];
}

+(void)uicache {
    NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/usr/bin/uicache"];
    [task setArguments:@[]];
	[task launch];
}

+(void)userspace {
    NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/bin/launchctl"];
    [task setArguments:@[@"reboot", @"userspace"]];
	[task launch];
}

+(void)ldrestart {
	setgid(0);
	setuid(0);
	NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/usr/bin/ldrestart"];
    [task setArguments:@[]];
	[task launch];
}

+(void)customCommand:(NSString *)command {
	setgid(0);
	setuid(0);
    NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/bin/sh"];
    [task setArguments:@[@"-c", command]];
	[task launch];
}

@end
