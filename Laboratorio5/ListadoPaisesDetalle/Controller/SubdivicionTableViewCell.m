//
//  SubdivicionTableViewCell.m
//  Laboratorio5
//
//  Created by SAMUEL on 1/9/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "SubdivicionTableViewCell.h"

@interface SubdivicionTableViewCell ()
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@end

@implementation SubdivicionTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setSubdivision:(SubdivisionDetail *)subdivision {
    _subdivision = subdivision;
    
    self.nameLabel.text = subdivision.name;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    
    self.nameLabel.text = @"";
}

@end
