//
//  WorkoutListItemView.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 05.11.2022.
//

import SwiftUI


struct WorkoutListItemView: View {
	
	let workout:WorkOut
	@Environment(\.editMode) private var editMode
	
	var body: some View {
		NavigationLink {
			WorkoutDetailView(workout: workout)
		} label: {
			listLabel2
		}
	}
	
	var listLabel: some View {
		HStack(alignment: .center, spacing: 5) {
			DateBox(workout.startTime)
			Divider()
			VStack(alignment: .leading) {
				Text("\(workout.type)")
					.font(.headline)
				if editMode?.wrappedValue.isEditing != true {
					Text("\(workout.details)")
						.fontWeight(.ultraLight)
						.font(.footnote)
				}
			}
			Spacer()
			Divider()
			TimeBox(workout.startTime)
			TimeBox(workout.endTime)
		}
	}
	var listLabel2: some View {
		HStack(alignment: .center, spacing: 5) {
			VStack(alignment: .leading) {
				Text("\(workout.type)")
					.font(.headline)
				if editMode?.wrappedValue.isEditing != true {
					Text("\(workout.details)")
						.fontWeight(.ultraLight)
						.font(.footnote)
				}
			}
			Spacer()
			Divider()
			VStack(alignment: .leading) {
				DateBox2(workout.startTime)
				HStack {
					TimeBox(workout.startTime)
					TimeBox(workout.endTime)
				}
			}
		}
	}
}




struct WorkoutListItemVie_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			WorkoutListItemView(workout: WorkOut(type: "full body", details: "SkyGym:\nappend line\nand one more", startTime: Date.now))
				.previewLayout(.fixed(width: 300, height: 100))
			WorkoutListItemView(workout: WorkOut(type: "full body", details: "SkyGym:\nappend line\nand one more", startTime: Date.now))
				.previewLayout(.fixed(width: 600, height: 100))
		}
	}
}
