//
//  LineRadarChartDataSet.swift
//  Charts
//
//  Created by Daniel Cohen Gindi on 26/2/15.
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/ios-charts
//

import Foundation
import CoreGraphics
import UIKit

public class LineRadarChartDataSet: LineScatterCandleChartDataSet
{
    public var fillColor = UIColor(red: 140.0/255.0, green: 234.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    public var fillAlpha = CGFloat(1.0)
    private var _lineWidth = CGFloat(1.0)
    public var drawFilledEnabled = false

    public var drawFilledWithGradientEnabled:Bool = false
    public var gradientColors:[UIColor] = [UIColor.greenColor(), UIColor.redColor()]
    public var gradientColorLocations:[CGFloat] = [0.0, 1.0]
    public var gradientStartPoint:CGPoint = CGPoint(x: 0, y: 100)
    public var gradientEndPoint:CGPoint = CGPoint(x: 0, y: 0)

    
    /// line width of the chart (min = 0.2, max = 10)
    /// 
    /// **default**: 1
    public var lineWidth: CGFloat
    {
        get
        {
            return _lineWidth
        }
        set
        {
            if (newValue < 0.2)
            {
                _lineWidth = 0.2
            }
            else if (newValue > 10.0)
            {
                _lineWidth = 10.0
            }
            else
            {
                _lineWidth = newValue
            }
        }
    }
    
    public var isDrawFilledEnabled: Bool
    {
        return drawFilledEnabled
    }
    
    // MARK: NSCopying
    
    public override func copyWithZone(zone: NSZone) -> AnyObject
    {
        let copy = super.copyWithZone(zone) as! LineRadarChartDataSet
        copy.fillColor = fillColor
        copy._lineWidth = _lineWidth
        copy.drawFilledEnabled = drawFilledEnabled
        return copy
    }
}
