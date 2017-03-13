#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  //UIButton *but= [UIButton buttonWithType:UIButtonTypeRoundedRect];
  UIButton *but = [[UIButton alloc] init];
  [but setTitle:@"ABCD" forState:UIControlStateNormal];
  [but setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
  [but addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
  
  int startHeight = 167;
  int frameHeight = self.view.frame.size.height - startHeight;
  [but setFrame:CGRectMake(0, startHeight, 320, frameHeight)];
  
  [but setTranslatesAutoresizingMaskIntoConstraints:false];
  [but setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
  [self.view addSubview:but];
  
  
  NSDictionary *viewsDict = @{@"button" : but};
  [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[button]-0-|"
                                                                    options:0 metrics:nil views:viewsDict]];
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:but attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
  constraint.active = true;
  [self.view addConstraint:constraint];
  [self.view layoutIfNeeded];
}


-(void) buttonClicked:(UIButton*)sender {
  NSLog(@"you clicked on button %@", sender.tag);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}


@end
