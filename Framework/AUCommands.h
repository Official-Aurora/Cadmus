// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioServices.h>
#import "NSTask.h"
#include <unistd.h>

@interface AUCommands : NSObject
+(bool)shouldRun;
-(void)respring;
-(void)uicache;
-(void)userspace;
-(void)ldrestart;
-(void)customCommand:(NSString *)command;
@end