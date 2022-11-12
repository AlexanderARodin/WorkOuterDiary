//
//  NamedIcos.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 04.11.2022.
//

import SwiftUI


struct NamedIcon: View {
	let text: String
	let sysIcon: String
	let action: ()->()
	
	var body: some View {
		Button {
			action()
		} label: {
			VStack {
				Image(systemName: sysIcon)
					.scaleEffect(1.5)
				Text(text)
					.scaleEffect(0.7)
			}
		}
		.padding(.top, 5)
	}
}




struct WNamedIcon_Previews: PreviewProvider {
	static var previews: some View {
		NamedIcon(text: "testing", sysIcon: "play.circle", action: {})
	}
}

