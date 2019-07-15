//
//  AddPhotoViewController.swift
//  viewFinder
//
//  Created by Naomi Watson on 7/15/19.
//  Copyright © 2019 Naomi Watson. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
var imagePicker = UIImagePickerController()
   
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

imagePicker.delegate = self
    }
    

    @IBAction func albumsTapped(_ sender: Any) {
        
        imagePicker.sourceType = .savedPhotosAlbum
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func cameraTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
    
    
    //update our photo with selected photo
    if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { imageView.image = selectedImage
        
    }
    
    // go back to our view controller so the user can see the update
    
    imagePicker.dismiss(animated: true, completion: nil)
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
