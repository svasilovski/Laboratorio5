//
//  Subdivision.m
//  Laboratorio5
//
//  Created by SAMUEL on 1/9/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "Subdivision.h"

@implementation Subdivision

- (instancetype)initWithName:(NSString *)name
                     details:(NSString *)details
                       image:(UIImage *)image
{
    self = [super init];
    if (self) {
        _name = name;
        _details = details;
        _image = image;
    }
    return self;
}

+ (Subdivision *)subdivisionWithName:(NSString *)name
                             details:(NSString *)details
                               image:(UIImage *)image {
    return [[Subdivision alloc] initWithName:name
                                     details:details
                                       image:image];
}

@end
