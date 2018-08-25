//
//  Subdivision.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "Subdivision.h"

@implementation Subdivision

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

+ (Subdivision *)subdivisionWithName:(NSString *)name {
    return [[Subdivision alloc] initWithName:name];
}

@end
