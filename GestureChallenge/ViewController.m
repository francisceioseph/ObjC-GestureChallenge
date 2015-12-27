//
//  ViewController.m
//  GestureChallenge
//
//  Created by Francisco José A. C. Souza on 09/02/15.
//  Copyright (c) 2015 Francisco José A. C. Souza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property double shortDurantion;
@property double longDurantion;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _shortDurantion = 0.3;
    _longDurantion = 1.3;
    
    [_singleTap requireGestureRecognizerToFail: _doubleTap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) animateFloatingViewWithDurantion: (double) duration AndFinalPosition: (CGPoint) position
{
    [UIView animateWithDuration:duration
                          delay:0.2
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.floatingView.center = position;
                     }
                     completion:^(BOOL finished) {
                         
                     }];
}

- (IBAction)manageSingleTap:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CGPoint tapPoint = [sender locationInView:sender.view];
        
        [self animateFloatingViewWithDurantion:self.shortDurantion AndFinalPosition:tapPoint];
        
    }
    
}

- (IBAction)manageDoubleTap:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CGPoint doubleTapPoint = [sender locationInView:sender.view];
        
        [self animateFloatingViewWithDurantion:self.longDurantion AndFinalPosition:doubleTapPoint];
    }
}

- (IBAction)manageLongPress:(UILongPressGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded) {
        double red = arc4random_uniform(255) / 255.0;
        double green = arc4random_uniform(255) / 255.0;
        double blue = arc4random_uniform(255)/ 255.0;
        
        [self.floatingView setBackgroundColor:[UIColor colorWithRed:red green:green blue:blue alpha:1.0]];
    }
}
@end
