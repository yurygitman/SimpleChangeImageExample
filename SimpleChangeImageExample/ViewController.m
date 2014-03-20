//
//  ViewController.m
//  SimpleChangeImageExample
//
//  Created by GrownYoda on 3/20/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //UIImageView
    _myImage = [[UIImageView alloc] init];
    [_myImage setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];

    }

- (void) displayImageWithName: (NSString*)name{
    
   
    
    if (![name isEqualToString:@"remove"]) {
        
        NSLog(@"not remove");
        [_myImage setImage:[UIImage imageNamed:name]];
        [self.view addSubview:_myImage];
        
        
    }
    
    if ([name isEqualToString:@"remove"]) {
        
        [_myImage removeFromSuperview];

        NSLog(@"remove");

    }
    
    // [self.view addSubview:_myImage];
    NSLog(@"counter: %i",counter);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    counter ++;
    
    if (counter == 1) {
        [self displayImageWithName:@"1.png"];
    }
    if (counter == 2) {
        [self displayImageWithName:@"2.png"];
    }
    if (counter == 3) {
        [self displayImageWithName:@"3.png"];
    }
    if (counter == 4) {
        [self displayImageWithName:@"4.png"];
        
    }
    if (counter > 4) {
        [self displayImageWithName:@"remove"];
        
        counter = 0;
    }
    
    
    
}
@end
