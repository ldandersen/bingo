//
//  BingoCardController.swift
//  App
//
//  Created by Buzz Andersen on 9/11/18.
//

import Vapor

struct Tile: Encodable {
    let title: String
    
    init(title: String) {
        self.title = title
    }
}

class BingoCardController {
    func generateCard(_ req: Request) throws -> Future<View> {
        /*let jsonFileURL = Bundle.main.url(forResource: "tiles", withExtension: "json", subdirectory: "Data")
        let jsonData = try Data(contentsOf: jsonFileURL!)
        
        let tilesJSON = try JSONSerialization.jsonObject(with: jsonData, options: [])*/
        
        let tiles = [Tile(title: "Tile 1"),
                     Tile(title: "Tile 2"),
                     Tile(title: "Tile 3"),
                     Tile(title: "Tile 4"),
                     Tile(title: "Tile 5"),
                     Tile(title: "Tile 6"),
                     Tile(title: "Tile 7"),
                     Tile(title: "Tile 8"),
                     Tile(title: "Tile 9"),
                     Tile(title: "Tile 10"),
                     Tile(title: "Tile 11")]
        
        return try req.view().render("card", ["tiles" : tiles])
    }
}
