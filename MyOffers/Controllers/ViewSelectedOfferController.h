//
//  ViewSelectedOfferController.h
//  MyOffers
//
//  Created by User on 13.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Offers.h"

@interface ViewSelectedOfferController : UIViewController {
    IBOutlet UILabel* offerTitle;
    IBOutlet UILabel* offerSubTitle;
    IBOutlet UILabel* offerPrice;
    IBOutlet UILabel* offerLocation;
    IBOutlet UILabel* offerDateCreated;
    IBOutlet UILabel* offerExpirationDate;
}

@property (nonatomic, strong) Offers* selectedOffer;

@end
