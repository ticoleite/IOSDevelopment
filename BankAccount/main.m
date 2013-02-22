//
/*  main.m ité the place to write codes to create an instance of a class (BankAccount) and call the instance methods*/
//  BankAccount
//
//  Created by Thiago Bezerra on 2/21/13.
//  Copyright (c) 2013 Thiago Bezerra. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BankAccount.h"

int main(int argc, char *argv[])
/* this is the starting point of the application*/
{
    @autoreleasepool {
        
        NSNumber *number = @512;/* it's the replacment of NSNumber *number = [NSNumber numberWithInt:512];*/
        /*NSNumber *number2 = @512.123f; it's the replacment of NSNumber *number = [NSNumber numberWithFolat:512.123f];*/
        
        number = @'A';//Character
        number = @YES;//Boolean
        number = @430ul;//Unsigned Long??
        number = @1233ll;//Long Long??
        number = @1233.23f;//Float
        number = @123;//Integer
        number = @123.432;//Double
        
        NSArray *carMakes = @[@"Chevy", @"BMW", @"Ferrari", @"Porshe"]; /*before was like NSArray *carMakes = [[NSArray alloc]initWithObjects:@"Chevy", @"BMW", nil]... IT'S AN IMMUTABLE ARRAY (any change to that array generates a new arry with the values changed)*/
        NSMutableArray *carMakesMutable = [@[@"Chevy", @"BMW"]mutableCopy];
        NSString *modelo = carMakes[0];/*  NSString *modelo = [carMakes objectAtIndex:0] */
        NSDictionary * bookListing = @{@"key1":@"obj1", @"key2":@"obj2", @"key3":@"obj3"};
        NSString *bookObject = bookListing[@"key1"];
        
        BankAccount *account = [[BankAccount alloc]init];
        
        [account setAccountBalance:1500.53];
        [account setAccountNumber:12345678];
        [account displayAccInfo];
        [account setAccount:4543455 andBalance:3010.10];
        NSLog(@"Number = %li, Balance = %f", [account getAccountNumber], [account getAccountBalance]);
    }
    return 0;
}
