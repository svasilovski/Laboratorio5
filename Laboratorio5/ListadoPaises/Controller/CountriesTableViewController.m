//
//  CountriesTableViewController.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "CountriesTableViewController.h"
#import "CountryService.h"
#import "SubdivisionTableViewCell.h"

@interface CountriesTableViewController ()
@property (nonatomic, strong) NSArray *countries;
@end

@implementation CountriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.countries = [[CountryService new] getAllCountries];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.countries.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Country *country = self.countries[section];
    return country.subdivisions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Country *country = self.countries[indexPath.section];
    Subdivision *subdivision = country.subdivisions[indexPath.row];
    
    SubdivisionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"subdivision cell" forIndexPath:indexPath];
    
    cell.subdivision = subdivision;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    Country *country = self.countries[section];
    return  country.name;
}
@end
