import Foundation


func strStr(_ haystack: String, _ needle: String) -> Int {
    
    guard !needle.isEmpty else {
        return 0
    }
    
    guard haystack.contains(needle) else {
        return -1
    }
    
    let range = (haystack as NSString).range(of: needle)
    return range.location
}
