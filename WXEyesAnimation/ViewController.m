//
//  ViewController.m
//  WXEyesAnimation
//
//  Created by hebing on 16/9/12.
//  Copyright © 2016年 hebing. All rights reserved.
//

#import "ViewController.h"
#import "EyesAnimationView.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong) UITableView *tableView;

@property (nonatomic ,strong) EyesAnimationView *animationView;

@end

@implementation ViewController
- (UITableView *)tableView
{
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        //_tableView.backgroundColor = [UIColor blackColor];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
    }
    
    return _tableView;
}
- (EyesAnimationView *)animationView
{
    if (!_animationView) {
        
        _animationView = [[EyesAnimationView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 32, -64, 64, 44)];
    }
    
    return _animationView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self.view addSubview:self.tableView];
    [self.tableView addSubview:self.animationView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    
    cell.textLabel.text = [NSString stringWithFormat:@"index%ld",indexPath.row];
    
    return cell;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"contentOffset===%f",self.tableView.contentOffset.y);
    
    [self.animationView anmationProgress:self.tableView.contentOffset.y];
}
@end
