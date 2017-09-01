//
//  StatisticsUserDefaults.swift
//  DuckDuckGo
//
//  Copyright © 2017 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


import Foundation

public class StatisticsUserDefaults: StatisticsStore {
    
    private let groupName: String
    
    private struct Keys {
        static let cohortVersion = "com.duckduckgo.statistics.cohortVersion.v2.key"
    }
    
    private var userDefaults: UserDefaults? {
        return UserDefaults(suiteName: groupName)
    }
    
    public init(groupName: String =  "group.com.duckduckgo.statistics") {
        self.groupName = groupName
    }
    
    public var cohortVersion: String? {
        
        get {
            return userDefaults?.string(forKey: Keys.cohortVersion)
        }
        
        set {
            userDefaults?.setValue(newValue, forKey: Keys.cohortVersion)
        }
    }
}

