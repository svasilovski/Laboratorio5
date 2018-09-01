//
//  SubdivisionDetail.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "SubdivisionDetail.h"

@implementation SubdivisionDetail
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

+ (SubdivisionDetail *)subdivisionWithName:(NSString *)name
                             details:(NSString *)details
                               image:(UIImage *)image {
    return [[SubdivisionDetail alloc] initWithName:name
                                     details:details
                                       image:image];
}
@end
