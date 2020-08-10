// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import "AUCommands.h"

// Creds to CaptInc (https://github.com/captinc/Batchomatic/blob/master/bmd/main.m#L7)
void fixSetuidForChimera() { //On Chimera, you have to do this fancy stuff to make yourself root (cannot simply do setuid() like unc0ver/checkra1n)
    
    dlerror();
    typedef void (*fix_entitle_prt_t)(pid_t pid, uint32_t what);
    fix_entitle_prt_t enetitle_ptr = (fix_entitle_prt_t)dlsym(handle, "jb_oneshot_entitle_now");
    const char *dlsym_error = dlerror();
    if (dlsym_error) {
        return;
    }
    enetitle_ptr(getpid(), FLAG_PLATFORMIZE);
    
    dlerror();
    typedef void (*fix_setuid_prt_t)(pid_t pid);
    fix_setuid_prt_t setuid_ptr = (fix_setuid_prt_t)dlsym(handle,"jb_oneshot_fix_setuid_now");
    dlsym_error = dlerror();
    if (dlsym_error) {
        return;
    }
    
    setuid_ptr(getpid());
    setuid(0);
    setgid(0);
    setuid(0);
    setgid(0);
}

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
	setuid(0);
	if (getuid() != 0) {
        fixSetuidForChimera();
    }
	NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/usr/bin/ldrestart"];
    [task setArguments:@[]];
	[task launch];
}

+(void)customCommand:(NSString *)command {
	setuid(0);
	if (getuid() != 0) {
        fixSetuidForChimera();
    }
    NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/bin/sh"];
    [task setArguments:@[@"-c", command]];
	[task launch];
}

@end
