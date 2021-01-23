//
//  Style+UIButton.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension Style where View: UIButton {
	
	// default is UIEdgeInsetsZero. On tvOS 10 or later, default is nonzero except for custom buttons.
	public static func contentEdgeInsets(_ insets: UIEdgeInsets) -> Style<View> {
		Style<View> {
			$0.contentEdgeInsets = insets
		}
	}
	
	// default is UIEdgeInsetsZero
	public static func titleEdgeInsets(_ insets: UIEdgeInsets) -> Style<View> {
		Style<View> {
			$0.titleEdgeInsets = insets
		}
	}
	
	// default is NO. if YES, shadow reverses to shift between engrave and emboss appearance
	public static func reverseTitleShadowWhenHighlighted() -> Style<View> {
		Style<View> {
			$0.reversesTitleShadowWhenHighlighted = true
		}
	}

	// default is UIEdgeInsetsZero
	public static func imageEdgeInsets(_ insets: UIEdgeInsets) -> Style<View> {
		Style<View> {
			$0.imageEdgeInsets = insets
		}
	}

	// default is YES. if YES, image is drawn darker when highlighted(pressed)
	public static func disableAdjustImageWhenHighlighted() -> Style<View> {
		Style<View> {
			$0.adjustsImageWhenHighlighted = false
		}
	}
	
	// default is YES. if YES, image is drawn lighter when disabled
	public static func disableAdjustImageWhenDisabled() -> Style<View> {
		Style<View> {
			$0.adjustsImageWhenDisabled = false
		}
	}
	
	// default is NO. if YES, show a simple feedback (currently a glow) while highlighted
	public static func showTouchWhenHighlighted() -> Style<View> {
		Style<View> {
			$0.showsTouchWhenHighlighted = true
		}
	}
	
	public static func titleFont(_ font: UIFont) -> Style<View> {
		Style<View> {
			$0.titleLabel?.font = font
		}
	}
	
	public static func title(_ text: String, for state: UIControl.State = .normal) -> Style<View> {
		Style<View> {
			$0.setTitle(text, for: state)
		}
	}
	
	// default is nil. title is assumed to be single line
	public static func attributedTitle(_ text: NSAttributedString, for state: UIControl.State = .normal) -> Style<View> {
		Style<View> {
			$0.setAttributedTitle(text, for: state)
		}
	}
	
	public static func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> Style<View> {
		Style<View> {
			$0.setTitleColor(color, for: state)
		}
	}
	
	public static func setTitleShadowColor(_ color: UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5), for state: UIControl.State = .normal) -> Style<View> {
		Style<View> {
			$0.setTitleShadowColor(color, for: state)
		}
	}
	
	public static func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Style<View> {
		Style<View> {
			$0.setImage(image, for: state)
		}
	}
	
	public static func backgroundImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Style<View> {
		Style<View> {
			$0.setBackgroundImage(image, for: state)
		}
	}
}

extension Style where View: UI.Button {
	
	public static func intrinsicContentInsets(_ size: CGSize) -> Style<View> {
		Style<View> {
			$0.intrinsicContentInsets = size
		}
	}
}
