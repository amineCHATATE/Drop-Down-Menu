//
//  ViewController.h
//  testdropdownmenu
//
//  Created by Amine CHATATE on 24/09/2017.
//  Copyright © 2017 Amine CHATATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIButton *menuButton;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)menuPressed:(UIButton *)sender;

@property (strong, nonatomic) NSArray * data;

@end

