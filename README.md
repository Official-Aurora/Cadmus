# Cadmus

A framework to make development easier.

# How to implement into your tweak

Simply clone the repository, build the Framework, add ``$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cadmus`` to your tweak's Makefile and then add  "com.aurora.cadmus" to your control file's dependencies.

# AUCommands

Note: For any commands to run, you must let it run like so:

    #import <Cadmus/AUCommands.h>
    %hook AUCommands
    +(bool)shouldRun {
        return YES;
    }
    %end

## UICache

Runs UICache.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands uicache];
    }
    %end

## Respring

Resprings the device.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands respring];
    }
    %end

## Userspace

Reboots the device's userspace.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands userspace];
    }
    %end
