//
//  ViewController.m
//  TagView
//
//  Created by snowlu on 2017/8/7.
//  Copyright © 2017年 ZhunKuaiTechnology. All rights reserved.
//

#import "ViewController.h"
#import "SLTagView.h"

#define FontPingFangSC(Size) [UIFont fontWithName:@"PingFangSC-Regular" size:Size]

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorFromRGBA(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

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
    self.tagView.tagFont =FontPingFangSC(12);
    self.tagView.tagSelectedFont =FontPingFangSC(12);
    self.tagView.tagHeight =25;
    self.tagView.tagcornerRadius  = 5;
    self.tagView.allowsSelection =YES;
    self.tagView.allowsMultipleSelection  =YES;
    self.tagView.contenBGColor  = [UIColor whiteColor];
     self.tagView.tagNormaBackgroundlColor  = [UIColor whiteColor];
    self.tagView.tagSelectedBackgroundColor  = [UIColor whiteColor];
    self.tagView.tagSelectedTextColor  = UIColorFromRGB(0xff758c);
    self.tagView.tagNormaTextColor  = UIColorFromRGB(0X646464);
    self.tagView.tagSelectedBoaderColor  = UIColorFromRGB(0xff758c);
    self.tagView.tagNormalBoaderColor  = UIColorFromRGB(0Xf0f0f0);
    self.tagView.tagBorderWidth  = 0.5;
    CGRect frame = self.tagView.frame;
    frame.size.height =[self.tagView contentHeigth];
    [ self.tagView setFrame:frame];
    self.tagView.longPressMove =NO;
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
