//
//  ViewController.m
//  Category
//
//  Created by shangxiaonan on 13-12-31.
//  Copyright (c) 2013年 Renjiale. All rights reserved.
//

#import "ViewController.h"
#import "NSString+ReverseNSString.h"

@interface ViewController ()
{
    UILabel* aLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton* aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    aButton.frame = CGRectMake(120, 250, 80, 40);
    [aButton setTitle:@"点击转换" forState:UIControlStateNormal];
    [aButton addTarget:nil action:@selector(changeString:) forControlEvents:UIControlEventTouchUpInside];
    
    aLabel = [[UILabel alloc] init];
    aLabel.frame = CGRectMake(30, 200, 260, 40);
    aLabel.text = @"Hello,Category Design Pattern!";
    
    [self.view addSubview:aButton];
    [self.view addSubview:aLabel];
}

- (IBAction)changeString:(id)sender
{
    NSString *text = [NSString reverseString:aLabel.text];
    aLabel.text = text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
