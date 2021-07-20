import Foundation

extension URL {
    
    /// Instantiate a `URL` from a `StaticString.`
    ///
    /// https://www.swiftbysundell.com/articles/constructing-urls-in-swift/#static-urls
    /// - Parameter string: The URL string.
    /// - Precondition: The URL string must be valid.
    init(staticString string: StaticString) {
        guard let url = URL(string: "\(string)") else {
            preconditionFailure("Invalid static URL string: \(string)")
        }

        self = url
    }
    
}
