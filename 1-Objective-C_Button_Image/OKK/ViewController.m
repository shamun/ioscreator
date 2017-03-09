//
//  ViewController.m
//  OKK
//
//  Created by Sun on 09/03/17.
//  Copyright © 2017 Sun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  UIButton *but= [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [but addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
  [but setFrame:CGRectMake(52, 252, 215, 40)];
  [but setTitle:@"Login" forState:UIControlStateNormal];
  [but setExclusiveTouch:YES];
  
  // if you like to add backgroundImage else no need
  [but setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
  [self.view addSubview:but];
}


-(void) buttonClicked:(UIButton*)sender
{
  NSLog(@"you clicked on button %@", sender.tag);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
