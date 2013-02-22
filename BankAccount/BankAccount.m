//
//  BankAccount.m
//  HelloWorld
//
//  Created by Thiago Bezerra on 2/21/13.
//  Copyright (c) 2013 Thiago Bezerra. All rights reserved.
//
#import "BankAccount.h"

/*write codes for the methods declared on the Interface*/
@implementation BankAccount

/*
 BankAccount *account = [[banckAccount alloc]init];
 
 alloc is a class method inherited from NSObject class used to allocate memory for the instance class
 init is also a class method inherited from NSObject class used to initialize the instance
 there is no need to release the memory allocated when is no longer needed, job now made by ARC (Automatic Reference Counting, selected when cretaing a new project (no need to call class methods like release, retain, dealloc...))
 
 to invoke a method on an instance of a class you put the instance name and the method name inside "[]"
 
 [[banckAccount alloc]init];
 [account1 setAccountNumber: 23434323];
 [account1 setAccount: 23434323 andBalance: 3010.10]; when calling a method on an instance class we don't need to add * to the instance variable.
 
 account1.accountBalance also works as long as it's acessor methods (getters and setters has been declared or the code fail to compile)
 
 variables are declared diferente from java(not a reference to the address of the variable), it allocate memory where it's value is stored (on a method argument, we only pass the value of the variable, not the variable itself)
 
 int myvar = 10;
 int *mypointer; (use of indirection (pointers), we put * before the name of the variable, otherwise the variable will be static)
 *mypointer = &myvar; & makes reference to the address of the variable myvar
 
 NSLog(@"Before call function:  %li", accountNumber);   it return 10
 -(void) myFunction(int i){
 i = i + 10;
 NSLog(@"Inside function:  %li", i);     it return 20
 }
 NSLog(@"After call function:  %li", accountNumber);    it return 10
 */

@synthesize acc2 = _acc2;/* _acc2 is an IVAR implicit created by the Modern Objective-C and after iOS6 release, there is no need to do it anymore, it takes place by default. that IVAR is the access to the property acc2 */

-(void) setAccount:(long)value1 andBalance:(double)value2{
    accountNumber = value1;
    accountBalance = value2;
}

-(void)setAccountBalance:(double)valorBal{
    accountBalance = valorBal;
}

-(double) getAccountBalance{
    return accountBalance;
}

-(void) setAccountNumber:(long)valorNum{
    accountNumber = valorNum;
}

-(long) getAccountNumber{
    return accountNumber;
}

-(void) displayAccInfo{
    NSLog(@"Account Number %li has a balance of %f", accountNumber, accountBalance);
}
@end
