//
// Created by Vladimir Burdukov on 16/04/15.
// Copyright (c) 2015 Superjob. All rights reserved.
//

#import "SecondViewModel.h"
#import "LoginHelper.h"
#import "API.h"
#import "Objection.h"
#import "ProfileFacade.h"

@interface SecondViewModel ()
@end

@implementation SecondViewModel
objection_requires(@"loginHelper", @"profileFacade")
@end