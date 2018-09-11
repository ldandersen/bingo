//
//  BingoCardController.swift
//  App
//
//  Created by Buzz Andersen on 9/11/18.
//

import Vapor

class BingoCardController {
    func generateCard(_ req: Request) throws -> Future<View> {
        return try req.view().render("hello", ["name": "Leaf"])
    }
}
