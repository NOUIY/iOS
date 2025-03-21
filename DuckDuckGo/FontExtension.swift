//
//  FontExtension.swift
//  DuckDuckGo
//
//  Copyright © 2022 DuckDuckGo. All rights reserved.
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
import SwiftUI

extension Font {
    
    enum ProximaNovaWeight: String {
        case light
        case regular
        case semiBold = "semibold"
        case bold
        case extraBold = "extrabold"
    }
    
    static func proximaNova(size: CGFloat, weight: ProximaNovaWeight = .regular) -> Self {
        let fontName = "proximanova-\(weight.rawValue)"
        return .custom(fontName, size: size)
    }
    
}
