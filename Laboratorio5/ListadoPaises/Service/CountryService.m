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
        [argentina addSubdivision:[Subdivision subdivisionWithName:@"Buenos Aires" details:@"Situada en la región centro-este del país, limita al norte con las provincias de Entre Ríos y Santa Fe, al oeste con las provincias de Córdoba, La Pampa y Río Negro, al sur y al este con el mar Argentino del océano Atlántico y al nordeste con el Río de la Plata." image:[UIImage imageNamed:@"bsas"]]];
        [argentina addSubdivision:[self mockedSubdivisionWithName:@"Córdoba"]];
        [argentina addSubdivision:[self mockedSubdivisionWithName:@"Santa Fe"]];
        [argentina addSubdivision:[self mockedSubdivisionWithName:@"Tucumán"]];
        [_countries addObject:argentina];
        
        Country *uruguay = [[Country alloc] initWithName:@"Uruguay"];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Colonia"]];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Montevideo"]];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Canelones"]];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Tacuarembó"]];
        [_countries addObject:uruguay];
        
        Country *eeuu = [[Country alloc] initWithName:@"Estados Unidos"];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Washington"]];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Carolina del sur"]];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Texas"]];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Alabama"]];
        [_countries addObject:eeuu];
        
        //[UIImageView alloc] initWithImage:<#(nullable UIImage *)#>
    }
    return self;
}

- (NSArray *)getAllCountries {
    return [NSArray arrayWithArray:self.countries];
}

#pragma mark - helpers

- (Subdivision *)mockedSubdivisionWithName:(NSString *)name {
    return [Subdivision subdivisionWithName:name
                                    details:@"Bla bla bla bla bla bla"
                                      image:[UIImage imageNamed:@"otros"]];
}

/*
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
*/
@end
