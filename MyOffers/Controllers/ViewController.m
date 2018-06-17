//
//  ViewController.m
//  MyOffers
//
//  Created by User on 11.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "OffersController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    //loginButton.readPermissions = @[@"public_profile", @"email"];
    //PFUser *FBUser = [PFUser FBUser];
    
    [self.view addSubview:loginButton];
}

-(IBAction)goToOffers:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    OffersController* controller = [storyboard instantiateViewControllerWithIdentifier:@"OffersController"];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
