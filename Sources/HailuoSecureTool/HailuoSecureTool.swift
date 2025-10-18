// The Swift Programming Language
// https://docs.swift.org/swift-book
import AFNetworking
public struct HailuoTestArea{
    public var version = "1.0.0"
    public func initTest(){
        print("測試成功")
        testAPI()
    }
    private func testAPI(){
        let manager = AFHTTPSessionManager()
        manager.get("https://www.google.com", parameters: nil, headers: nil, progress: nil) { _, response in
            print("Response: \(response ?? "")")
        } failure: { _, error in
            print("Error: \(error)")
        }

    }
    public init () {
        print("\(#function) 初始化成功")
    }
}
