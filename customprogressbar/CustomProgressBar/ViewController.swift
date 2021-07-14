//  Created by Schoo Wer on 14/7/2564 BE.

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var progressBar1: ProgressBar!
 
  
  var countFired: CGFloat = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.progressBar1.progress = 0
  }
  
  private func showCase() {
    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
      self.countFired += 1
      
      DispatchQueue.main.async {
        self.progressBar1.progress = min(CGFloat(0.04 * self.countFired), 1)
        
     
      }
    }
  }
  
@IBAction func AddClicked(_ sender: Any) {
    if(self.progressBar1.progress < 100){
        self.progressBar1.progress = self.progressBar1.progress + 0.05
    }
    }

@IBAction func reduceClicked(_ sender: Any) {
    if(self.progressBar1.progress > 0){
        self.progressBar1.progress = self.progressBar1.progress - 0.05
        }
}
    
}

