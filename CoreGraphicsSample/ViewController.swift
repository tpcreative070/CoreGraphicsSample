//
//  ViewController.swift
//  CoreGraphicsSample
//
//  Created by phong070 on 28/07/2021.
//

import UIKit

class ViewController: UIViewController {

    let drawRectView = MyView()
    let imageView = UIImageView()
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
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: drawRectView.bottomAnchor,constant: 10)
        ])
        drawCircle()
    }
    
    func drawCircle() {
           let renderer = UIGraphicsImageRenderer(size: CGSize(width: 200, height: 200))
           let img = renderer.image { ctx in
               let rectangle = CGRect(x: 0, y: 0, width: 200, height: 200).insetBy(dx: 5, dy: 5)
               ctx.cgContext.setFillColor(UIColor.red.cgColor)
               ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
               ctx.cgContext.setLineWidth(10)

               ctx.cgContext.addEllipse(in: rectangle)
               ctx.cgContext.drawPath(using: .fillStroke)
           }
           imageView.image = img
       }
}

