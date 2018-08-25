//
//  Subdivision.h
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subdivision : NSObject

@property (nonatomic, readonly) NSString *name;

- (instancetype)initWithName:(NSString *)name;
+ (Subdivision *)subdivisionWithName:(NSString *)name;


@end
