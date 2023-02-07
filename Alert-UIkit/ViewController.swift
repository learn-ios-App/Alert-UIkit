
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "ボタンを押してね"
    }

    @IBAction func alert1(_ sender: Any) {
        alert(buttonNumber: "ボタン１",
              message: "ボタン1が押されました")
    }
    @IBAction func alert2(_ sender: Any) {
        alert(buttonNumber: "ボタン2",
              message: "ボタン2が押されました")
    }
    @IBAction func alert3(_ sender: Any) {
        alert(buttonNumber: "ボタン3",
              message: "ボタン3が押されました")
    }
    private func alert(buttonNumber: String ,message: String) {
        let alertControll = UIAlertController(
            title: buttonNumber,
            message: message,
            preferredStyle: .alert
        )
        let ok = UIAlertAction(
            title: "OK",
            style: .default,
            handler: { action in
                print("updateを呼びます")
                self.updateLabel(text: buttonNumber)
            }
        )
        alertControll.addAction(ok)
        present(alertControll, animated: true)
    }
    private func updateLabel(text: String) {
        print("updateが呼ばれました")
        resultLabel.text = text + "が押されました"
    }
}
