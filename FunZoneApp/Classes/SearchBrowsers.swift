//
//  SearchBrowsers.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/1/22.
//

import Foundation

class SearchBrowsers {
    var browser = ""
    var imageBrowser = ""
    var link = ""
    
    init(browser: String, imageBrowser: String, link: String) {
        self.browser = browser
        self.link = link
        self.imageBrowser = imageBrowser
    }
    
    static func FetchBrowsers() -> [SearchBrowsers]{
       return [
        SearchBrowsers(browser: "Google", imageBrowser: "google-logo", link: "https://www.google.com"),
        SearchBrowsers(browser: "Facebook", imageBrowser: "facebook-logo", link: "https://www.facebook.com"),
        SearchBrowsers(browser: "Twitter", imageBrowser: "twitter-logo", link: "https://twitter.com"),
        SearchBrowsers(browser: "Reddit", imageBrowser: "reddit-logo", link: "https://reddit.com")
       ]
    }
    
    
    
}
