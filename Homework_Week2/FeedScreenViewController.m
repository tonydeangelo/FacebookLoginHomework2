//
//  FeedScreenViewController.m
//  Homework_Week2
//
//  Created by Tony DeAngelo on 6/15/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

#import "FeedScreenViewController.h"
#import "MainViewController.h"


@interface FeedScreenViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityspinner;

@property (weak, nonatomic) IBOutlet UIScrollView *onScrollView;
- (IBAction)onBackButton:(id)sender;

-(void)showScrollView;


@end

@implementation FeedScreenViewController

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
    
    [self.activityspinner startAnimating];
    
    self.onScrollView.alpha = 0;
    
    [self performSelector:@selector(showScrollView) withObject:nil afterDelay:2];
    
    self.onScrollView.contentSize = CGSizeMake(320,1200);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBackButton:(id)sender {
    
    MainViewController *vc = [[MainViewController alloc] init];
    
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    [self presentViewController:vc animated:YES completion:nil];
}

-(void)showScrollView{
    
    {
        [UIView animateWithDuration:.5 animations:^{
            self.onScrollView.alpha = 1;
        }];
        
        [self.activityspinner stopAnimating];
    }
    

    
}
@end
