//
//  ViewSelectedOfferController.m
//  MyOffers
//
//  Created by User on 13.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import "ViewSelectedOfferController.h"
#import "OffersController.h"

@interface ViewSelectedOfferController ()

@end

@implementation ViewSelectedOfferController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    offerTitle.text = self.selectedOffer.title;
    offerSubTitle.text = self.selectedOffer.subTitle;
    offerPrice.text = self.selectedOffer.price;
    offerLocation.text = self.selectedOffer.location;
//    offerDateCreated.text = self.selectedOffer.dateCreated;
    offerExpirationDate.text = self.selectedOffer.expirationDate;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backButton:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    OffersController* controller = [storyboard instantiateViewControllerWithIdentifier:@"OffersController"];
    [self presentViewController:controller animated:YES completion:nil];
}

-(IBAction)addNewOfferButton:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewSelectedOfferController* controller = [storyboard instantiateViewControllerWithIdentifier:@"NewOfferController"];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
