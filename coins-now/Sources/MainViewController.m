//
//  MainViewController.m
//  coins-now
//
//  Created by Mateus Sousa on 21/06/20.
//  Copyright © 2020 Mateus Sousa. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (nonatomic, strong) UITableView* tableView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self styleContentView];
    [self setupNavigation];
    [self addComponents];
    [self setupAnchors];
    [self setupTableView];
}

- (void)setupTableView {
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
}

- (void)styleContentView {
    [self.view setBackgroundColor:UIColor.whiteColor];
}

- (void) setupNavigation {
    UINavigationController* navigation = [self navigationController];
    [navigation.navigationBar setPrefersLargeTitles:true];

    UISearchController *seachbar = [[UISearchController alloc] initWithNibName:nil bundle:nil];
    [self.navigationItem setSearchController:seachbar];
    self.title = @"Coins";
}

- (void)addComponents {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero];
    [self.tableView setTranslatesAutoresizingMaskIntoConstraints:false];
    [self.view addSubview:self.tableView];
}

- (void)setupAnchors {
    [[self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor] setActive:YES];
    [[self.tableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor] setActive:YES];
    [[self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor] setActive:YES];
    [[self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor] setActive:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [[UITableViewCell alloc] initWithFrame:CGRectZero];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

@end
