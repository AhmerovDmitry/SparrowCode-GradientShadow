//
//  SceneDelegate.swift
//  1 - gradien & shadow
//
//  Created by Ахмеров Дмитрий Николаевич on 01.07.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?


	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = (scene as? UIWindowScene) else { return }

		window = UIWindow(windowScene: windowScene)
		window?.rootViewController = ViewController()
		window?.makeKeyAndVisible()
	}
}

