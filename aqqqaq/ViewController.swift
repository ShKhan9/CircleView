 
import UIKit

class ViewController: UIViewController , CAAnimationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let df =  UINib(nibName: "asd", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! qw
        
         df.frame = CGRect.init(x: 20, y: 20, width: 100, height: 100)
       
         self.view.addSubview(df)
     
     
    }

    @IBAction func cclicked(_ sender: Any) {
        
      
        self.navigationController!.pushViewController(tyyViewController(nibName: "tyyViewController", bundle: nil), animated: true)
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension BinaryInteger {
    var degreesToRadians: CGFloat { return CGFloat(Int(self)) * .pi / 180 }
}

extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}
