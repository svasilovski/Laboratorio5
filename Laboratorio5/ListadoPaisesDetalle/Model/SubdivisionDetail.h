//
//  SubdivisionDetail.h
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubdivisionDetail : NSObject
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *details;
@property (nonatomic, readonly) UIImage *image;

- (instancetype)initWithName:(NSString *)name
                     details:(NSString *)details
                       image:(UIImage *)image;
+ (SubdivisionDetail *)subdivisionWithName:(NSString *)name
                             details:(NSString *)details
                               image:(UIImage *)image;

@end
