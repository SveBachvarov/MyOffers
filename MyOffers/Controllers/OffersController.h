//
//  OffersController.h
//  MyOffers
//
//  Created by User on 13.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OffersController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource> {
    IBOutlet UICollectionView* collectionView;
    
    NSMutableArray* offers;
}

@end
