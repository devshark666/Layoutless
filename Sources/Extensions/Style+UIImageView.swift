//
//  Style+UIImageView.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension Style where View: UIImageView {
	
	public static func image(_ image: UIImage?) -> Style<View> {
		Style<View> {
			$0.image = image
		}
	}
	
	public static func highlightedImage(_ image: UIImage?) -> Style<View> {
		Style<View> {
			$0.highlightedImage = image
		}
	}
	
	// default is NO
	public static func isHighlighted(_ enabled: Bool) -> Style<View> {
		Style<View> {
			$0.isHighlighted = enabled
		}
	}
	
	// default is NO
	public static func isUserInteractionEnabled(_ enabled: Bool) -> Style<View> {
		Style<View> {
			$0.isUserInteractionEnabled = enabled
		}
	}
	
	// When tintColor is non-nil, any template images set on the image view will be colorized with that color.
	// The tintColor is inherited through the superview hierarchy. See UIView for more information.
	public static func tintColor(_ color: UIColor) -> Style<View> {
		Style<View> {
			$0.tintColor = color
		}
	}
}
