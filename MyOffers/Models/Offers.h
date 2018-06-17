//
//  Offers.h
//  MyOffers
//
//  Created by User on 13.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Offers : NSObject
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* subTitle;
@property (nonatomic, strong) NSString* price;
//@property (nonatomic, strong) NSString* description;
@property (nonatomic, strong) NSString* sellerInfo;
@property (nonatomic, strong) NSString* location;
@property (nonatomic, strong) NSString* dateCreated;
@property (nonatomic, strong) NSString* expirationDate;

@end
