# libGopher

LibGopher is a Gopher protocol implementation in Swift 4. It hooks into Cocoa's URLSession mechanics, so you can use the tasks you're already used to (albeit with some limitations) just using `gopher://`-style URLs.

## Registering libGopher

The only step that you need to do when you want to access Gopher URLs is register **libGopher** to handle the `gopher` scheme for you:

```swift
URLProtocol.registerClass(GopherURLProtocol.self)
```
