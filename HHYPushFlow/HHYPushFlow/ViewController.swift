//
//  ViewController.swift
//  HHYPushFlow
//
//  Created by 华惠友 on 2020/3/27.
//  Copyright © 2020 huayoyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate lazy var session: LFLiveSession = {
        let audioConfiguration = LFLiveAudioConfiguration.default()
        let videoConfiguration = LFLiveVideoConfiguration.defaultConfiguration(for: LFLiveVideoQuality.high2, outputImageOrientation: UIInterfaceOrientation.portrait)
        let session = LFLiveSession(audioConfiguration: audioConfiguration, videoConfiguration: videoConfiguration)
        
        session?.delegate = self
        session?.preView = self.view
        return session!
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    @IBAction func startPushFlow(_ sender: Any) {
        // 开始推流
        let stream = LFLiveStreamInfo()
//        stream.url = "rtmp://192.168.2.148:8080/live/demo"
        stream.url = "rtmp://202.69.69.180:443/live/aaa"
        // 播放地址:rtmp://202.69.69.180:443/live/aaa
        session.startLive(stream)
        
        session.running = true
    }
}

extension ViewController: LFLiveSessionDelegate {
    func liveSession(_ session: LFLiveSession?, debugInfo: LFLiveDebug?) {
        
    }
    
    func liveSession(_ session: LFLiveSession?, errorCode: LFLiveSocketErrorCode) {
        print("errorCode:\(errorCode)")
    }
    
    func liveSession(_ session: LFLiveSession?, liveStateDidChange state: LFLiveState) {
        
    }
}

