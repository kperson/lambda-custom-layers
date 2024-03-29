//brew install libressl

import Vapor
import AWSLambdaAdapter
import VaporLambdaAdapter

let app = try Application(runAsLambda: true)
let router = try app.make(Router.self)

router.get("hello") { req in
    return "Hello, world."
}

try app.run()

