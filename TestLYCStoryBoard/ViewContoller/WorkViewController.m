//
//  WorkViewController.m
//  TestLYCStoryBoard
//
//  Created by laiyongche on 16/5/11.
//  Copyright © 2016年 test. All rights reserved.
//

#import "WorkViewController.h"
#import "WorkTableViewCell.h"
#define WorkCellStr  @"CityTableViewCell"

@interface WorkViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation WorkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WorkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:WorkCellStr];
    if(cell == nil)
    {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WorkTableViewCell" owner:self options:nil] lastObject];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
