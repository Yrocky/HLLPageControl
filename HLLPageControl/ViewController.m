//
//  ViewController.m
//  HLLPageControl
//
//  Created by Rocky Young on 16/11/12.
//  Copyright © 2016年 HLL. All rights reserved.
//

#import "ViewController.h"
#import "HLLPageControl.h"

@interface ViewController ()
@property (nonatomic ,strong) HLLPageControl * codePageControl;
@property (nonatomic ,assign) NSInteger codeCurrentPage;

@property (weak, nonatomic) IBOutlet HLLPageControl *nibPageControl;
@property (nonatomic ,assign) NSInteger nibCurrentPage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _codeCurrentPage = 0;
    _nibCurrentPage = 0;
    
    CGFloat width = CGRectGetWidth(self.view.bounds);
    
    _codePageControl = [[HLLPageControl alloc] initWithFrame:CGRectMake(0, 100, width, 60)];
    _codePageControl.backgroundColor = [UIColor lightTextColor];
    _codePageControl.hidePageControlWhenSinglePage = NO;
    _codePageControl.numberOfPages = 5;
    [self.view addSubview:_codePageControl];
    
}
- (IBAction)resetButtonAction:(id)sender {
    
    _codeCurrentPage = 0;
    _nibCurrentPage = 0;
    _codePageControl.numberOfPages = arc4random() % 7;
    _nibPageControl.numberOfPages = arc4random() % 8;
}
- (IBAction)nibButtonAction:(id)sender {
    
    if (_nibCurrentPage >= _nibPageControl.numberOfPages - 1) {
        _nibCurrentPage = 0;
    }else{
        
        _nibCurrentPage += 1;
    }
    NSLog(@"nib:%ld",(long)_nibCurrentPage);
    
    [_nibPageControl setupPageControlCurrentPage:_nibCurrentPage];
    
}
- (IBAction)codeButtonAction:(id)sender {
    
    if (_codeCurrentPage >= _codePageControl.numberOfPages - 1) {
        _codeCurrentPage = 0;
    }else{
    
        _codeCurrentPage += 1;
    }
    NSLog(@"code:%ld",(long)_codeCurrentPage);
    
    [_codePageControl setupPageControlCurrentPage:_codeCurrentPage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
