//
//  AppDelegate.m
//  TrackMix
//
//  Created by Admin on 1/28/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "AppDelegate.h"

#import "Track.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    Track *aTrack = [[Track alloc] init];
    self.track = aTrack;
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
    
    NSLog(@"received a mute: message");
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
    
    NSString *senderName = nil;
    if (sender == self.textField) {
        senderName = @"textField";
    }
    else {
        senderName = @"slider";
    }
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
}

- (void)updateUserInterface {
    
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
