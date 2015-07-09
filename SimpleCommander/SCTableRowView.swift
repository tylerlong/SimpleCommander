//
//  SCTableRowView.swift
//  SimpleCommander
//
//  Created by Jamie on 15/7/5.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

import Cocoa

class SCTableRowView: NSTableRowView {
    
    var marked = false
    
    override func drawSelectionInRect(dirtyRect: NSRect) {
//        if (self.selectionHighlightStyle != NSTableViewSelectionHighlightStyle.None) {
//            var selectionRect = NSInsetRect(self.bounds, 2.5, 2.5)

            NSColor(calibratedWhite: 0.0, alpha: 1.0).setStroke()
            NSColor(calibratedWhite: 0.82, alpha: 1.0).setFill()

            var selectionPath = NSBezierPath(rect: dirtyRect)
        
//        var lineDash: [CGFloat] = [2.0, 2.0]
//        
//        selectionPath.setLineDash(lineDash, count: 2, phase: 0.0)
        
//            selectionPath.fill()
            selectionPath.stroke()
//        }
    }
    
    override func drawBackgroundInRect(dirtyRect: NSRect) {
        
        let context = NSGraphicsContext.currentContext()!.CGContext
        
        if !self.marked {
//            CGContextSetFillColorWithColor(context, NSColor.redColor().CGColor);
            super.drawBackgroundInRect(dirtyRect)
            return
        } else {
            CGContextSetFillColorWithColor(context, NSColor.alternateSelectedControlColor().CGColor)
//            CGContextSetStrokeColorWithColor(context, NSColor.whiteColor().CGColor)
            CGContextFillRect(context, dirtyRect);
        }
    }
    
}