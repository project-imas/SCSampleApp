//
//  iMASViewController.m
//  SCSampleApp
//
//  Created by Gregg Ganley on 1/30/14.
//  Copyright (c) 2014 Gregg Ganley. All rights reserved.
//

#import "iMASViewController.h"

@interface iMASViewController ()
@property (weak, nonatomic) IBOutlet UITextField *info;

@end

@implementation iMASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.info.text = @"Test";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
