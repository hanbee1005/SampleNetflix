//
//  PlayerView.swift
//  SampleNetflix
//
//  Created by 손한비 on 2020/09/28.
//  Copyright © 2020 kr.co.hist. All rights reserved.
//

// 참고: https://developer.apple.com/documentation/avfoundation/avplayerlayer

import UIKit
import AVFoundation

class PlayerView: UIView {
    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer {
        return layer as! AVPlayerLayer
    }
    
    // Override UIView property
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
