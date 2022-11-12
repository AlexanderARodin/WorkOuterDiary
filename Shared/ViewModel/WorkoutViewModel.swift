//
//  DataClosures.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 04.11.2022.
//

import Foundation

struct WorkOut: Identifiable {
	let id = UUID()
	let type: String
	let details: String
	var startTime: Date
	var endTime: Date?
}


class WorkoutsViewModel: ObservableObject {
	
	@Published var list: [WorkOut] = [
		WorkOut(type: "full body", details: "SkyGym: append line and one more", startTime: Date.now),
		WorkOut(type: "cardio", details: "SkyGym: fast run", startTime: Date.now),
		WorkOut(type: "legs", details: "Homing: pullups", startTime: Date.now)
	]
	
	func addWorkout() -> UUID {
		let newWorkOut = WorkOut(type: "new WO", details: "some detailed details", startTime: Date.now)
		list.append(newWorkOut)
		return newWorkOut.id
	}
	
	func performDeleting( indexSet: IndexSet ) {
		list.remove(atOffsets: indexSet)
	}

}
