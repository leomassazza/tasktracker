//
//  ElapsedTimeManager.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 27/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

class ElapsedTimeManager: ObservableObject  {
    private var hoursElapsed = 0.0
    private var minutesElapsed = 0.0
    private var secondsElapsed = 0.0
    private var timer = Timer()
    
    @Published var elapsedTime = "00:00"
    
    private var intervalSeconds: Double
    init (intervalSeconds interval: Double) {
        self.intervalSeconds = interval
    }
    
    private func adjustSeconds() {
        if (self.secondsElapsed >= 60) {
            self.secondsElapsed -= 60
            self.minutesElapsed += 1
            while (self.minutesElapsed >= 60) {
                adjustMinutes()
            }
        }
    }
    
    private func adjustMinutes() {
        if (self.minutesElapsed >= 60) {
            self.minutesElapsed -= 60
            self.hoursElapsed += 1
        }
    }
    private func adjustElapsedTime() {
        if (hoursElapsed > 0) {
            elapsedTime = String(format: "%d:%02d:%02d", Int(hoursElapsed), Int(minutesElapsed), Int(secondsElapsed))
        } else {
            elapsedTime = String(format: "%02d:%02d", Int(minutesElapsed), Int(secondsElapsed))
        }
        
    }

    
    func start() {
        self.hoursElapsed = 0
        self.minutesElapsed = 0
        self.secondsElapsed = 0
        resume()
    }
    
    func stop() {
        if timer.isValid {
            timer.invalidate()
        }
    }

    func resume() {
        timer = Timer.scheduledTimer(withTimeInterval: intervalSeconds, repeats: true, block: { (Timer) in
            self.secondsElapsed += self.intervalSeconds
            while (self.secondsElapsed >= 60) {
                self.adjustSeconds()
            }
            self.adjustElapsedTime()
        }
        )
    }
    
    func pause() { stop() }
}
