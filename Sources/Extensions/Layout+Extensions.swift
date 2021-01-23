//
//  Layout+Extensions.swift
//  Layoutless-iOS
//
//  Created by Jesper on 23/01/2021.
//  Copyright © 2021 Declarative Hub. All rights reserved.
//

import UIKit

extension LayoutProtocol where Self.Node : Layoutless.Anchorable {

	public func sizing(to size: Layoutless.Length) -> Layoutless.Layout<Self.Node> {
		self.sizing(toWidth: size, height: size)
	}
}

extension LayoutProtocol where Node: Anchorable {

	public func fillingParentMargin(insets: (left: Length, right: Length, top: Length, bottom: Length) = (0, 0, 0, 0)) -> Layout<ChildNode<Node>> {
		return stickingToParentMarginEdges(left: insets.left, right: insets.right, top: insets.top, bottom: insets.bottom)
	}
	
	public func layoutRelativeToParentMargin(layout: @escaping (Anchorable, Node, Revertable) -> Void) -> Layout<ChildNode<Node>> {
		return Layout { parentRevertable in
			return ChildNode(self.makeLayoutNode(parentRevertable)) { parent, node, revertable in
				parentRevertable.append(revertable)
				layout(parent.layoutMarginsGuide, node, revertable)
			}
		}
	}
	
	/// Constrain node's edges to the parent node's edges using the given insets. Only edges with non-nil insets will be constrained! Default insets are nil.
	public func stickingToParentMarginEdges(left: Length? = nil, right: Length? = nil, top: Length? = nil, bottom: Length? = nil) -> Layout<ChildNode<Node>> {
		return layoutRelativeToParentMargin() { parent, node, revertable in
			if let left = left {
				let constraint = left.constrain(node.leftAnchor, to: parent.leftAnchor)
				constraint.isActive = true
				revertable.appendBlock {
					constraint.isActive = false
				}
			}
			if let right = right {
				let constraint = right.constrain(parent.rightAnchor, to: node.rightAnchor)
				constraint.isActive = true
				revertable.appendBlock {
					constraint.isActive = false
				}
			}
			if let top = top {
				let constraint = top.constrain(node.topAnchor, to: parent.topAnchor)
				constraint.isActive = true
				revertable.appendBlock {
					constraint.isActive = false
				}
			}
			if let bottom = bottom {
				let constraint = bottom.constrain(parent.bottomAnchor, to: node.bottomAnchor)
				constraint.isActive = true
				revertable.appendBlock {
					constraint.isActive = false
				}
			}
		}
	}
}
