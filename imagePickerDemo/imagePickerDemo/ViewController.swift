//
//  ViewController.swift
//  imagePickerDemo
//
//  Created by Arvind Kumar on 5/10/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    let picker=UIImagePickerController()
    
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //editing
        //UIImage stretchable image
    }


    @IBAction func selecteImageButtonTapped(sender: AnyObject) {
        picker.sourceType = .PhotoLibrary
        picker.allowsEditing=true
        presentViewController(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage=info[UIImagePickerControllerOriginalImage] as? UIImage{
        imageView.contentMode = .ScaleAspectFit
        imageView.image=pickedImage
        }
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(<#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
}

