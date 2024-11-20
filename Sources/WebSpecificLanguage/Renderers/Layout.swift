//
//  Layout.swift
//  WebSpecificLanguage
//
//  Created by Mac Long on 11/20/24.
//

/// HTML Document
///
/// Opens an HTML document including doctype tag
///
/// TODO: implement attributes https://mdn.dev/
struct Html: HTML {
    @HTMLBuilder var content: () -> [any HTML]
    
    func render() -> String {
        let tags = content()
        let html = tags.map { $0.render() }.joined()
        return "<!DOCTYPE html>\n<html>\(html)</html>"
    }
}

//struct Body: HTML {}
//struct Div: HTML {}
//struct Section: HTML {}
//struct Article: HTML {}
//struct Aside: HTML {}
//struct Main: HTML {}
//struct Header: HTML {}
//struct Footer: HTML {}
//struct Nav: HTML {}
//struct Address: HTML {}
//struct Details: HTML {}
//struct Summary: HTML {}
//struct Dialog: HTML {}
//struct Accordion: HTML {}
/// Should be unordered or ordered
//struct List: HTML {]
