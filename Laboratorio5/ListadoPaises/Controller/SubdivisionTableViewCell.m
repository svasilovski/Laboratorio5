//
//  SubdivisionTableViewCell.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "SubdivisionTableViewCell.h"

@interface SubdivisionTableViewCell ()

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

@end

@implementation SubdivisionTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setSubdivision:(Subdivision *)subdivision {
    _subdivision = subdivision;
    
    self.nameLabel.text = subdivision.name;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    
    self.nameLabel.text = @"";
}
@end
