//
//  SignUpViewController.swift
//  sesacMovie02
//
//  Created by Brother Model on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var mainLogo: UILabel!
    
    @IBOutlet var userInfoTextFieldCollection: [UITextField]!
    
    @IBOutlet weak var signUpBtn: UIButton!
        
    @IBOutlet weak var signUpSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLogo.textColor = .red
        mainLogo.text = "Soulix"
        mainLogo.font = UIFont.boldSystemFont(ofSize: 30)
        mainLogo.sizeToFit()
        mainLogo.center.x = self.view.center.x

        let userTextFieldPlaceholderArray : Array = ["이메일 주소 또는 전화번호", "비밀번호", "닉네임", "위치", "추천코드 입력"]
        var userTextFieldPlaceholderArrayIndex: Int = 0
        for i in userInfoTextFieldCollection {
            i.backgroundColor = .gray
            i.textColor = .systemGray6
            i.textAlignment = .center
            i.attributedPlaceholder = NSAttributedString(string: userTextFieldPlaceholderArray[userTextFieldPlaceholderArrayIndex], attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray2])
            userTextFieldPlaceholderArrayIndex += 1
        }
        
        userInfoTextFieldCollection[0].keyboardType = .emailAddress
        userInfoTextFieldCollection[1].isSecureTextEntry = true
        userInfoTextFieldCollection[4].keyboardType = .numberPad

        signUpBtn.backgroundColor = .systemGray6
        signUpBtn.setTitle("회원가입", for: .normal)
        signUpBtn.setTitleColor(.black, for: .normal)
        signUpBtn.layer.cornerRadius = 5
        
        signUpSwitch.setOn(false, animated: false)
        signUpSwitch.onTintColor = .systemGray6
        signUpSwitch.thumbTintColor = .systemGray4
        
    }

    @IBAction func clearKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func checkUserInfo(_ sender: UIButton) {
        
        if userInfoTextFieldCollection[0].text!.isEmpty == true || userInfoTextFieldCollection[1].text!.isEmpty == true {
            alertUserCheckResult("아이디와 비밀번호를 입력해주세요")
        } else if userInfoTextFieldCollection[1].text!.count < 6 {
            alertUserCheckResult("비밀번호를 6자리 이상 입력해주세요")
        } else if userInfoTextFieldCollection[4].text!.isEmpty == false {
            if Int(userInfoTextFieldCollection[4].text!) == nil {
                alertUserCheckResult("코드는 숫자로만 이루어져있습니다")
            }
        }
    }
    
    func alertUserCheckResult(_ alertMessage: String){
        let alert = UIAlertController(title: "알림", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        // 메시지 창 컨트롤러에 들어갈 버튼 액션 객체 생성
        let defaultAction =  UIAlertAction(title: "default", style: UIAlertAction.Style.default)
        alert.addAction(defaultAction)
        //메시지 창 컨트롤러를 표시
        self.present(alert, animated: false)
    }

}
