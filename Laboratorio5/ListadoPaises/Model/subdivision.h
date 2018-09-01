//
//  Subdivision.h
//  Laboratorio5
//
//  Created by SAMUEL on 1/9/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Subdivision : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *details;
@property (nonatomic, readonly) UIImage *image;

- (instancetype)initWithName:(NSString *)name
                     details:(NSString *)details
                       image:(UIImage *)image;
+ (Subdivision *)subdivisionWithName:(NSString *)name
                             details:(NSString *)details
                               image:(UIImage *)image;


@end
