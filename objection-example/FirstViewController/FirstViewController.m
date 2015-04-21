//
//  FirstViewController.m
//  Dependency
//

#import "FirstViewController.h"
#import "FirstViewModel.h"
#import "ProfileFacade.h"
#import "LoginHelper.h"
#import <Objection/Objection.h>

@interface FirstViewController ()
@property (nonatomic, strong) FirstViewModel *viewModel;
@end

@implementation FirstViewController
objection_requires(@"viewModel")

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[JSObjection defaultInjector] injectDependencies:self];

    NSLog(@"first %@", self.viewModel);
    NSLog(@"first %@", self.viewModel.loginHelper);
    NSLog(@"first %@", self.viewModel.loginHelper.api);
    NSLog(@"first %@", self.viewModel.profileFacade);
    NSLog(@"first %@", self.viewModel.profileFacade.api);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
