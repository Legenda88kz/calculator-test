
import UIKit

class MainController: UIViewController {
    @IBOutlet weak var tablo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablo.text = "0"
        
    }
    var perekluchatel: Bool = false;
    
    var number1: String = "";
    var number2: String = "";
    
    var operation:Int!
    
    
    @IBAction func btnAction(_ sender: UIButton){
        
        if(perekluchatel){
            if(sender.tag==10){
                if(number2==""){
                              number2 = number2 + "0.";
                }else{
                    number2 = number2 + ".";
                }
            }else{
                number2 = number2 + String(sender.tag);
            }
           tablo.text = number2
        }else{
            
            if(sender.tag==10){
                if(number1==""){
                    number1 = number1 + "0.";
                }else{
                    number1 = number1 + ".";
                }
            }else{
                number1 = number1 + String(sender.tag);
            }
            
            tablo.text = number1
        }
    
    }
    
    
    @IBAction func divideAction(_ sender: Any) {
        operation=0
        perekluchatel=true
    }
    
    @IBAction func plusAction(_ sender: Any) {
        operation=1
        perekluchatel=true
    }
    
    @IBAction func minusAction(_ sender: Any) {
        operation=2
        perekluchatel=true
        
    }
    
    @IBAction func umnozhAction(_ sender: Any) {
        operation=3
        perekluchatel=true
    }
    
    @IBAction func rovnoAction(_ sender: Any) {
        var result: Double = 0
        if(operation==0){
            result = Double(number1)!/Double(number2)!
            
        }
        if(operation==1){
            result = Double(number1)!+Double(number2)!
            
        }
        if(operation==2){
            result = Double(number1)!-Double(number2)!
            
        }
        if(operation==3){
            result = Double(number1)!*Double(number2)!
            
        }
        
        tablo.text = String(result)
        perekluchatel=false
    }
    
    @IBAction func clearAction(_ sender: Any) {
        tablo.text = ""
        number1 = ""
        number2 = ""
        perekluchatel = false
        operation = -1
    }
    

}

