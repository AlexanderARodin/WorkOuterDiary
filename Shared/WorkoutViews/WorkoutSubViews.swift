//
//  SubViewsForWorkOuts.swift
//  WorkOuterDiary
//
//  Created by the Dragon on 05.11.2022.
//

import SwiftUI


struct DateBox: View {
	let day: String
	let month: String
	let year: String
	
	init(_ date: Date) {
		day = date.formatted(.dateTime.day(.twoDigits) )
		month = date.formatted(.dateTime.month(.abbreviated) )
		year = date.formatted(.dateTime.year(.extended()) )
	}
	
	var body: some View {
		VStack {
			Text("\(day).\(month)")
				.font(.footnote)
				.fontWeight(.bold)
			Text("\(year)")
				.font(.footnote)
				.fontWeight(.ultraLight)
		}
		.padding(5)
		.overlay(
			RoundedRectangle(cornerRadius: 15)
				.stroke(.gray, lineWidth: 3)
		)
		.scaleEffect(x:0.70, y:0.75)
		.fixedSize()
		.frame(width: 45)
	}
}

struct TimeBox: View {
	let hourAndMinute: String
	
	init(_ date: Date?) {
		if let date = date {
			hourAndMinute = date.formatted(.dateTime.hour().minute() )
		}else{
			hourAndMinute = "--:-- XX"
		}
	}
	
	var body: some View {
		Text(hourAndMinute)
			.font(.caption)
			.padding(5)
			.scaleEffect(x:0.70)
			.fixedSize()
			.frame(width: 45)
			.overlay(
				RoundedRectangle(cornerRadius: 15)
					.stroke(.gray, lineWidth: 3)
			)
	}
}

