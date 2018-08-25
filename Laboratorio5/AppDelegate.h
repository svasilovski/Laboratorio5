//
//  AppDelegate.h
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

