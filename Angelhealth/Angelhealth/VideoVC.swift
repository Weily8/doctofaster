//
//  VideoVC.swift
//  Angelhealth
//
//  Created by Alientyc on 17/6/17.
//  Copyright © 2017 On9 Commerce. All rights reserved.
//

import UIKit
import AVFoundation

class VideoVC: UIViewController {

    
    @IBOutlet weak var videoCallBtn: UIView!
    @IBOutlet weak var presentVideo: UIView!
    let captureSession = AVCaptureSession()
    var backFacingCamera: AVCaptureDevice?
    var frontFacingCamera: AVCaptureDevice?
    var currentDevice: AVCaptureDevice?
    var stillImageOutput: AVCaptureStillImageOutput?
    var stillImage: UIImage?
    
      var cameraPreviewLayer:AVCaptureVideoPreviewLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        captureSession.sessionPreset = AVCaptureSessionPresetPhoto
        
        let devices = AVCaptureDevice.devices(withMediaType: AVMediaTypeVideo) as!
            [AVCaptureDevice]
        // Get the front and back-facing camera for taking photos
        for device in devices {
            if device.position == AVCaptureDevicePosition.back {
                backFacingCamera = device
            } else if device.position == AVCaptureDevicePosition.front {
                frontFacingCamera = device
            }
        }
        currentDevice = backFacingCamera
        do {
            let captureDeviceInput = try AVCaptureDeviceInput(device: currentDevice)
            
            stillImageOutput = AVCaptureStillImageOutput()
            stillImageOutput?.outputSettings = [AVVideoCodecKey: AVVideoCodecJPEG]
            
            // Configure the session with the input and the output devices
            captureSession.addInput(captureDeviceInput)
            captureSession.addOutput(stillImageOutput)
            
            cameraPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            view.layer.addSublayer(cameraPreviewLayer!)
            cameraPreviewLayer?.videoGravity = AVLayerVideoGravityResizeAspectFill
            cameraPreviewLayer?.frame = view.layer.frame
            // Bring the camera button to front
            view.bringSubview(toFront: videoCallBtn)
            captureSession.startRunning()
            
        } catch {
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
