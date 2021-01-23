//
//  Styling+Extensions.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension Style {
	public init(styles: [Style<View>]) {
		self.init { view in
			styles.forEach({ $0.apply(to: view) })
		}
	}

	public func add(_ other: Style<View>) -> Style {
		return Style {
			self.apply(to: $0)
			other.apply(to: $0)
		}
	}
}

// make constructors for each type to get compile time check

extension UIView {
	public convenience init(styles: [Style<UIView>]) {
		self.init(frame: .zero)
		
		styles.forEach(apply)
	}
}

extension UILabel {
	public convenience init(styles: [Style<UILabel>]) {
		self.init(frame: .zero)

		styles.forEach(apply)
	}
}

extension UI.Label {
	public convenience init(styles: [Style<UI.Label>]) {
		self.init(frame: .zero)

		styles.forEach(apply)
	}
}

extension UITextField {
	public convenience init(styles: [Style<UITextField>]) {
		self.init(frame: .zero)
		
		styles.forEach(apply)
	}
}

extension UI.TextField {
	public convenience init(styles: [Style<UI.TextField>]) {
		self.init(frame: .zero)
		
		styles.forEach(apply)
	}
}

extension UITextView {
	public convenience init(styles: [Style<UITextView>]) {
		self.init(frame: .zero)
		
		styles.forEach(apply)
	}
}

extension UIButton {
	public convenience init(styles: [Style<UIButton>]) {
		self.init(frame: .zero)
		
		styles.forEach(apply)
	}
}

extension UI.Button {
	public convenience init(styles: [Style<UI.Button>]) {
		self.init(frame: .zero)
		
		styles.forEach(apply)
	}
}

extension UIStackView {
	public convenience init(styles: [Style<UIStackView>]) {
		self.init(frame: .zero)
		
		styles.forEach(apply)
	}
}
