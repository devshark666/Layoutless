//
//  Style+UIStackView.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension Style where View: UIStackView {
	
	//	Uses margin layout attributes for edge constraints where applicable.
	//	Defaults to NO.
	public static func layoutMargins(_ margins: UIEdgeInsets) -> Style<View> {
		Style<View> {
			$0.layoutMargins = margins
			$0.isLayoutMarginsRelativeArrangement = true
		}
	}
	
	//	A stack with a horizontal axis is a row of arrangedSubviews,
	//	and a stack with a vertical axis is a column of arrangedSubviews.
	public static func axis(_ axis: NSLayoutConstraint.Axis) -> Style<View> {
		Style<View> {
			$0.axis = axis
		}
	}
	
	//	The layout of the arrangedSubviews along the axis
	public static func distribution(_ distribution: UIStackView.Distribution) -> Style<View> {
		Style<View> {
			$0.distribution = distribution
		}
	}
	
	//	The layout of the arrangedSubviews transverse to the axis;
	//	e.g., leading/trailing edges in a vertical stack
	public static func alignment(_ alignment: UIStackView.Alignment) -> Style<View> {
		Style<View> {
			$0.alignment = alignment
		}
	}
	
	//	 Spacing between adjacent edges of arrangedSubviews.
	//	 Used as a strict spacing for the Fill distributions, and
	//	 as a minimum spacing for the EqualCentering and EqualSpacing
	//	 distributions. Use negative values to allow overlap.
	//
	//	 On iOS 11.0 or later, use UIStackViewSpacingUseSystem (Swift: UIStackView.spacingUseSystem)
	//	 to get a system standard spacing value. Setting spacing to UIStackViewSpacingUseDefault
	//	 (Swift: UIStackView.spacingUseDefault) will result in a spacing of 0.
	//
	//	 System spacing between views depends on the views involved, and may vary across the
	//	 stack view.
	//
	//	 In vertical stack views with baselineRelativeArrangement == YES, the spacing between
	//	 text-containing views (such as UILabels) will depend on the fonts involved.
	public static func spacing(_ spacing: CGFloat) -> Style<View> {
		Style<View> {
			$0.spacing = spacing
		}
	}
	
	//	Baseline-to-baseline spacing in vertical stacks.
	//		The baselineRelativeArrangement property supports specifications of vertical
	//	 space from the last baseline of one text-based view to the first baseline of a
	//	 text-based view below, or from the  top (or bottom) of a container to the first
	//	 (or last) baseline of a contained text-based view.
	//		This property is ignored in horizontal stacks. Use the alignment property
	//	 to specify baseline alignment in horizontal stacks.
	//		Defaults to NO.
	public static func baselineRelativeArrangement() -> Style<View> {
		Style<View> {
			$0.isBaselineRelativeArrangement = true
		}
	}
}
