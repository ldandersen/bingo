import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    let cardController = BingoCardController()
    router.get("cards", use: cardController.generateCard)
}
