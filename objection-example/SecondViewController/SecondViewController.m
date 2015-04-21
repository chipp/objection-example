//
//  SecondViewController.m
//  Dependency
//


#import "SecondViewController.h"
#import "SecondViewModel.h"
#import "Objection.h"
#import "LoginHelper.h"
#import "ProfileFacade.h"

@interface SecondViewController ()
@property (nonatomic, strong) SecondViewModel *viewModel;
@end

@implementation SecondViewController
objection_requires(@"viewModel")
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[JSObjection defaultInjector] injectDependencies:self];

    NSLog(@"second %@", self.viewModel);
    NSLog(@"second %@", self.viewModel.loginHelper);
    NSLog(@"second %@", self.viewModel.loginHelper.api);
    NSLog(@"second %@", self.viewModel.profileFacade);
    NSLog(@"second %@", self.viewModel.profileFacade.api);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
