//
//  ViewController.m
//  TagView
//
//  Created by snowlu on 2017/8/7.
//  Copyright © 2017年 ZhunKuaiTechnology. All rights reserved.
//

#import "ViewController.h"
#import "SLTagView.h"
@interface ViewController ()<SLTagViewDelegate>

@property(nonatomic,strong) SLTagView *tagView ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tagView = [[SLTagView alloc] initWithFrame:CGRectMake(10, 100, [UIScreen mainScreen].bounds.size.width-20, 0)];
     self.tagView.backgroundColor = [UIColor whiteColor];
    NSArray *dataArray = @[@"HHFAHKF",@"FFEASFASDF",@"小虾米",@"kfhasdlkfhadskfhaskjfhaskljhflaskjdhflkashfladksj",@"数据",@"我只是一个轮子"];
     self.tagView.tags = dataArray;
     self.tagView.tagcornerRadius  = 10;
    CGRect frame  =  self.tagView.frame;
    self.tagView.backgroundColor  = [UIColor whiteColor];
    self.tagView.tagNormaBackgroundlColor  = [UIColor grayColor];
    frame.size.height  = self.tagView.contentHeigth;
    self.tagView.longPressMove =YES;
    [ self.tagView setFrame:frame];
    self.tagView.allowsSelection =YES;
     self.tagView.delegate  =self;
    [self.view addSubview: self.tagView];
}

- (IBAction)action:(id)sender {
    
      [ self.tagView removeWithIndex:2];
}

-(void)tagView:(SLTagView *)tagView didDeselectTagAtIndex:(NSUInteger)index{
    
  
    
}

-(void)tagView:(SLTagView *)tagView didSelectTagAtIndex:(NSUInteger )index{
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
