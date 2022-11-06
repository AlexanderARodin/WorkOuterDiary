//
//  StartView.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 04.11.2022.
//

import SwiftUI

struct WorkoutsView: View {
	@StateObject var model = AModel()
	@State private var selection: UUID?
	
	var body: some View {
		NavigationView {
			List {
				ForEach(model.workOuts, id: \.id) { workout in
					VStack(spacing: 30) {
						NavigationLink(tag: workout.id, selection: $selection,
											destination: {WorkOutView(workout: workout)},
											label: {WorkOutView(workout: workout)} )
//						Text("<\(workout.id)>").font(.footnote)
					}
				}
			}
			.navigationTitle("workouts")
			.toolbar {
				ToolbarItemGroup(placement: .bottomBar) {
					NamedIcon(text: "new",
								 sysIcon: "plus.circle.fill",
								 action: model.addWorkout)
				}
			}
		}
		.navigationViewStyle(.stack)
	}
}





struct WorkoutsView_Previews: PreviewProvider {
	static var previews: some View {
		WorkoutsView()
	}
}

