//
//  ViewController.h
//  AudioTest
//
//  Created by En on 13/1/6.
//  Copyright (c) 2013年 En. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface ViewController : UIViewController
{
    SystemSoundID soundID;
}
- (IBAction)audioTest:(id)sender;
-(IBAction)releaseAudio:(id)sender;
- (IBAction)shack:(id)sender;

@end
