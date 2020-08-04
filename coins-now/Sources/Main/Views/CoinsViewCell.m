//
//  CoinsViewCell.m
//  coins-now
//
//  Created by Mateus Sousa on 04/08/20.
//  Copyright © 2020 Mateus Sousa. All rights reserved.
//

#import "CoinsViewCell.h"

@interface CoinsViewCell()
@property (nonatomic, strong) UIImageView* iconFlag;
@property (nonatomic, strong) UILabel* titleCoin;
@end

@implementation CoinsViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self setupSubviews];
    [self addSubviews];
    [self setupAnchors];
    return self;
}

- (void)setupSubviews {
    self.iconFlag = [[UIImageView alloc] initWithFrame:CGRectZero];
    [self.iconFlag setTranslatesAutoresizingMaskIntoConstraints:false];
    [self.iconFlag setContentMode:UIViewContentModeScaleAspectFit];

    self.titleCoin = [[UILabel alloc] initWithFrame:CGRectZero];
    [self.titleCoin setTranslatesAutoresizingMaskIntoConstraints:false];
    [self.titleCoin setText:@"Test"];
}

- (void)addSubviews {
    [self.contentView addSubview:self.iconFlag];
    [self.contentView addSubview:self.titleCoin];
}

- (void)setupAnchors {
    [[self.titleCoin.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:20] setActive:true];
    [[self.titleCoin.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor] setActive:true];
    [[self.titleCoin.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-20] setActive:true];
}

@end
