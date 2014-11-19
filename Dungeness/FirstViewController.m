//
//  FirstViewController.m
//  Dungeness
//
//  Created by Ma, Liang (Liang) on 11/17/14.
//  Copyright (c) 2014 Ma, Liang (Liang). All rights reserved.
//

#import "FirstViewController.h"

#import "AFHTTPRequestOperationManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *URL0 = [NSURL URLWithString:@"http://date.jsontest.com"];
    NSURLRequest *request0 = [NSURLRequest requestWithURL:URL0];
    AFHTTPRequestOperation *op0 = [[AFHTTPRequestOperation alloc] initWithRequest:request0];
    op0.responseSerializer = [AFJSONResponseSerializer serializer];
   
    [op0 setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    [[NSOperationQueue mainQueue] addOperation:op0];
    
    
    NSURL *URL = [NSURL URLWithString:@"http://headers.jsontest.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    AFHTTPRequestOperation *op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    op.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    [[NSOperationQueue mainQueue] addOperation:op];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
