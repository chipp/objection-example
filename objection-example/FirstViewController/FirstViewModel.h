//
// Created by Vladimir Burdukov on 16/04/15.
// Copyright (c) 2015 Superjob. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LoginHelper;
@class ProfileFacade;

@interface FirstViewModel : NSObject
@property (nonatomic, strong) LoginHelper *loginHelper;
@property (nonatomic, strong) ProfileFacade *profileFacade;
@end