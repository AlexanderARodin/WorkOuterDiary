//
//  DataClosures.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 04.11.2022.
//

import Foundation

struct WorkOut {
	let id = UUID()
	let name: String
	var startTime: Date
	var endTime: Date?
}


class AModel: ObservableObject {
	@Published var workOuts: [WorkOut] = [WorkOut(name: "SkyGym: full body\nappend line\nand one more", startTime: Date.now+66)]
	
	func addWorkout() {
		workOuts.append(WorkOut(name: "new WO", startTime: Date.now))
	}
}
