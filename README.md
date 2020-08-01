# Cadmus

A framework to make development easier.

# Contributors

- [ajaidan0](https://github.com/ajaidan0)

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
        [AUCommands uicache:NO];
    }
    %end

Note: If you want the device to vibrate after it runs uicache, replace NO with YES.

## Respring

Resprings the device.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands respring:NO];
    }
    %end

Note: If you want the device to vibrate after it resprings, replace NO with YES.

## Userspace

Reboots the device's userspace.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands userspace:NO];
    }
    %end

Note: If you want the device to vibrate after it reboots the userspace, replace NO with YES.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands respring:NO];
    }
    %end

Note: If you want the device to vibrate after it resprings, replace NO with YES.

## LDRestart

Runs ldrestart on the device.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands ldrestart:NO];
    }
    %end

Note: If you want the device to vibrate after it runs ldrestart, replace NO with YES.

## Custom Command

Runs a custom command on the device.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    -(void)viewDidLoad {
        %orig;
        [AUCommands userspace:[NSString stringWithFormat:@"uname -a"]];
    }
    %end

Note: If you want the device to vibrate after it reboots the userspace, replace NO with YES.
