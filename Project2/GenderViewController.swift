//
//  GenderViewController.swift
//  Project2
//
//  Created by SWUCOMPUTER on 2018. 6. 2..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

//여,남 선택하는 화면

import UIKit

class GenderViewController: UIViewController {
    
    @IBAction func buttonLogout(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title:"로그아웃 하시겠습니까?",message: "",preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
            action in let urlString: String = "http://condi.swu.ac.kr/student/T05iphone/logout.php"
            guard let requestURL = URL(string: urlString) else { return }
            var request = URLRequest(url: requestURL)
            request.httpMethod = "POST"
            let session = URLSession.shared
            let task = session.dataTask(with: request) { (responseData, response, responseError) in
                guard responseError == nil else { return }
            }
            task.resume()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginView = storyboard.instantiateViewController(withIdentifier: "LoginView")
        self.present(loginView, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
