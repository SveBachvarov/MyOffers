//
//  NewOfferController.h
//  MyOffers
//
//  Created by User on 15.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewOfferController : UIViewController {
    IBOutlet UITextField* newOfferTitle;
    IBOutlet UITextField* newOfferSubTitle;
    IBOutlet UITextField* newOfferPrice;
    IBOutlet UITextField* newOfferLocation;
    IBOutlet UITextField* newOfferDescription;
    IBOutlet UITextField* newOfferExpirationDate;
}

@end
