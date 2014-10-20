//
//  ViewController.m
//  PlayAudio
//
//  Created by 蘇健豪1 on 2014/10/20.
//  Copyright (c) 2014年 蘇健豪. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (strong, nonatomic) AVAudioPlayer *player;

@end

@implementation ViewController

@synthesize player;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playAudio:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Parasail" ofType:@"mp3"];
    NSURL *songURL = [NSURL fileURLWithPath:path];
    
    //[self selectAlarmSound];
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:songURL error:nil];
    player.volume = 1;
    [player play];
}

- (IBAction)pause:(id)sender {
    [player pause];
}

- (IBAction)continuePlay:(id)sender {
    [player play];
}

- (IBAction)stop:(id)sender {
    [player stop];
}

@end
