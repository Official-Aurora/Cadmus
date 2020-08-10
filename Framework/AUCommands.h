// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import <Foundation/Foundation.h>
#import "NSTask.h"
#include <unistd.h>

@interface AUCommands : NSObject
+(void)respring;
+(void)uicache;
+(void)userspace;
+(void)customCommand:(NSString *)command;
@end