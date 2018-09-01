//
//  CountryServiceDetail.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "CountryServiceDetail.h"

@interface CountryServiceDetail ()

@property (nonatomic, strong) NSMutableArray *countries;

@end

@implementation CountryServiceDetail

- (instancetype)init
{
    self = [super init];
    if (self) {
        _countries = [NSMutableArray array];
        
        
        CountryDetail *argentina = [[CountryDetail alloc] initWithName:@"Argentina"];
        [argentina addSubdivision:[SubdivisionDetail subdivisionWithName:@"Buenos Aires" details:@"Situada en la región centro-este del país, limita al norte con las provincias de Entre Ríos y Santa Fe, al oeste con las provincias de Córdoba, La Pampa y Río Negro, al sur y al este con el mar Argentino del océano Atlántico y al nordeste con el Río de la Plata." image:[UIImage imageNamed:@"bsas"]]];
        [argentina addSubdivision:[self mockedSubdivisionWithName:@"Córdoba"]];
        [argentina addSubdivision:[self mockedSubdivisionWithName:@"Santa Fe"]];
        [argentina addSubdivision:[self mockedSubdivisionWithName:@"Tucumán"]];
        [_countries addObject:argentina];
        
        CountryDetail *uruguay = [[CountryDetail alloc] initWithName:@"Uruguay"];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Colonia"]];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Montevideo"]];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Canelones"]];
        [uruguay addSubdivision:[self mockedSubdivisionWithName:@"Tacuarembó"]];
        [_countries addObject:uruguay];
        
        CountryDetail *eeuu = [[CountryDetail alloc] initWithName:@"Estados Unidos"];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Washington"]];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Carolina del sur"]];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Texas"]];
        [eeuu addSubdivision:[self mockedSubdivisionWithName:@"Alabama"]];
        [_countries addObject:eeuu];
    }
    return self;
}

- (NSArray *)getAllCountries {
    return [NSArray arrayWithArray:self.countries];
}

#pragma mark - helpers

- (SubdivisionDetail *)mockedSubdivisionWithName:(NSString *)name {
    return [SubdivisionDetail subdivisionWithName:name
                                    details:@"Bla bla bla bla bla bla"
                                      image:[UIImage imageNamed:@"blabla"]];
}
@end
