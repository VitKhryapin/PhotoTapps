//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Vitaly Khryapin on 08.11.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }

    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно")
            }
        }
        present(shareController, animated: true, completion: nil)
    }
}
