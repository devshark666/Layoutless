//
//  Style+UITextField.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension Style where View: UITextField {
	
	public static func text(_ text: String) -> Style<View> {
		Style<View> {
			$0.text = text
		}
	}
	
	public static func font(_ font: UIFont) -> Style<View> {
		Style<View> {
			$0.font = font
		}
	}
	
	public static func textAlignment(_ alignment: NSTextAlignment) -> Style<View> {
		Style<View> {
			$0.textAlignment = alignment
		}
	}
	
	public static func textColor(_ color: UIColor) -> Style<View> {
		Style<View> {
			$0.textColor = color
		}
	}
	
	// default is nil. string is drawn 70% gray
	public static func placeholder(_ text: String) -> Style<View> {
		Style<View> {
			$0.placeholder = text
		}
	}

	// default is nil
	public static func placeholder(_ text: NSAttributedString?) -> Style<View> {
		Style<View> {
			$0.attributedPlaceholder = text
		}
	}
	
	public static func autocorrectionType(_ type: UITextAutocorrectionType) -> Style<View> {
		Style<View> {
			$0.autocorrectionType = type
		}
	}
	
	public static func autocapitalizationType(_ type: UITextAutocapitalizationType) -> Style<View> {
		Style<View> {
			$0.autocapitalizationType = type
		}
	}

	// default is NO which moves cursor to location clicked. if YES, all text cleared
	public static func clearsOnBeginEditing(_ enabled: Bool) -> Style<View> {
		Style<View> {
			$0.clearsOnBeginEditing = enabled
		}
	}

	// default is NO. if YES, text will shrink to minFontSize along baseline
	public static func adjustsFontSizeToFitWidth(_ enabled: Bool) -> Style<View> {
		Style<View> {
			$0.adjustsFontSizeToFitWidth = enabled
		}
	}
	
	// default is 0.0. actual min may be pinned to something readable. used if adjustsFontSizeToFitWidth
	public static func minimumFontSize(_ minimumFontSize: CGFloat) -> Style<View> {
		Style<View> {
			$0.minimumFontSize = minimumFontSize
		}
	}

	// default is nil. draw in border rect. image should be stretchable
	public static func background(_ image: UIImage?) -> Style<View> {
		Style<View> {
			$0.background = image
		}
	}
	
	// default is nil. ignored if background not set. image should be stretchable
	public static func disabledBackground(_ image: UIImage?) -> Style<View> {
		Style<View> {
			$0.disabledBackground = image
		}
	}
	
	// sets when the clear button shows up. default is UITextFieldViewModeNever
	public static func clearButtonMode(_ mode: UITextField.ViewMode) -> Style<View> {
		Style<View> {
			$0.clearButtonMode = mode
		}
	}
	
	public static func delegate(_ delegate: UITextFieldDelegate) -> Style<View> {
		Style<View> {
			$0.delegate = delegate
		}
	}
}

extension Style where View: UI.TextField {
	
	public static func textInsets(_ insets: UIEdgeInsets) -> Style<View> {
		Style<View> {
			$0.textInsets = insets
		}
	}
}

