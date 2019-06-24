//brew install libressl

import Vapor
import AWSLambdaAdapter

class Handler: LambdaEventHandler {
    func handle(data: [String : Any], eventLoopGroup: EventLoopGroup) -> EventLoopFuture<[String : Any]> {
        return eventLoopGroup.next().newSucceededFuture(result: [
            "hello": "word"
        ])
    }
    
}

let dispatcher = LambdaEventDispatcher(handler: Handler())
let server = dispatcher.start()
try? server.wait()



//import VaporLambdaAdapter

//let app = try Application(runAsLambda: true)
//let router = try app.make(Router.self)
//
//router.get("hello") { req in
//    return "Hello, world."
//}
//
//try app.run()

