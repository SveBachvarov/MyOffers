//
//  NewOfferController.m
//  MyOffers
//
//  Created by User on 15.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import "NewOfferController.h"
#import "OffersController.h"
#import "ViewSelectedOfferController.h"
#import "Offers.h"
#import <Parse/Parse.h>

@interface NewOfferController ()

@end

@implementation NewOfferController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)saveNewOffer:(id)sender {
    PFObject* offers = [PFObject objectWithClassName:@"Offers"];
    offers[@"Title"] = newOfferTitle.text;
    offers[@"SubTitle"] = newOfferSubTitle.text;
    offers[@"Price"] = newOfferPrice.text;
    offers[@"Location"] = newOfferLocation.text;
    [offers saveInBackgroundWithBlock:^(BOOL succeeded, NSError*  error) {
        if (succeeded) {
            NSLog(@"Offer Uploaded");
        }
        else {
            NSLog(@"There Is Error With Uploading");
        }
    }];
}

-(IBAction)cancelNewOffer:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NewOfferController* controller = [storyboard instantiateViewControllerWithIdentifier:@"OffersController"];
    [self presentViewController:controller animated:YES completion:nil];
}

-(IBAction)backButton:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NewOfferController* controller = [storyboard instantiateViewControllerWithIdentifier:@"OffersController"];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
