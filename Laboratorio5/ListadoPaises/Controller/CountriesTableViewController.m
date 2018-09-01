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
#import "SubdivisionDetailViewController.h"

@interface CountriesTableViewController ()
@property (nonatomic, strong) NSArray *countries;
@property (nonatomic, strong) Subdivision *selectedSubdivision;
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
    return  [self countryForSection:section].name;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedSubdivision = [self subdivisionForIndexPath:indexPath];
    [self performSegueWithIdentifier:@"goToDetail" sender:self];
}

- (Subdivision *)subdivisionForIndexPath:(NSIndexPath *)indexPath {
    Country *country = [self countryForIndexPath:indexPath];
    return country.subdivisions[indexPath.row];
}

- (Country *)countryForIndexPath:(NSIndexPath *)indexPath {
    return [self countryForSection:indexPath.section];
}

- (Country *)countryForSection:(NSInteger)section {
    return self.countries[section];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"goToDetail"]) {
        SubdivisionDetailViewController *detailVC = (SubdivisionDetailViewController *)segue.destinationViewController;
        detailVC.subdivision = self.selectedSubdivision;
    }
}

/*
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
*/
@end
