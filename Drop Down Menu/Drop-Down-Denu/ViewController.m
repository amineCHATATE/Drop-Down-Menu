//
//  ViewController.m
//  testdropdownmenu
//
//  Created by Amine CHATATE on 24/09/2017.
//  Copyright © 2017 Amine CHATATE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.data = [[NSArray alloc] initWithObjects:@"value 1", @"value 2", @"value 3", @"value 4", @"value 5", @"value 6", nil];
    self.tableView.hidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    [self.menuButton setTitle:cell.textLabel.text forState:UIControlStateNormal];
    self.tableView.hidden = YES;
}


- (IBAction)menuPressed:(UIButton *)sender {
    if (self.tableView.hidden == YES) {
        self.tableView.hidden = NO;
    } else {
        self.tableView.hidden = YES;
    }
}
@end
