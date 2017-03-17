#import "ViewController.h"

@interface ViewController ()

@property (copy, nonatomic) NSMutableArray *randomSelection;
@property (assign, nonatomic) NSInteger phone_height;
@property (assign, nonatomic) NSInteger phone_width;

@end

@implementation ViewController

-(void)ui_button_submit:(UIButton*)sender {
  int phone_height  =  self.view.frame.size.height;
  int phone_width  =  self.view.frame.size.width;
  self.phone_height = phone_height;
  self.phone_width = phone_width;
  
  NSMutableArray *randomSelection = [[NSMutableArray alloc] init];
  
  // Set - UIView
  for (int i = 0;  i <= 50; i++) {
    NSLog(@">>> %d" , i);
    UIView *ui_view = [[UIView alloc] initWithFrame:CGRectMake(0, 50 * i , 50,50)];
    [randomSelection addObject:ui_view];
    
    ui_view.backgroundColor = [UIColor redColor];
    [self.view addSubview:ui_view];
  }
  
  UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Made 50 RED UIView"
                                                                 message:@"Will make them Black now" preferredStyle:UIAlertControllerStyleAlert];
  UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
    // Get - UIView
    for (int i = 0; i <= 50; i++) {
      NSLog(@"<<< %d" , i);
      UIView *test = [randomSelection objectAtIndex:i];
      test.backgroundColor = [UIColor blackColor];
    }
  }];
  [alert addAction:defaultAction];
  [self presentViewController:alert animated:YES completion:nil];

}


-(void)ui_button {
  self.view.backgroundColor = [UIColor blackColor];
  UIButton *but = [[UIButton alloc] init];
  [but setTitle:@"--- Add ---" forState:UIControlStateNormal];
  [but setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
  [but addTarget:self action:@selector(ui_button_submit:)
        forControlEvents:UIControlEventTouchUpInside];
  
  int startHeight = 167;
  int frameHeight = self.view.frame.size.height - startHeight;
  [but setFrame:CGRectMake(0, startHeight, 320, frameHeight)];
  
  [but setTranslatesAutoresizingMaskIntoConstraints:false];
  [but setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
  [self.view addSubview:but];
  
  
  NSDictionary *viewsDict = @{@"button" : but};
  [self.view addConstraints:[NSLayoutConstraint
                           constraintsWithVisualFormat:@"V:[button]-0-|"
                           options:0 metrics:nil views:viewsDict]];
  
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:but
      attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual
      toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0
      constant:0];
  constraint.active = true;
  [self.view addConstraint:constraint];
  [self.view layoutIfNeeded];
  
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self ui_button];
}


@end
