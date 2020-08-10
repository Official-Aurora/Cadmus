# Cadmus

A framework to make development easier.

# Contributors

- [ajaidan0](https://github.com/ajaidan0)

# How to implement into your tweak

Simply clone the repository, build the Framework, add ``$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cadmus`` to your tweak's Makefile and then add  "libcadmus" to your control file's dependencies.

# AUCommands

## UICache

Runs UICache.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    +(void)viewDidLoad {
        %orig;
        [AUCommands uicache];
    }
    %end

## Respring

Resprings the device.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    +(void)viewDidLoad {
        %orig;
        [AUCommands respring];
    }
    %end

## Userspace

Reboots the device's userspace.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    +(void)viewDidLoad {
        %orig;
        [AUCommands userspace];
    }
    %end

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    +(void)viewDidLoad {
        %orig;
        [AUCommands respring];
    }
    %end

## LDRestart

Runs ldrestart on the device.

### How to use:

    #import <Cadmus/AUCommands.h>
    %hook SpringBoard
    +(void)viewDidLoad {
        %orig;
        [AUCommands ldrestart];
    }
    %end
