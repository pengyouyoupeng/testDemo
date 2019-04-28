//
//  ViewController.m
//  数组融合
//
//  Created by wm-eichong on 2019/4/28.
//  Copyright © 2019年 wm-eichong. All rights reserved.
//

#import "ECViewController.h"

@interface ECViewController ()

@end

@implementation ECViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arrA = @[@(1),@(2),@(3),@(4),@(5),@(6),@(7),@(8),@(9),@(10),@(11),@(12)];
//    NSArray *arrB = @[@(14)];
//    NSArray *arrA =  @[@(1),@(2),@(3)];
    NSArray *arrB =  @[@(14),@(15)];
    NSMutableArray *arrD = [self justByArr:arrA arrB:arrB];
    NSLog(@"%@",arrD);
   
    
}

- (NSMutableArray *)justByArr:(NSArray *)arrA  arrB:(NSArray *)arrB{
     NSMutableArray *arrC = [NSMutableArray array];
    if (arrA.count>0&&arrB.count==0) {
        arrC = [NSMutableArray arrayWithArray:arrA];
    }else if (arrA.count==0&&arrB.count>0){
        arrC = [NSMutableArray arrayWithArray:arrB];
    }else if(arrA.count==0&&arrB.count==0){
        arrC = nil;
    }else{
        
        if (arrA.count<4) {
            [arrC addObjectsFromArray:arrA];
            [arrC addObjectsFromArray:arrB];
        }else{
            
            int j= 0;
                for (int i = 1;i<= arrA.count; i++) {
                      [arrC addObject:arrA[i-1]];
                    if (i%4==0) {
                        
                        if (j<arrB.count) {
                             [arrC addObject:arrB[j]];
                             j++;
                        }
                    
                       
                       // continue;
                    }
                }
            int h = j;
            for (; h<arrB.count; h++) {
                [arrC addObject:arrB[h]];
            }
            
            
        }
   }
    return arrC;
    
    
}

@end



