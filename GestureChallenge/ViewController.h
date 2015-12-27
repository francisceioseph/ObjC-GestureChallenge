//
//  ViewController.h
//  GestureChallenge
//
//  Created by Francisco José A. C. Souza on 09/02/15.
//  Copyright (c) 2015 Francisco José A. C. Souza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *floatingView;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *singleTap;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *doubleTap;

- (IBAction)manageSingleTap:(UITapGestureRecognizer *)sender;
- (IBAction)manageDoubleTap:(UITapGestureRecognizer *)sender;
- (IBAction)manageLongPress:(UILongPressGestureRecognizer *)sender;

@end

