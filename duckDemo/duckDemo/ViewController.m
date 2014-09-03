//
//  ViewController.m
//  duckDemo
//
//  Created by niko on 9/3/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "XXDuckEntity.h"


@protocol XXUserEntity <NSObject>
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, strong) NSNumber *age;
@end
@protocol XXStudentEntity <XXUserEntity>
@property (nonatomic, copy) NSString *school;
@property (nonatomic, copy) NSString *teacher;
@end
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *json = @"{\"name\": \"sunnyxx\", \"sex\": \"boy\", \"age\": 24}";
    XXDuckEntity *student = [[XXDuckEntity alloc]initWithJSONString:json];
    [self requestFinished:(id<XXStudentEntity>)student];
    

}

- (void)requestFinished:(id)student
{
    NSLog(@"name: %@, school:%@", [student name], [student school]);
}
@end
