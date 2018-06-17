//
//  OfferCell.h
//  MyOffers
//
//  Created by User on 13.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OfferCell : UICollectionViewCell

@property (nonatomic, strong) IBOutlet UILabel* title;
@property (nonatomic, strong) IBOutlet UILabel* subTitle;
@property (nonatomic, strong) IBOutlet UILabel* price;
@property (nonatomic, strong) IBOutlet UILabel* location;
//@property (nonatomic, strong) IBOutlet UILabel* description;

@end
