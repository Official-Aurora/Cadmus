// Cadmus : AUCommands
// Copyright (c) Aurora Tweaks 2020

#import <spawn.h>
#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioServices.h>

@interface AUCommands : NSObject
+(bool)shouldRun;
-(void)respring:(bool)vibrate;
-(void)uicache:(bool)vibrate;
-(void)userspace:(bool)vibrate;
@end