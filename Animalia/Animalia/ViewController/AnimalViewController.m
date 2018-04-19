//
//  AnimalViewController.m
//  Animalia
//
//  Created by Ada 2018 on 22/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "AnimalViewController.h"

@interface AnimalViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelNomeCientifico;
@property (weak, nonatomic) IBOutlet UIImageView *imagemOrigami;

@end

@implementation AnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _labelNomeCientifico.text = _textoLabelNomeCientificoAnimal;
    [_imagemOrigami setImage:_imgOrigami];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
