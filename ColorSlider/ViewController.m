//
//  ViewController.m
//  ColorSlider
//
//  Created by Mark on 8/12/15.
//  Copyright (c) 2015 MavroLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UISlider *slider;
    UIColor *trackColor;
    IBOutlet UILabel *labelColor;
    IBOutlet UIImageView *imagePalm;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    trackColor = [[UIColor alloc] init];
    trackColor = [UIColor colorWithWhite:1.0 alpha:1.0];
    
    [slider setMinimumTrackTintColor:trackColor];
    [slider setMaximumTrackTintColor:trackColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setColor:(UISlider *)sender
{
    NSLog(@"Color slider value: %f", sender.value);
    [self setSliderBackgroundColor:sender.value];
    
    [slider setMinimumTrackTintColor:trackColor];
    
    // This conditional required to work around a bug in UISlider
    if (sender.value != 0.0)
        [slider setMaximumTrackTintColor:trackColor];
    
    [slider setThumbTintColor:trackColor];
    [labelColor setTextColor:trackColor];
}

-(void)setSliderBackgroundColor:(CGFloat)value
{
    if (value > 0.90 && value < 0.91)
    {
        trackColor = [UIColor colorWithWhite:0.0 alpha:1.0];
    }
    else if (value >= 0.91 && value < 0.92)
    {
        trackColor = [UIColor colorWithWhite:0.2 alpha:1.0];
    }
    else if (value >= 0.92 && value < 0.93)
    {
        trackColor = [UIColor colorWithWhite:0.4 alpha:1.0];
    }
    else if (value >= 0.93 && value < 0.94)
    {
        trackColor = [UIColor colorWithWhite:0.5 alpha:1.0];
    }
    else if (value >= 0.94 && value < 0.95)
    {
        trackColor = [UIColor colorWithWhite:0.6 alpha:1.0];
    }
    else if (value >= 0.95 && value < 0.96)
    {
        trackColor = [UIColor colorWithWhite:0.7 alpha:1.0];
    }
    else if (value >= 0.96 && value < 0.97)
    {
        trackColor = [UIColor colorWithWhite:0.8 alpha:1.0];
    }
    else if (value >= 0.97 && value < 0.98)
    {
        trackColor = [UIColor colorWithWhite:0.9 alpha:1.0];
    }
    else if (value >= 0.98)
    {
        trackColor = [UIColor colorWithWhite:1.0 alpha:1.0];
    }
    else
    {
        trackColor = [UIColor colorWithHue:value saturation:1.0 brightness:1.0 alpha:1.0];
    }
}

- (IBAction)touchDownColor:(UISlider *)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    
    imagePalm.alpha = 0.1;
    
    [UIView commitAnimations];
}

- (IBAction)touchUpColor:(UISlider *)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    
    imagePalm.alpha = 1.0;
    
    [UIView commitAnimations];
}

@end
