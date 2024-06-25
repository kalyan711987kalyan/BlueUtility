// The Swift Programming Language
// https://docs.swift.org/swift-book

import CoreBluetooth

public class BlueUtility: NSObject {
    public static let `default` = BlueUtility()
    deinit {
        print("Scan deinitialized")
    }
    
    private var manager: CBCentralManager!
    
    public var isBluetoothAvailable: Bool {
        if manager == nil {
            return false
        } else {
            return manager.state == .poweredOn
        }
    }
    
    public func setUp() {
        manager = CBCentralManager(
            delegate: self,
            queue: .main,
            options: nil
        )
    }
}

extension BlueUtility: CBCentralManagerDelegate {
    public func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print("centralManagerDidUpdateState")
    }
    
}
