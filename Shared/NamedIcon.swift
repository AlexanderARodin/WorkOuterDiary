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
		VStack {
			Image(systemName: sysIcon)
				.font(.largeTitle)
			Text(text)
				.font(.footnote)
		}
		.offset(y: -15)
		.padding(7)
		.onTapGesture {
			action()
		}
	}
}
