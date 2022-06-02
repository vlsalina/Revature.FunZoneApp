//
//  BookViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/1/22.
//

import UIKit
import PDFKit

class BookViewController: UIViewController {
    
    var bookData : String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let booksVC = storyboard?.instantiateViewController(withIdentifier: "BooksViewController") as! BooksViewController
//        booksVC.bookDelegate = self
        
        let pdfView = PDFView(frame: view.bounds)

        pdfView.autoScales = true
        let filePath = Bundle.main.url(forResource: bookData, withExtension: "pdf")
        pdfView.document = PDFDocument(url: filePath!)

        view.addSubview(pdfView)

        
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

//extension BookViewController : BookDelegate {
//    func cellWasClicked(book: Books) {
//        let pdfView = PDFView(frame: view.bounds)
//
//        pdfView.autoScales = true
//        let filePath = Bundle.main.url(forResource: book.bookData, withExtension: "pdf")
//        pdfView.document = PDFDocument(url: filePath!)
//
//        view.addSubview(pdfView)
//
//        print("clicked")
//    }
//}

