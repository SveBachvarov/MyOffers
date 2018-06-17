//
//  OffersController.m
//  MyOffers
//
//  Created by User on 13.06.18.
//  Copyright © 2018 Project. All rights reserved.
//

#import "OffersController.h"
#import "OfferCell.h"
#import "Offers.h"
#import "ViewController.h"
#import "ViewSelectedOfferController.h"
#import <Parse/Parse.h>

@interface OffersController ()

@end

@implementation OffersController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFQuery* query = [PFQuery queryWithClassName:@"Offers"];
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        
        if(!error) {
            offers = [NSMutableArray new];
            NSLog(@"Succees");
            
            [objects enumerateObjectsUsingBlock:^(PFObject*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                Offers* newOffer = [Offers new];
                newOffer.title = obj[@"Title"];
                newOffer.subTitle = obj[@"SubTitle"];
                newOffer.price = obj[@"Price"];
//                newOffer.description = obj[@"Description"];
//                newOffer.sellerInfo = obj[@"SellerInfo"];
                newOffer.location = obj[@"Location"];
                newOffer.dateCreated = obj[@"createdAt"];
                newOffer.expirationDate = obj[@"ExpirationDate"];
                
//                NSLog(@"%@", newOffer.dateCreated);
//                NSLog(@"%@", newOffer.expirationDate);
                
                [offers addObject:newOffer];
            }];
            
            [collectionView reloadData];
        }
        else {
            NSLog(@"There is error");
        }
    }];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    
    [collectionView reloadData];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return offers.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* cellIdentifier = @"OfferCell";
    OfferCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Offers* currentOffer = offers[indexPath.row];
    
    cell.title.text = currentOffer.title;
    cell.subTitle.text = currentOffer.subTitle;
    cell.price.text = currentOffer.price;
    cell.location.text = currentOffer.location;
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    Offers* currentOffer = offers[indexPath.row];
    
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewSelectedOfferController* controller = [storyboard instantiateViewControllerWithIdentifier:@"ViewSelectedOfferController"];
    controller.selectedOffer = currentOffer;
    [self presentViewController:controller animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
