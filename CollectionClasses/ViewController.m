//
//  ViewController.m
//  CollectionClasses
//
//  Created by Pavankumar Arepu on 03/02/2016.
//  Copyright (c) 2016 ppam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *sampleColors = [NSArray arrayWithObjects:@"pen",@"pencil",@"cup",@"milk", nil];
    
    
    NSLog(@"sampleColors:%@",sampleColors);
    
    NSMutableArray *myMutableColorsSet = [NSMutableArray arrayWithObjects:@"Red",@"Green",@"Blue",@"Yellow",sampleColors, nil];
    
    NSLog(@"MySampleColors: %@",myMutableColorsSet);
    
    NSLog(@"NSArray: count: %lu",(unsigned long)[myMutableColorsSet count]);
    
  
    /*
    //Deleting:
    
    [myMutableColorsSet removeObjectAtIndex:0];
    
    [myMutableColorsSet removeObject:@"Blue"];
    
    [myMutableColorsSet insertObject:@"Redish" atIndex:2];
    
    [myMutableColorsSet removeObjectIdenticalTo:@"Red"];
    
    [myMutableColorsSet removeLastObject];

    [myMutableColorsSet removeAllObjects];
    
    [myMutableColorsSet insertObject:@"Green" atIndex:0];
    
    [myMutableColorsSet insertObject:@"Blue" atIndex:1];

    [myMutableColorsSet insertObject:@"Yellow" atIndex:2];

    [myMutableColorsSet insertObject:@"Red" atIndex:3];
    
    NSArray *sortedArray = [myMutableColorsSet sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSLog(@"SortedArray :%@",sortedArray);
    
    */
    
    NSDictionary *bookListing;
    
    bookListing = [[NSDictionary alloc]initWithObjectsAndKeys:@"Pavan",@"Name",@"30",@"Age", nil];

    
//    NSLog(@"bookListing");
    
    NSMutableDictionary *mutBookListing = [NSMutableDictionary dictionary];
    
//    NSMutableDictionary *bookListing = [NSMutableDictionary dictionary]
    
    [mutBookListing setObject:@"Objective C" forKey:@"iOS Course 1"];
    [mutBookListing setObject:@"Swift" forKey:@"iOS Course 2"];
    [mutBookListing setObject:@"30 Days" forKey:@"Duration"];
    [mutBookListing setObject:myMutableColorsSet forKey:@"studentMutableList"];
    [mutBookListing setObject:sampleColors forKey:@"studentImutableList"];
    [mutBookListing setObject:bookListing forKey:@"studentBookList"];
    [mutBookListing setObject:myMutableColorsSet forKey:@"myMutableColorsSet"];
    


    NSLog(@"Dictionary Values :%@",mutBookListing);


    
    [mutBookListing removeObjectForKey:@"studentImutableList"];
    
    [mutBookListing removeAllObjects];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
