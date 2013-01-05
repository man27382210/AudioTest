//
//  ViewController.m
//  AudioTest
//
//  Created by En on 13/1/6.
//  Copyright (c) 2013年 En. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)audioTest:(id)sender
{
        AudioServicesDisposeSystemSoundID(soundID);
        NSURL *sound_url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"ring1" ofType:@"m4a"]];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)sound_url, &soundID);
        AudioServicesPlaySystemSound(soundID);
        AudioServicesAddSystemSoundCompletion(soundID, NULL, NULL, systemSoundCompletion, NULL);
}

-(IBAction)releaseAudio:(id)sender
{
    AudioServicesDisposeSystemSoundID(soundID);
}

static void systemSoundCompletion(SystemSoundID sound_id, void* user_data)
{
    //重複播放相同的音效
    AudioServicesPlaySystemSound(sound_id);
}

- (IBAction)shack:(id)sender
{
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

@end
