//
//  ViewController.swift
//  1 - gradien & shadow
//
//  Created by Ахмеров Дмитрий Николаевич on 01.07.2023.
//

import UIKit

final class ViewController: UIViewController {

	let gradientView = UIView()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		setupUIHierarchy()
		setupUIConstraints()
		setupGradientViewShadow()
		setupGradientViewFill()
	}
}

// MARK: - Private

private extension ViewController {

	func setupUIHierarchy() {
		gradientView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(gradientView)
	}

	func setupUIConstraints() {
		NSLayoutConstraint.activate([
			gradientView.heightAnchor.constraint(equalToConstant: 100),
			gradientView.widthAnchor.constraint(equalToConstant: 100),
			gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100)
		])
	}

	func setupGradientViewShadow() {
		gradientView.layer.shadowOpacity = 0.5
		gradientView.layer.shadowOffset = .init(width: 5, height: 5)
	}

	func setupGradientViewFill() {
		let gradientLayer = CAGradientLayer()
		gradientLayer.startPoint = CGPoint(x: 0, y: 0)
		gradientLayer.endPoint = CGPoint(x: 1, y: 1)
		gradientLayer.colors = [UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor]
		gradientLayer.frame = .init(x: 0, y: 0, width: 100, height: 100)
		gradientLayer.cornerRadius = 10

		gradientView.layer.insertSublayer(gradientLayer, at: 0)
	}
}
