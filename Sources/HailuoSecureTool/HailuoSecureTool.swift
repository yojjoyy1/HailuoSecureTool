// The Swift Programming Language
// https://docs.swift.org/swift-book
//import AFNetworking
import Alamofire

public struct HailuoTestArea {
    public var version = "1.0.0"
    public func initTest() async{
        print("測試成功")
        await testAPI()
    }
    private func testAPI() async{
        print("testAPI")
        await withCheckedContinuation { continuation in
            AF.request("https://www.google.com").responseString { response in
                print("response:\(response)")
                continuation.resume()
            }
        }
    }
    public init () {
        print("\(#function) 初始化成功")
    }
}
