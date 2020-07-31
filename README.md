# Cadmus

A framework to make development easier.

# How to implement into your tweak

Simply clone the repository, build the Framework, add ``$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cadmus`` to your tweak's Makefile and then add  "com.aurora.cadmus" to your control file's dependencies.

# Methods (So far)

## UICache

Runs UICache.

## How to use:

#import <Cadmus/Commands.h>\
[Cadmus uicache];

## Respring

Resprings the device.

## How to use:

#import <Cadmus/Commands.h>\
[Cadmus respring];

## Userspace

Reboots the device's userspace.

## How to use:

#import <Cadmus/Commands.h>\
[Cadmus userspace];

## OpenUrl

Opens a url on the device.

## How to use:

#import <Cadmus/Commands.h>\
[Cadmus openUrl:url];
