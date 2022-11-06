//
//  WorkOutListItemView.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 05.11.2022.
//

import SwiftUI

struct WorkOutView: View {
	let workout: WorkOut
	
	var body: some View {
//		GeometryReader { geometry in
//			let width = geometry.size.width
//			let height = geometry.size.height
			HStack(alignment: .center, spacing: 3) {
				DateBox(workout.startTime)
				Divider()
				Spacer()
				Text("\(workout.name)")
					.font(.footnote)
				Spacer()
				Divider()
				TimeBox(workout.startTime)
				TimeBox(workout.endTime)
//			}.frame(width: width, height: height, alignment: .topLeading)
		}
	}
}





struct WorkOutView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			WorkOutView(workout: WorkOut(name: "SkyGym: full body\nappend line\nand one more", startTime: Date.now))
				.previewLayout(.fixed(width: 300, height: 100))
			WorkOutView(workout: WorkOut(name: "SkyGym: full body\nappend line\nand one more", startTime: Date.now))
				.previewLayout(.fixed(width: 600, height: 50))
		}
	}
}
