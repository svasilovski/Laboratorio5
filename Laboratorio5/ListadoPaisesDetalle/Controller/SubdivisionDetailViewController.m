//
//  SubdivisionDetailViewController.m
//  Laboratorio5
//
//  Created by SAMUEL on 1/9/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "SubdivisionDetailViewController.h"

@interface SubdivisionDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation SubdivisionDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.subdivision = self.subdivision;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setSubdivision:(SubdivisionDetail *)subdivision {
    _subdivision = subdivision;
    
    self.titleLabel.text = _subdivision.name;
    self.descriptionLabel.text = _subdivision.details;
    self.imageView.image = _subdivision.image;
}
@end
