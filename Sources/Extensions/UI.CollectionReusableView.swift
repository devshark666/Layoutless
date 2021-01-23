//
//  UI.CollectionReusableView.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension UI {
	
	open class CollectionReusableView: UICollectionReusableView {

		/// A closure that gets called with `self` as an argument on `layoutSubviews`.
		/// Use it to configure styles that are derived from the view bounds.
		public var onLayout: (CollectionReusableView) -> Void = { _ in }

		public override init(frame: CGRect) {
			super.init(frame: frame)
			setup()
			defineLayout()
		}

		public required init?(coder aDecoder: NSCoder) {
			super.init(coder: aDecoder)
			setup()
			defineLayout()
		}

		open override func layoutSubviews() {
			super.layoutSubviews()
			onLayout(self)
			if layer.shadowOpacity > 0 {
				layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius).cgPath
			}
		}

		public func setup() { }

		open func defineLayout() {
			_ = subviewsLayout.layout(in: self)
		}

		open var subviewsLayout: AnyLayout {
			return EmptyLayout()
		}
	}
}
