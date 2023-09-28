//
//  ProfileThreadFilter.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import Foundation


enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    
    case threads
    case replies
    
    var title: String {
        switch self {
        case.threads: return "Threads"
        case.replies: return "Replies"
        }
    }
    var id: Int { return self.rawValue}
}
