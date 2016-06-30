//
//  ViewController.m
//  NibTest
//
//  Created by Gero Herkenrath on 30.06.16.
//  Copyright © 2016 Gero Herkenrath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *values;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.values = @[@"One", @"Two", @"Three"];
//	UIView *test = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.tableView.frame.size.width, 20.0)];
//	test.backgroundColor = [UIColor blueColor];
//	self.tableView.tableFooterView = test;
	
	UIView *test;
	NSArray *results = [[NSBundle mainBundle] loadNibNamed:@"FooterView" owner:self options:nil];
	test = [results lastObject];
	self.tableView.tableFooterView = test;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.values.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *retVal = [tableView dequeueReusableCellWithIdentifier:@"mycell"];
	retVal.textLabel.text = self.values[indexPath.row];
	return retVal;
}

@end
