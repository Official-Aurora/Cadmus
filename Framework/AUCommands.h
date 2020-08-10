// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioServices.h>
#import "NSTask.h"
#include <unistd.h>
#import <stdio.h>
#import <string.h>
#import <dlfcn.h>
#define FLAG_PLATFORMIZE (1 << 1)

@interface AUCommands : NSObject
+(void)respring;
+(void)uicache;
+(void)userspace;
+(void)ldrestart;
+(void)customCommand:(NSString *)command;
@end