//
//  CountryService.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "CountryService.h"

@interface CountryService ()

@property (nonatomic, strong) NSMutableArray *countries;

@end

@implementation CountryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _countries = [NSMutableArray array];
        
        Country *argentina = [[Country alloc] initWithName:@"Argentina"];
        [argentina addSubdivision:[Subdivision subdivisionWithName:@"Buenos Aires"]];
        [argentina addSubdivision:[Subdivision subdivisionWithName:@"Córdoba"]];
        [argentina addSubdivision:[Subdivision subdivisionWithName:@"Santa Fe"]];
        [argentina addSubdivision:[Subdivision subdivisionWithName:@"Tucumán"]];
        [_countries addObject:argentina];
        
        Country *uruguay = [[Country alloc] initWithName:@"Uruguay"];
        [uruguay addSubdivision:[Subdivision subdivisionWithName:@"Colonia"]];
        [uruguay addSubdivision:[Subdivision subdivisionWithName:@"Montevideo"]];
        [uruguay addSubdivision:[Subdivision subdivisionWithName:@"Canelones"]];
        [uruguay addSubdivision:[Subdivision subdivisionWithName:@"Tacuarembó"]];
        [_countries addObject:uruguay];
        
        Country *eeuu = [[Country alloc] initWithName:@"Estados Unidos"];
        [eeuu addSubdivision:[Subdivision subdivisionWithName:@"Washington"]];
        [eeuu addSubdivision:[Subdivision subdivisionWithName:@"Carolina del sur"]];
        [eeuu addSubdivision:[Subdivision subdivisionWithName:@"Texas"]];
        [eeuu addSubdivision:[Subdivision subdivisionWithName:@"Alabama"]];
        [_countries addObject:eeuu];
    }
    return self;
}

- (NSArray *)getAllCountries {
    return [NSArray arrayWithArray:self.countries];
}

@end
