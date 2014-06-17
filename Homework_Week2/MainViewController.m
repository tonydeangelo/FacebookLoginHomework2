//
//  MainViewController.m
//  Homework_Week2
//
//  Created by Tony DeAngelo on 6/13/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

#import "MainViewController.h"
#import "FeedScreenViewController.h"

@interface MainViewController ()
- (IBAction)disableButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingView;

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
- (IBAction)onLoginButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *formBackgroundView;

@property (weak, nonatomic) IBOutlet UIImageView *logoView;


@property (weak, nonatomic) IBOutlet UIButton *loginView;

- (IBAction)usernameView:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *usernameView;

@property (weak, nonatomic) IBOutlet UIView *formView;

- (IBAction)onTapDismiss:(id)sender;

@property (nonatomic) BOOL iskeyboardup;

-(void)checkResponse;


@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.formBackgroundView.layer .cornerRadius = 4;
    
    self.loginView.layer .cornerRadius = 4;
    
    self.loginButton.enabled = NO;
    
   
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

    
    
- (IBAction)onTapDismiss:(id)sender {
    
    
    [self.view endEditing:YES];
    
    if (self.iskeyboardup)
   
    {
        NSLog(@"Tapped Dismiss");
        CGRect frame = self.logoView.frame;
        frame.origin.y = frame.origin.y +30;
        self.logoView.frame = frame;
        
        NSLog(@"Tapped Dismiss");
        CGRect frame1 = self.formView.frame;
        frame1.origin.y = frame1.origin.y +20;
        self.formView.frame = frame1;
        
        NSLog(@"Tapped Dismiss");
        CGRect frame2 = self.loginView.frame;
        frame2.origin.y = frame2.origin.y +50;
        self.loginView.frame = frame2;
        
        
        NSLog(@"Tapped Dismiss");
        CGRect frame3 = self.formView.frame;
        frame3.origin.y = frame3.origin.y +20;
        self.formView.frame = frame3;
        
        
        NSLog(@"Tapped Dismiss");
        CGRect frame4 = self.loadingView.frame;
        frame4.origin.y = frame4.origin.y +50;
        self.loadingView.frame = frame4;
        
        
    }
    
    
    self.iskeyboardup = NO;
}
    

- (IBAction)usernameView:(id)sender {
    
   if (!self.iskeyboardup)
        
    {
    NSLog(@"Tapped Up Button");
    CGRect frame = self.logoView.frame;
    frame.origin.y = frame.origin.y -30;
    self.logoView.frame = frame;
    
    NSLog(@"Tapped Up Button");
    CGRect frame1 = self.formView.frame;
    frame1.origin.y = frame1.origin.y -20;
    self.formView.frame = frame1;
    
    NSLog(@"Tapped Up Button");
    CGRect frame2 = self.loginView.frame;
    frame2.origin.y = frame2.origin.y -50;
    self.loginView.frame = frame2;
        
   
    NSLog(@"Tapped Up Button");
    CGRect frame3 = self.formView.frame;
    frame3.origin.y = frame3.origin.y -20;
    self.formView.frame = frame3;
        
    NSLog(@"Tapped Dismiss");
    CGRect frame4 = self.loadingView.frame;
    frame4.origin.y = frame4.origin.y -50;
    self.loadingView.frame = frame4;
        
    }
    self.iskeyboardup = YES;
}








- (IBAction)onLoginButton:(id)sender {
    [self.loadingView startAnimating];
    

    [self performSelector:@selector(checkResponse) withObject:nil afterDelay:2];
   

  
    
    }

-(void)checkResponse {
    [self.loadingView stopAnimating];
    
    if ([[self.inputField.text
          lowercaseString]
         isEqualToString:@"yahoosports@yahoo.com"]
        
        &&
        
        [[self.passwordField.text
           lowercaseString]
          isEqualToString:@"password"])
    {
        FeedScreenViewController *vc = [[FeedScreenViewController alloc] init];
        
        vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
        [self presentViewController:vc animated:YES completion:nil];
        
    } else {
        UIAlertView *alertView =
        [[UIAlertView alloc]
         initWithTitle:@"Incorrect Password" message:@"The password you entered is incorrect. Please try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]
        ;     [alertView show];}
    
    self.inputField.text = @"";
    self.passwordField.text = @"";
   
}


- (IBAction)disableButton:(id)sender {
    if ([self.inputField.text
         isEqualToString:@""]) {
        self.loginButton.enabled = NO;
    } else {
        self.loginButton.enabled = YES;
    }
    
    
}
@end
