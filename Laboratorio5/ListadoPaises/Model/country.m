//
//  Country.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "Country.h"

@implementation Country

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _subdivisions = [NSMutableArray array];
    }
    return self;
}

- (void)addSubdivision:(Subdivision *)subdivision {
    [_subdivisions addObject:subdivision];
}

@end
