//
//  ViewController.swift
//  LiveActivityTests
//
//  Created by Marcos Contente on 19/05/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let startLiveButton = UIButton(type: .system)
        startLiveButton.setTitle("Star Live Activity", for: .normal)
        startLiveButton.backgroundColor = .systemBlue
        startLiveButton.setTitleColor(.white, for: .normal)
        startLiveButton.layer.cornerRadius = 8
        startLiveButton.translatesAutoresizingMaskIntoConstraints = false
        startLiveButton.addTarget(self, action: #selector(startLiveActivity), for: .touchUpInside)

        view.addSubview(startLiveButton)

        NSLayoutConstraint.activate([
            startLiveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startLiveButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startLiveButton.widthAnchor.constraint(equalToConstant: 200),
            startLiveButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }

    @objc func startLiveActivity() {

    }

    func initLiveActivity() {
        let initialData = ActivityModel.ContentState()
        let liveActivityData = ActivityModel(text: "Hello", image: "gear", timeLeft: 1000)

        do {

        } catch {

        }

    }
}
