//
//  WebPageViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/3/22.
//

import UIKit
import WebKit

class WebPageViewController: UIViewController {
    
    var page : SearchBrowsers?
    
    @IBOutlet weak var WebPageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let webKitView = WKWebView()
        let link = page?.link
        webKitView.load(URLRequest(url: (URL(string: link!) ?? URL(string: "https://www.google.com" ))!))
        view = webKitView
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
