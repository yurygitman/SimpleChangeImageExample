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
 //   counter = 1;
	// Do any additional setup after loading the view, typically from a nib.
    
    //    [self displayImageWithName:@"1.png"];
    
}

- (void) displayImageWithName: (NSString*)name{
    
   
    
    if (![name isEqualToString:@"remove"]) {
        _myImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
        [_myImage setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [self.view addSubview:_myImage];
    
        NSLog(@"not remove");
        
    }
    
    if ([name isEqualToString:@"remove"]) {
        
        _myImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
        [_myImage setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        _myImage = nil;
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
