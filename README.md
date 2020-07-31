# Cadmus

A framework to make development easier.

# How to implement into your tweak

Simply clone the repository, build the Framework, add ``$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cadmus`` to your tweak's Makefile and then add  "com.aurora.cadmus" to your control file's dependencies.

# Commands

## UICache

Runs UICache.

### How to use:

#import <Cadmus/Commands.h>\
[Cadmus uicache];

## Respring

Resprings the device.

### How to use:

#import <Cadmus/Commands.h>\
[Commands respring];

## Userspace

Reboots the device's userspace.

### How to use:

#import <Cadmus/Commands.h>\
[Commands userspace];
