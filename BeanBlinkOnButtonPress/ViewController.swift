import UIKit
import Bean_iOS_OSX_SDK

class ViewController: UIViewController, PTDBeanManagerDelegate, PTDBeanDelegate{
    
    // Declare variables we will use throughout the app
    var beanManager: PTDBeanManager?
    var yourBean: PTDBean?
    var lightState: Bool = false

    // MARK: Properties
    @IBOutlet weak var ledTextLabel: UILabel!
    
    // After view is loaded into memory, we create an isntance of PTDBeanManager
    // and assign ourselves as the delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        beanManager = PTDBeanManager()
        beanManager!.delegate = self
    }
    
    // After the view is added we will start scanning for Bean peripherals
    override func viewDidAppear(animated: Bool) {
        startScanning()
    }
    
    // Bean SDK: We check to see if Bluetooth is on.
    func beanManagerDidUpdateState(beanManager: PTDBeanManager!) {
        var scanError: NSError?
        
        if beanManager!.state == BeanManagerState.PoweredOn {
            startScanning()
            if var e = scanError {
                print(e)
            } else {
                print("Please turn on your Bluetooth")
            }
        }
    }
    
    // Scan for Beans
    func startScanning() {
        var error: NSError?
        beanManager!.startScanningForBeans_error(&error)
        if let e = error {
            print(e)
        }
    }
    
    // We connect to a specific Bean
    func beanManager(beanManager: PTDBeanManager!, didDiscoverBean bean: PTDBean!,
        error: NSError!) {
            if let e = error {
                print(e)
        }

        print("Found a Bean: \(bean.name)")
        if bean.name == "yourBean" {
            yourBean = bean
            print("got your bean")
            connectToBean(yourBean!)
        }
    }
    
    // Bean SDK: connects to Bean
    func connectToBean(bean: PTDBean) {
        var error: NSError?
        beanManager?.connectToBean(bean, error: &error)
    }
    
    // Bean SDK: Send serial datat to the Bean
    func sendSerialData(beanState: NSData) {
        yourBean?.sendSerialData(beanState)
    }
    
    // Change LED text when button is pressed
    func updateLedStatusText(lightState: Bool) {
        let onOffText = lightState ? "ON" : "OFF"
        ledTextLabel.text = "Led is: \(onOffText)"
    }
    
    // Mark: Actions
    // When we pressed the button, we change the light state and
    // We update date the label, and send the Bean serial data
    @IBAction func pressMeButtonToToggleLED(sender: AnyObject) {
        lightState = !lightState
        updateLedStatusText(lightState)
        let data = NSData(bytes: &lightState, length: sizeof(Bool))
        sendSerialData(data)
    
    }
}
