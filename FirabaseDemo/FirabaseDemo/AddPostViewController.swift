//
//  AddPostViewController.swift
//  FirabaseDemo
//
//  Created by HsinYuLi on 2018/9/4.
//  Copyright © 2018年 laalee. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController {
    
    @IBOutlet weak var titleTextView: UITextView!
    
    @IBOutlet weak var contentTextView: UITextView!
    
    @IBOutlet weak var tagSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func postClick(_ sender: Any) {
        
        guard let title = titleTextView.text else { return }
        
        guard let content = contentTextView.text else { return }
        
        guard let tag = tagSegment.titleForSegment(at: tagSegment.selectedSegmentIndex) else { return }
        
        FirebaseManager.shared.postArticle(title: title, content: content, tag: tag)
        
        titleTextView.text = ""
        
        contentTextView.text = ""
    }
    
    @IBAction func cancelClick(_ sender: Any) {
        
        print("cancel")
    }
    
}