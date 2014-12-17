//
//  UserDefaults.m
//
//  Created by YAMAGUCHI Masato.
//  Copyright 2006-2014 Alpha Version Inc.
//

#import "UserDefaults.h"


#pragma mark - Get value

id UDObject(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

NSInteger UDInt(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}

BOOL UDBool(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

float UDFloat(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] floatForKey:key];
}

NSString *UDString(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}

NSData *UDData(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] dataForKey:key];
}

NSArray *UDArray(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] arrayForKey:key];
}

NSDictionary *UDDictionary(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:key];
}


#pragma mark - Get value with default value

id UDObjectWithDefault(NSString *key, id defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDObject(key);
}

NSInteger UDIntWithDefault(NSString *key, NSInteger defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDInt(key);
}

BOOL UDBoolWithDefault(NSString *key, BOOL defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDBool(key);
}

float UDFloatWithDefault(NSString *key, float defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDFloat(key);
}

NSString *UDStringWithDefault(NSString *key, NSString *defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDString(key);
}

NSData *UDDataWithDefault(NSString *key, NSData *defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDData(key);
}

NSArray *UDArrayWithDefault(NSString *key, NSArray *defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDArray(key);
}

NSDictionary *UDDictionaryWithDefault(NSString *key, NSDictionary *defaultValue) {
    if (UDObject(key) == nil) {
        return defaultValue;
    }
    return UDDictionary(key);
}


#pragma mark - Set value

void UDSetObject(NSString *key, id value) {
    if (value) {
        [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
    } else {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void UDSetInt(NSString *key, NSInteger value) {
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void UDSetBool(NSString *key, BOOL value) {
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void UDSetFloat(NSString *key, float value) {
    [[NSUserDefaults standardUserDefaults] setFloat:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void UDSetString(NSString *key, NSString *value) {
    if (value) {
        [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
    } else {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void UDSetData(NSString *key, NSData *value) {
    UDSetObject(key, value);
}

void UDSetArray(NSString *key, NSArray *value) {
    UDSetObject(key, value);
}

void UDSetDictionary(NSString *key, NSDictionary *value) {
    UDSetObject(key, value);
}


#pragma mark - Synchronize

void UDSync() {
    [[NSUserDefaults standardUserDefaults] synchronize];
}
