//
//  Animal.m
//  Animalia
//
//  Created by Ada 2018 on 22/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Animal.h"


@implementation Animal

- (instancetype)initWithImgBtn: (UIImage *)aImgBtn andNomeOrigami: (NSString *) aNomeOrigami andImgInsideOrigami: (UIImage *)aImgInsideOrigami andTextoInsideOrigami: (NSString *)aTextInsideOrigami{
    if(self = [super init]){
        _imgBtn = aImgBtn;
        _nomeOrigami = aNomeOrigami;
        _textoInsideOrigami = aTextInsideOrigami;
        _imgInsideOrigami = aImgInsideOrigami;
    }
    return self;
}




@end
