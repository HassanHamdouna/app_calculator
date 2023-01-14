import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      let METHOO_CHANNEL_NAME = "hassan.com/battery"
      let batterChannel = FlutterMethodChannel(
      name: METHOO_CHANNEL_NAME,
      binaryMessenger: controller.binaryMessenger)
      
      batterChannel.setMethodCallHandler({
          (call: FlutterMethodCall,result: @escaping FlutterResult) -> Void in
          switch call.method{
          case "getBatteryLel" :
              guard let args = call.arguments as? [String:String] else {return}
              let name = args["name"]!
              
              result(self.receiveBatteryLevel())
              
          default:
              result(FlutterMethodNotImplemented)
          }
      })
      
      
      GeneratedPluginRegistrant.register(with: self)
    return super.application(application,didFinishLaunchingWithOptions:
                                launchOptions)
  }
    
    
    private func receiveBatteryLevel() -> Int {
        let device = UIDevice.current
        device.isBatteryMonitoringEnabled = true
        
        if device.batteryState == UIDevice.BatteryState.unknown {
            return -1
        }else{
            return Int(device.batteryLevel * 100)
        }
    }

}


