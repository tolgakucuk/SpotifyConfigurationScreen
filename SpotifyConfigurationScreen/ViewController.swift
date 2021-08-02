//
//  ViewController.swift
//  SpotifyConfigurationScreen
//
//  Created by Tolga on 1.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBar()
        setupView()
    }
    
    func setupView(){
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOn: false)
        let offlineSubLabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've download")
        
        let crossfadeLabel = makeLabel(withText: "Crossfade")
        let minCrossfadeLabel = makeSubLabel(withText: "0s")
        let maxCrossfadeLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        
        let hideUnplayableSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideUnplayableSongsSwitch = makeSwitch(isOn: true)
        
        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOn: true)
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSubLabel)
        
        view.addSubview(crossfadeLabel)
        view.addSubview(minCrossfadeLabel)
        view.addSubview(maxCrossfadeLabel)
        view.addSubview(crossfadeProgressView)
        
        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)
        
        view.addSubview(hideUnplayableSongsLabel)
        view.addSubview(hideUnplayableSongsSwitch)
        
        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)
        
        offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
        offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor).isActive = true
        offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        offlineSubLabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin).isActive = true
        offlineSubLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offlineSubLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        crossfadeLabel.topAnchor.constraint(equalTo: offlineSubLabel.bottomAnchor, constant: spacing).isActive = true
        crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        minCrossfadeLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing).isActive = true
        minCrossfadeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        crossfadeProgressView.centerYAnchor.constraint(equalTo: minCrossfadeLabel.centerYAnchor).isActive = true
        crossfadeProgressView.leadingAnchor.constraint(equalTo: minCrossfadeLabel.trailingAnchor, constant: 4).isActive = true
        crossfadeProgressView.trailingAnchor.constraint(equalTo: maxCrossfadeLabel.leadingAnchor, constant: -4).isActive = true
        
        maxCrossfadeLabel.centerYAnchor.constraint(equalTo: minCrossfadeLabel.centerYAnchor).isActive = true
        maxCrossfadeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        gaplessPlaybackLabel.topAnchor.constraint(equalTo: minCrossfadeLabel.bottomAnchor, constant: spacing).isActive = true
        gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor).isActive = true
        gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
      
        hideUnplayableSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: spacing).isActive = true
        hideUnplayableSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        hideUnplayableSongsSwitch.centerYAnchor.constraint(equalTo: hideUnplayableSongsLabel.centerYAnchor).isActive = true
        hideUnplayableSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        enableNormalizationLabel.topAnchor.constraint(equalTo: hideUnplayableSongsLabel.bottomAnchor, constant: spacing).isActive = true
        enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor).isActive = true
        enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
    }
    
    func setupNavigationBar(){
        navigationItem.title = "Playback"
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)

        return label
    }

    func makeSubLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 13)
        label.numberOfLines = 0 // multiline

        return label
    }

    func makeBoldLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 17)

        return label
    }

    func makeSwitch(isOn: Bool) -> UISwitch {
        let theSwitch = UISwitch()
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        theSwitch.tintColor = .darkGray
        theSwitch.isOn = isOn
        return theSwitch
    }

    func makeProgressView() -> UIProgressView {
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.tintColor = .gray
        return progressView
    }

   
}



extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
    static let darkOrange = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
    static let darkRed = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)
    static let darkTeal = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
    static let darkYellow = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
    static let offBlack = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
}

public extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}

extension UINavigationController {
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
