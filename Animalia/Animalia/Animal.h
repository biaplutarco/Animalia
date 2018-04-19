//
//  Animal.h
//  Animalia
//
//  Created by Ada 2018 on 22/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animal : NSObject

@property UIImage *imgInsideOrigami;
@property NSString *textoInsideOrigami;
@property UIImage *imgBtn;
@property NSString *nomeOrigami;

//ver a imagem

- (instancetype)initWithImgBtn: (UIImage *)aImgBtn andNomeOrigami: (NSString *) aNomeOrigami andImgInsideOrigami: (UIImage *)aImgInsideOrigami andTextoInsideOrigami: (NSString *)aTextInsideOrigami;

@end
