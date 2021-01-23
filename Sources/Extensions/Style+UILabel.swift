//
//  Style+UILabel.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension Style where View: UILabel {
	
	public static func text(_ text: String) -> Style<View> {
		Style<View> {
			$0.text = NSLocalizedString(text, comment: "")
		}
	}
	
	public static func attributedText(_ text: NSAttributedString) -> Style<View> {
		Style<View> {
			$0.attributedText = text
		}
	}
	
	public static func font(_ font: UIFont) -> Style<View> {
		Style<View> {
			$0.font = font
		}
	}
	
	// default is NSTextAlignmentNatural (before iOS 9, the default was NSTextAlignmentLeft)
	public static func textAlignment(_ alignment: NSTextAlignment) -> Style<View> {
		Style<View> {
			$0.textAlignment = alignment
		}
	}
	
	// this determines the number of lines to draw and what to do when sizeToFit is called. default value is 1 (single line). A value of 0 means no limit
	// if the height of the text reaches the # of lines or the height of the view is less than the # of lines allowed, the text will be
	// truncated using the line break mode.
	public static func numberOfLines(_ numberOfLines: Int) -> Style<View> {
		Style<View> {
			$0.numberOfLines = numberOfLines
		}
	}
	
	public static func noLimitOfLines() -> Style<View> {
		Style<View> {
			$0.numberOfLines = 0
		}
	}
	
	// default is NSLineBreakByTruncatingTail. used for single and multiple lines of text
	public static func lineBreakMode(_ mode: NSLineBreakMode) -> Style<View> {
		Style<View> {
			$0.lineBreakMode = mode
		}
	}
	
	public static func textColor(_ color: UIColor) -> Style<View> {
		Style<View> {
			$0.textColor = color
		}
	}
	
	public static func shadowColor(_ color: UIColor) -> Style<View> {
		Style<View> {
			$0.shadowColor = color
		}
	}

	// default is CGSizeMake(0, -1) -- a top shadow
	public static func shadowOffset(_ size: CGSize) -> Style<View> {
		Style<View> {
			$0.shadowOffset = size
		}
	}
	
	public static func enableUserInteractionEnabled() -> Style<View> {
		Style<View> {
			$0.isUserInteractionEnabled = true
		}
	}

	public static func disable() -> Style<View> {
		Style<View> {
			$0.isEnabled = false
		}
	}

	public static func adjustFontSizeToFitWidth() -> Style<View> {
		Style<View> {
			$0.adjustsFontSizeToFitWidth = true
		}
	}

	// default is 0.0
	public static func minimumScaleFactor(_ scale: CGFloat) -> Style<View> {
		Style<View> {
			$0.minimumScaleFactor = scale
		}
	}
	
	// default is UIBaselineAdjustmentAlignBaselines
	public static func baselineAdjustment(_ adjustment: UIBaselineAdjustment) -> Style<View> {
		Style<View> {
			$0.baselineAdjustment = adjustment
		}
	}
	
	// Tightens inter-character spacing in attempt to fit lines wider than the available space if the line break mode is one of the truncation modes before starting to truncate.
	// The maximum amount of tightening performed is determined by the system based on contexts such as font, line width, etc.
	public static func allowDefaultTighteningForTruncation() -> Style<View> {
		Style<View> {
			$0.allowsDefaultTighteningForTruncation = true
		}
	}
	
	// Specifies the line break strategies that may be used for laying out the text in this label.
	// If this property is not set, the default value is NSLineBreakStrategyStandard.
	// If the label contains an attributed text with paragraph style(s) that specify a set of line break strategies, the set of strategies in the paragraph style(s) will be used instead of the set of strategies defined by this property.
	public static func lineBreakStrategy(_ strategy: NSParagraphStyle.LineBreakStrategy) -> Style<View> {
		Style<View> {
			$0.lineBreakStrategy = strategy
		}
	}
}

extension Style where View: UI.Label {
	
	public static func textInsets(_ insets: UIEdgeInsets) -> Style<View> {
		Style<View> {
			$0.textInsets = insets
		}
	}
	
	public static func intrinsicContentInsets(_ size: CGSize) -> Style<View> {
		Style<View> {
			$0.intrinsicContentInsets = size
		}
	}
}
