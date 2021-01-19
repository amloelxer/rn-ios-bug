//
//  TestViewController.m
//  iOSLayoutBug
//
//  Created by Alexander Moller on 11/10/20.
//

#import "TestViewController.h"
#import "TestTableViewCell.h"

@interface TestViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TestViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  [self.tableView registerNib:[UINib nibWithNibName:@"TestTableViewCell" bundle: nil] forCellReuseIdentifier:@"cell"];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
  TestTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];

  selectedCell.backgroundColor = [UIColor cyanColor];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 100;
}

@end
