//
//  AppDelegate.h
//  TrackMix
//
//  Created by Admin on 1/28/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (void)updateUserInterface;

@property (assign) IBOutlet NSWindow *window;
- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;

@property (strong) Track *track;

@end
