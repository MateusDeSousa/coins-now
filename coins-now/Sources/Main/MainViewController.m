//
//  MainViewController.m
//  coins-now
//
//  Created by Mateus Sousa on 21/06/20.
//  Copyright © 2020 Mateus Sousa. All rights reserved.
//

#import "MainViewController.h"
#import "UIColor+Layout.h"
#import "CoinsViewCell.h"

@interface MainViewController ()
@property (nonatomic, strong) UITableView* tableView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self styleContentView];
    [self setupNavigation];
    [self setupSubviews];
    [self addSubviews];
    [self setupAnchors];
}

- (void)styleContentView {
    [self.view setBackgroundColor:UIColor.baseBackground];
}

- (void) setupNavigation {
    UINavigationController* navigation = [self navigationController];
    [navigation.navigationBar setPrefersLargeTitles:true];

    UISearchController *seachbar = [[UISearchController alloc] initWithNibName:nil bundle:nil];
    [self.navigationItem setSearchController:seachbar];
    self.title = @"Coins";
}

- (void)setupSubviews {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero];
    [self.tableView setTranslatesAutoresizingMaskIntoConstraints:false];
    [self.tableView registerClass:[CoinsViewCell class] forCellReuseIdentifier:@"CoinsViewCell"];
    [self.tableView setBackgroundColor: UIColor.baseBackground];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
}

- (void)addSubviews {
    [self.view addSubview:self.tableView];
}

- (void)setupAnchors {
    [[self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor] setActive:YES];
    [[self.tableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor] setActive:YES];
    [[self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor] setActive:YES];
    [[self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor] setActive:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CoinsViewCell" forIndexPath:indexPath];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

@end
