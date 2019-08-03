// (C) 2019, Ralf Ebert - iOS Example Project: CustomDrawing
// License: https://opensource.org/licenses/0BSD

import UIKit

@IBDesignable
class SmileyView: UIView {

    override func draw(_: CGRect) {

        // Color Declarations
        let black = UIColor.black
        let yellow = UIColor(red: 1.000, green: 0.859, blue: 0.000, alpha: 1.000)

        // Circle Drawing
        let circlePath = UIBezierPath(ovalIn: CGRect(x: 2, y: 2, width: 76, height: 76))
        yellow.setFill()
        circlePath.fill()
        black.setStroke()
        circlePath.lineWidth = 4
        circlePath.stroke()

        // Left-Eye Drawing
        let leftEyePath = UIBezierPath(ovalIn: CGRect(x: 21, y: 25, width: 7, height: 7))
        black.setFill()
        leftEyePath.fill()

        // Right-Eye Drawing
        let rightEyePath = UIBezierPath(ovalIn: CGRect(x: 52, y: 25, width: 7, height: 7))
        black.setFill()
        rightEyePath.fill()

        // Mouth Drawing
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 18, y: 49))
        mouthPath.addCurve(to: CGPoint(x: 39.5, y: 62), controlPoint1: CGPoint(x: 25.17, y: 57.67), controlPoint2: CGPoint(x: 32.33, y: 62))
        mouthPath.addCurve(to: CGPoint(x: 61, y: 49), controlPoint1: CGPoint(x: 46.67, y: 62), controlPoint2: CGPoint(x: 53.83, y: 57.67))
        black.setStroke()
        mouthPath.lineWidth = 5
        mouthPath.lineCapStyle = .round
        mouthPath.stroke()

    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 80, height: 80)
    }

}
