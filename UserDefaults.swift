//
//  UserDefaults.swift
//
//  Created by yama.
//  Copyright 2014 Alpha Version Inc.
//

import Foundation


// MARK: Get value

func UDObject(key: String) -> AnyObject? {
    return NSUserDefaults.standardUserDefaults().objectForKey(key)
}

func UDInt(key: String) -> Int {
    return NSUserDefaults.standardUserDefaults().integerForKey(key)
}

func UDBool(key: String) -> Bool {
    return NSUserDefaults.standardUserDefaults().boolForKey(key)
}

func UDFloat(key: String) -> Float {
    return NSUserDefaults.standardUserDefaults().floatForKey(key)
}

func UDString(key: String) -> String? {
    return NSUserDefaults.standardUserDefaults().stringForKey(key)
}

func UDData(key: String) -> NSData? {
    return NSUserDefaults.standardUserDefaults().dataForKey(key)
}

func UDArray(key: String) -> NSArray? {
    return NSUserDefaults.standardUserDefaults().arrayForKey(key)
}

func UDDictionary(key: String) -> NSDictionary? {
    return NSUserDefaults.standardUserDefaults().dictionaryForKey(key)
}


// MARK: Get value with default value

func UDObject(key: String, defaultValue: AnyObject) -> AnyObject? {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDObject(key)
}

func UDInt(key: String, defaultValue: Int) -> Int {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDInt(key)
}

func UDBool(key: String, defaultValue: Bool) -> Bool {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDBool(key)
}

func UDFloat(key: String, defaultValue: Float) -> Float {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDFloat(key)
}

func UDString(key: String, defaultValue: String) -> String? {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDString(key)
}

func UDData(key: String, defaultValue: NSData) -> NSData? {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDData(key)
}

func UDArray(key: String, defaultValue: NSArray) -> NSArray? {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDArray(key)
}

func UDDictionary(key: String, defaultValue: NSDictionary) -> NSDictionary? {
    if UDObject(key) == nil {
        return defaultValue
    }
    return UDDictionary(key)
}


// MARK: Set value

func UDSetObject(key: String, value: AnyObject?) {
    if value == nil {
        NSUserDefaults.standardUserDefaults().removeObjectForKey(key)
    } else {
        NSUserDefaults.standardUserDefaults().setObject(value, forKey: key)
    }
    NSUserDefaults.standardUserDefaults().synchronize()
}

func UDSetInt(key: String, value: Int) {
    NSUserDefaults.standardUserDefaults().setInteger(value, forKey: key)
    NSUserDefaults.standardUserDefaults().synchronize()
}

func UDSetBool(key: String, value: Bool) {
    NSUserDefaults.standardUserDefaults().setBool(value, forKey: key)
    NSUserDefaults.standardUserDefaults().synchronize()
}

func UDSetFloat(key: String, value: Float) {
    NSUserDefaults.standardUserDefaults().setFloat(value, forKey: key)
    NSUserDefaults.standardUserDefaults().synchronize()
}

func UDSetString(key: String, value: NSString?) {
    if (value == nil) {
        NSUserDefaults.standardUserDefaults().removeObjectForKey(key)
    } else {
        NSUserDefaults.standardUserDefaults().setObject(value, forKey: key)
    }
    NSUserDefaults.standardUserDefaults().synchronize()
}

func UDSetData(key: String, value: NSData) {
    UDSetObject(key, value)
}

func UDSetArray(key: String, value: NSArray) {
    UDSetObject(key, value)
}

func UDSetDictionary(key: String, value: NSDictionary) {
    UDSetObject(key, value)
}


// MARK: Synchronize

func UDSync() {
    NSUserDefaults.standardUserDefaults().synchronize()
}
