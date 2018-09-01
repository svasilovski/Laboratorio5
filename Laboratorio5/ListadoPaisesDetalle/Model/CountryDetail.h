//
//  CountryDetail.h
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubdivisionDetail.h"

@interface CountryDetail : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, copy) NSMutableArray *subdivisions;

- (instancetype)initWithName:(NSString *)name;
- (void)addSubdivision:(SubdivisionDetail *)subdivision;

@end
