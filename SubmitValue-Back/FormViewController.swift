import UIKit

class FormViewController: UIViewController {
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBAction func onSubmit(_ sender: Any) {
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else {
            return
        }
        
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true)
    }
}
