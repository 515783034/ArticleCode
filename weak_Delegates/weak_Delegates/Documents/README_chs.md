在swift中, weak 只能修饰class 和protocol

```
weak may only be applied to class and class-bound protocol types
```
考虑如下场景,如果希望有多个delegat的话, 应该如何实现呢?
方案一是: ```NSPointerArray```

---
talk is cheap, show me the code
```
/// 初始化
var delegates = NSPointerArray(options: .weakMemory)

/// 添加
let pointer = Unmanaged.passUnretained(strongObject).toOpaque()
delegates.addPointer(pointer)

/// 移除,如果需要移除指定元素, 还需要先获取元素的index
delegates.removePointer(at: index)

```

虽然使用起来相当简单, 毕竟Unmanaged这些代码看起来相当不直观,于是我简单得封装了一下,现在使用如下
```
/// 初始化, 泛型传入代理类型
var delegates = WeakArray<someProtocol>()

// 添加
delegates.add(someProtocol1)

// 移除
delegates.remove(someProtocol2)

// 触发代理
delegates.excute(block)      // block: ((someProtocol?)->)
```

