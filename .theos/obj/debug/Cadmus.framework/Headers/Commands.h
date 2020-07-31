// Cadmus : Commands
// Copyright (c) Aurora Tweaks 2020

#import <spawn.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Commands : NSObject
-(void)respring;
-(void)uicache;
-(void)userspace;
+(void)openUrl:(nullable NSURL *)URL;
@end

NS_ASSUME_NONNULL_END