//
// Created by Vladimir Burdukov on 16/04/15.
// Copyright (c) 2015 Superjob. All rights reserved.
//

#import <Objection/Objection.h>
#import "FirstViewModel.h"
#import "LoginHelper.h"
#import "ProfileFacade.h"

@implementation FirstViewModel
objection_requires(@"loginHelper", @"profileFacade")
@end