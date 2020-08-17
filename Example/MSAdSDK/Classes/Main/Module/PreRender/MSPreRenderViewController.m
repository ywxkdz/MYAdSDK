//
//  MSPreRenderViewController.m
//  MSAdSDKDev
//
//  Created by Liumaos on 2020/8/3.
//  Copyright © 2020 Adxdata. All rights reserved.
//

#import "MSPreRenderViewController.h"
#import "MSPrerenderCell.h"

@interface MSPreRenderViewController ()<MSPrerenderAdDelegate,UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *defaultPidTF;

@property(nonatomic,strong)MSPrerenderAd *  prerenderAd;
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property(nonatomic,strong) NSArray *dataArray;

@end

@implementation MSPreRenderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.defaultPidTF.text = self.defaultPid;
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    [self.tableview registerClass:[MSPrerenderCell class] forCellReuseIdentifier:@"MSPrerenderCell"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat height = 0;
    for (int index=0; index<self.dataArray.count; index++) {
        UIView *obj = self.dataArray[index];
        height+=obj.frame.size.height;
    }
    return height;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MSPrerenderCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MSPrerenderCell"
                                                            forIndexPath:indexPath];
    UIView *adView = self.dataArray[indexPath.row];
    
    [cell updateCell:adView];
    return cell;
}

- (IBAction)refreshAd:(UIButton *)sender {
    
    NSString *pid = self.defaultPidTF.text.length ? self.defaultPidTF.text : self.defaultPid;
    MSPrerenderAd *  prerenderAd = [[MSPrerenderAd alloc]initWithCurController:self];
    self.prerenderAd = prerenderAd;
    prerenderAd.delegate = self;
    
    [prerenderAd loadAd:pid];
    
}

#pragma mark- Delegate

- (void)msPrerenderLoaded:(MSPrerenderAd *)prerenderAd
              adViewArray:(NSArray *)adViewArray{
    
    self.dataArray = adViewArray;
    [self.tableview reloadData];
    
}

- (void)msPrerenderError:(MSPrerenderAd *)prerenderAd
                   error:(NSError *)error{
    
    
}

- (void)msPrerenderRenderSuccess:(UIView *)adView {
    
}

- (void)msPrerenderRenderError:(UIView *)adView error:(NSError *)error{
    
}


- (void)msPrerenderShow:(UIView *)adView{
    
}

- (void)msPrerenderClicked:(UIView *)adView{
    
}


- (void)msPrerenderClosed:(UIView *)adView{
    self.dataArray = nil;
    [self.tableview reloadData];
}


@end
