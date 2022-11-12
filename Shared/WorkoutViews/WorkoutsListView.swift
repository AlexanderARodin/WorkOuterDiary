//
//  StartView.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 04.11.2022.
//

import SwiftUI



struct StartView: View {
	
	@StateObject var workoutsViewModel = WorkoutsViewModel()
	
	var body: some View {
		NavigationView {
			List {
				ForEach(workoutsViewModel.list, content: WorkoutListItemView.init )
					.onDelete(perform: workoutsViewModel.performDeleting)
			}
			.navigationTitle("workouts")
			.toolbar(content: toolBarItems)
		}
		.navigationViewStyle(.stack)
	}
}


extension StartView {
	
	@ToolbarContentBuilder
	func toolBarItems() -> some ToolbarContent {
		ToolbarItemGroup(placement: .bottomBar) {
			Spacer()
			NamedIcon(text: "new",
						 sysIcon: "plus.circle.fill",
						 action: {_ = workoutsViewModel.addWorkout() })
			Spacer()
			EditButton()
		}
	}
}




struct StartView_Previews: PreviewProvider {
	static var previews: some View {
		StartView()
	}
}

