// 虽然UIKit包含Foundation，但明确导入Foundation更符合语义
import Foundation

// 定义User结构体，同时遵循Encodable和Decodable协议
// 实际开发中更常用Codable，它是Encodable & Decodable的类型别名
struct User: Codable {  // ✅ 使用Codable替代Encodable, Decodable
    // 存储属性：用户名
    var name: String
    // 存储属性：年龄
    var age: Int
    
    // 如果需要自定义编解码字段名可以添加
    // enum CodingKeys: String, CodingKey {
    //     case name = "user_name"
    //     case age
    // }
}

// MARK: - 数据编码部分（Swift对象 → JSON）

// 创建User实例
let user = User(name: "hhh", age: 26)

// 实例化JSON编码器
let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted // 使输出的JSON格式化（可选）

do {
    // 尝试编码为JSON数据
    let jsonData = try encoder.encode(user)
    
    // 将Data转为String以便打印查看
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print("编码后的JSON字符串：")
        print(jsonString)
    }
} catch {
    print("JSON编码错误：\(error.localizedDescription)")
}

// MARK: - 数据解码部分（JSON → Swift对象）

// 模拟从网络或本地获取的JSON字符串
let jsonString = "{\"name\":\"hhh\",\"age\":26}"

// 将String转为Data类型
if let jsonData = jsonString.data(using: .utf8) {
    let decoder = JSONDecoder()
    
    do {
        // 尝试解码为User对象
        let decodedUser = try decoder.decode(User.self, from: jsonData)
        print("\n解码后的User对象：")
        print("姓名: \(decodedUser.name), 年龄: \(decodedUser.age)")
    } catch {
        // 输出时建议区分错误类型
        print("JSON解码错误：\(error.localizedDescription)")
    }
} else {
    print("无效的JSON字符串")
}

// MARK: - 补充说明
/*
 1. 实际项目中建议：
    - 将JSON编解码逻辑封装在单独的工具类中
    - 使用typealias或全局常量管理重复使用的encoder/decoder
    - 对错误进行统一处理而非简单打印
 
 2. 性能优化点：
    - 重用JSONEncoder/JSONDecoder实例（它们是线程安全的）
    - 大数据量时考虑异步编解码
*/
