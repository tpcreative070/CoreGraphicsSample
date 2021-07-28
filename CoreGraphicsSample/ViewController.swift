//
//  ViewController.swift
//  CoreGraphicsSample
//
//  Created by phong070 on 28/07/2021.
//

import UIKit

class ViewController: UIViewController {

    let drawRectView = MyView()
    override func viewDidLoad() {
        super.viewDidLoad()
        drawRectView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(drawRectView)
        NSLayoutConstraint.activate([
                   drawRectView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   drawRectView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                   drawRectView.widthAnchor.constraint(equalToConstant: 400),
                   drawRectView.heightAnchor.constraint(equalToConstant: 400),
        ])
        print(UIScreen.main.bounds.size)
    }
}

