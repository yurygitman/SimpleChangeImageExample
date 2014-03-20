//
//  ViewController.h
//  SimpleChangeImageExample
//
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int counter;
}

//button
- (IBAction)buttonPressed:(id)sender;

// image object
@property (strong, nonatomic) IBOutlet UIImageView *myImage;

@end
