// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioServices.h>
#import "NSTask.h"
#include <unistd.h>

@interface AUCommands : NSObject
+(bool)shouldRun;
-(void)respring:(bool)vibrate;
-(void)uicache:(bool)vibrate;
-(void)userspace:(bool)vibrate;
-(void)ldrestart:(bool)vibrate;
-(void)customCommand:(NSString *)command :(bool)vibrate;
@end