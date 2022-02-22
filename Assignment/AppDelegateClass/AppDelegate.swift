import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

// MARK: - var

var window: UIWindow?

func application(_ application: UIApplication,
                 didFinishLaunchingWithOptions
                 launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = .black
    // calling set root method.
    setRoot()
    return true
}

// MARK: - for setting root

func setRoot() {
    self.window = UIWindow(frame: UIScreen.main.bounds)
    let nav1 = UINavigationController()
    // ViewController = Name of first controller
    let mainView = CityListVC()
    nav1.viewControllers = [mainView]
    self.window!.rootViewController = nav1
    self.window?.makeKeyAndVisible()
    }
}
