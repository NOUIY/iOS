//
//  EditDeviceViewModel.swift
//  DuckDuckGo
//
//  Copyright © 2023 DuckDuckGo. All rights reserved.
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

class EditDeviceViewModel: ObservableObject {

    let device: SyncSettingsViewModel.Device
    let save: (SyncSettingsViewModel.Device) -> Void
    let remove: () async -> Bool

    @Published var name: String

    init(device: SyncSettingsViewModel.Device,
         save: @escaping (SyncSettingsViewModel.Device) -> Void,
         remove: @escaping () async -> Bool) {
        self.device = device
        self.save = save
        self.remove = remove

        self.name = device.name
    }

    func onDisappear() {
        save(.init(id: device.id, name: name, type: device.type, isThisDevice: device.isThisDevice))
    }
    
}
