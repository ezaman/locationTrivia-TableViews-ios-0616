//
//  FISTriviaTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Ehsan Zaman on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTriviaTableViewController.h"



@interface FISTriviaTableViewController ()

@end

@implementation FISTriviaTableViewController

-(void)viewDidLoad {
    self.view.accessibilityLabel = @"Trivia Table";
    self.view.accessibilityIdentifier = @"Trivia Table";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 1;
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return self.trivia.count;
    }


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailCell" forIndexPath:indexPath];
    
       FISTrivium *trivium = self.trivia[indexPath.row];
       cell.textLabel.text = trivium.content;
    
     return cell;
}













@end
