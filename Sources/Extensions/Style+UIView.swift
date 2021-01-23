//
//  Style+Extensions.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension Style where View: UIView {
	
	public static func backgroundColor(_ color: UIColor) -> Style<View> {
		Style<View> {
			$0.backgroundColor = color
		}
	}
	
	public static func tintColor(_ color: UIColor) -> Style<View> {
		Style<View> {
			$0.tintColor = color
		}
	}
	
	public static func alpha(_ alpha: CGFloat) -> Style<View> {
		Style<View> {
			$0.alpha = alpha
		}
	}
	
	public static func contentMode(_ mode: UIView.ContentMode) -> Style<View> {
		Style<View> {
			$0.contentMode = mode
		}
	}
	
	public static func layoutMargins(_ margins: UIEdgeInsets) -> Style<View> {
		Style<View> {
			$0.layoutMargins = margins
		}
	}
	
	public static func hidden() -> Style<View> {
		Style<View> {
			$0.isHidden = true
		}
	}
	
	public static func accessibilityIdentifier(_ id: String) -> Style<View> {
		Style<View> {
			$0.accessibilityIdentifier = id
		}
	}
	
	public static func border(width: CGFloat = 1.0, color: UIColor) -> Style<View> {
		Style<View> {
			$0.layer.borderWidth = width
			$0.layer.borderColor = color.cgColor
		}
	}
	
	public static func clipsToBounds() -> Style<View> {
		Style<View> {
			$0.clipsToBounds = true
		}
	}
	
	public static func roundedCorners(radius: CGFloat = 5.0) -> Style<View> {
		Style<View> {
			$0.layer.cornerRadius = radius
			$0.clipsToBounds = true
		}
	}
	
	public static func circular() -> Style<View> {
		Style<View> {
			$0.layer.cornerRadius = $0.frame.size.width / 2
		}
	}
	
	public static func disableUserInteraction() -> Style<View> {
		Style<View> {
			$0.isUserInteractionEnabled = false
		}
	}
	
	public static func shadow(shadowOffset: CGSize = CGSize(width: 0, height: 8), shadowRadius: CGFloat = 8, shadowOpacity: Float = 0.4) -> Style<View> {
		Style<View> {
			$0.layer.masksToBounds = false
			$0.layer.shadowOffset = shadowOffset
			// Apply some blur to the shadow
			$0.layer.shadowRadius = shadowRadius
			$0.layer.shadowOpacity = shadowOpacity
		}
	}
}
