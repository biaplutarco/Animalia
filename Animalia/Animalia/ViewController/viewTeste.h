//
//  viewTeste.h
//  Animalia
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface viewTeste : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end
