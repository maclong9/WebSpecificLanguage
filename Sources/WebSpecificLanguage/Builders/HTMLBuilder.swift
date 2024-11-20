//
//  HTMLBuilder.swift
//  WebSpecificLanguage
//
//  Created by Mac Long on 11/20/24.
//

@resultBuilder
struct HTMLBuilder {
    static func buildBlock(_ components: [any HTML]) -> [any HTML] { components.compactMap { $0 } }
    static func buildExpression(_ expression: any HTML) -> [any HTML] {[expression]}
    static func buildOptional(_ component: [any HTML]?) -> [any HTML] {component ?? []}
    static func buildEither(first component: [any HTML]) -> [any HTML] {component}
    static func buildEither(second component: [any HTML]) -> [any HTML] {component}
}
