//
//  CollectionViewCell.h
//  Animalia
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imgAnimal;
@property (weak, nonatomic) IBOutlet UISwitch *marcadoSwitch;

@end
