//
//  WorkoutDetailView.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 06.11.2022.
//

import SwiftUI

struct WorkoutDetailView: View {
	let workout: WorkOut
	@State private var detailText: String = ""
	
	var body: some View {
		VStack {
			List(0 ..< 25) { item in
				Text("exercise #\(item)")
			}
			Spacer()
			TextField("enter details", text: $detailText)
				.textInputAutocapitalization(.never)
				.padding(3)
				.border(.gray)
				.padding(3)
		}
				.navigationTitle(getNavigationTitle())
		.onAppear(){
			detailText = workout.details
		}
	}
	
	func getNavigationTitle() -> String {
		let mainTitle = workout.type
		let day = workout.startTime.formatted(.dateTime.day(.twoDigits) )
		let month = workout.startTime.formatted(.dateTime.month(.abbreviated) )
		let year = workout.startTime.formatted(.dateTime.year(.extended()) )
		
		return mainTitle + "\t \(day).\(month).\(year)"
	}
}

struct WorkoutDetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			WorkoutDetailView(workout: WorkOut(type: "full body", details: "SkyGym: append line and one more", startTime: Date.now))
		}
	}
}
