//
//  JudgeNumberRegex.m
//  CalTest
//
//  Created by 刘凯敏 on 16/10/4.
//  Copyright © 2016年 Apress. All rights reserved.
//

#import "JudgeNumberRegex.h"

@implementation JudgeNumberRegex


- (BOOL) isNumber:(NSString*)str{
    
    //这个是匹配数字字符串的正则表达式；
    NSString *numberRegex = @"^[0-9]+$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", numberRegex];
    BOOL isMatch = [pred evaluateWithObject:str];
    
    if (isMatch) {
        //    NSLog(@"匹配");
        
        return true;
    } else {
        //    NSLog(@"不匹配");
        
        return false;
    }  
}  

@end  
