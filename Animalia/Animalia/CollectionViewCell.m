//
//  CollectionViewCell.m
//  Animalia
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "CollectionViewCell.h"
#import "viewTeste.h"

@implementation CollectionViewCell
- (IBAction)switchBar:(UISwitch *)sender {
    if ([_marcadoSwitch isOn]) {
        NSLog(@"its on!");
        [_marcadoSwitch setOn:YES animated:YES];
        _imgAnimal.alpha = .5;
//        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert" message:@"This is an alert." preferredStyle:UIAlertControllerStyleAlert];
//        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        //viewTeste * viewzinha = [viewTeste new];
        
        //[alert addAction:defaultAction];
        //[viewzinha:alert animated:YES completion:nil];
        
    } else {
        NSLog(@"its off!");
        [_marcadoSwitch setOn:NO animated:YES];
        _imgAnimal.alpha = 1;
    }
}

@end
