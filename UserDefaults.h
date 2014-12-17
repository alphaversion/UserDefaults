//
//  UserDefaults.m
//
//  Created by yama.
//	Copyright 2006-2014 Alpha Version Inc.
//

#import <Foundation/Foundation.h>


#pragma mark - Get value

id UDObject(NSString *key);
NSInteger UDInt(NSString *key);
BOOL UDBool(NSString *key);
float UDFloat(NSString *key);
NSString *UDString(NSString *key);
NSData *UDData(NSString *key);
NSArray *UDArray(NSString *key);
NSDictionary *UDDictionary(NSString *key);


#pragma mark - Get value with default value

id UDObjectWithDefault(NSString *key, id defaultValue);
NSInteger UDIntWithDefault(NSString *key, NSInteger defaultValue);
BOOL UDBoolWithDefault(NSString *key, BOOL defaultValue);
float UDFloatWithDefault(NSString *key, float defaultValue);
NSString *UDStringWithDefault(NSString *key, NSString *defaultValue);
NSData *UDDataWithDefault(NSString *key, NSData *defaultValue);
NSArray *UDArrayWithDefault(NSString *key, NSArray *defaultValue);
NSDictionary *UDDictionaryWithDefault(NSString *key, NSDictionary *defaultValue);


#pragma mark - Set value

void UDSetObject(NSString *key, id value);
void UDSetInt(NSString *key, NSInteger value);
void UDSetBool(NSString *key, BOOL value);
void UDSetFloat(NSString *key, float value);
void UDSetString(NSString *key, NSString *value);
void UDSetData(NSString *key, NSData *value);
void UDSetArray(NSString *key, NSArray *value);
void UDSetDictionary(NSString *key, NSDictionary *value);


#pragma mark - Synchronize

void UDSync();
