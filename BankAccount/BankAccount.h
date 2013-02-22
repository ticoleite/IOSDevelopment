//
//  BankAccount.h
//  HelloWorld
//
//  Created by Thiago Bezerra on 2/21/13.
//  Copyright (c) 2013 Thiago Bezerra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount: NSObject//Standart based class (methods used in creating, managing and destroying instances inherited)

{/* MEMBERS (instance variables of types int, char, float, double, boolean (BOOL) and id) THAT CANNOT BE ACESSED OUTSIDE THE CLASS UNLESS THE DEVELOPER PROVIDES THE GETTERS AND SETTERS*/
    double accountBalance;//instance variables cannot receive initial value
    long accountNumber;
}
/*PROPERTIES make the variable visible inside and outside the class (GETTERS AND SETTERS GENERATED AUTOMATICALLY) - to increase readability, accessing them usig the dot operator (instance.PROPERTYNAME) letting the developer specify MODIFIERS. (@public, @private...)*/
@property (strong, nonatomic) BankAccount *acc2;

/* METHODS (available to be called on the class (by it's instance))*/
-(void)setAccount:(long) value1 andBalance: (double) value2; //(use fo "andBance" for 2+ args)
-(long) getAccountNumber;
-(void) setAccountNumber:(long) valorNum;
//the "-" means that it's a instance method ("+" means class method) - type of return of the method between "()" - name of the method follow by ":" - data type fo argument - name of the argument then ";"
-(double) getAccountBalance;
-(void) setAccountBalance:(double) valorBal;
-(void) displayAccInfo;
@end
