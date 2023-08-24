//
//  Sector.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct Sector: Shape {
	var start: Angle
	var end: Angle

	func path(in rect: CGRect) -> Path {
		var path = Path()
		let center = CGPoint(x: rect.midX, y: rect.midY)
		path.move(to: center)
		path.addArc(center: center, radius: rect.midX, startAngle: start, endAngle: end, clockwise: false)
		path.addLine(to: center)
		return path
	}
}
