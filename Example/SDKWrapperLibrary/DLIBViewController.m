//
//  DLIBViewController.m
//  SDKWrapperLibrary
//
//  Created by klolage on 01/16/2025.
//  Copyright (c) 2025 klolage. All rights reserved.
//

#import "DLIBViewController.h"
#import <SDKWrapperLibrary/DLNuanceDictationManager.h>

@interface DLIBViewController ()
{
    DLNuanceDictationManager *manager;
}

@end

@implementation DLIBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    manager = [[DLNuanceDictationManager alloc] init];
    [manager openSession];
}

- (void)viewDidAppear:(BOOL)animated {
    [manager initVUI:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
