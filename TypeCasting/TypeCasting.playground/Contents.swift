//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class MediaItem {
    
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Movies: MediaItem {
    var director: String
    
    init(director: String, name: String) {
        self.director = director
        super.init(name: name)
    }
}

class Songs: MediaItem {
    var songName: String
    init(songName: String, name: String) {
        self.songName = songName
        super.init(name: name)
    }
}

let library = [Movies(director: "director", name: "golmal"), 
               Movies(director: "director", name: "golmal"),
               Songs(songName: "mera dil bhi kitna", name: "Sajana"),
                Movies(director: "director", name: "golmal"),
                Songs(songName: "mera dil bhi kitna", name: "Sajana"),
                Songs(songName: "mera dil bhi kitna", name: "Sajana")
            ]

var moviesCount = 0
var songCount = 0
for item in library {
    if let item = item as! Movies {
        moviesCount += 1
        print("item name \(item.name)")
        print("Movies class")
    }
    else if item is Songs{
        songCount += 1
        print("item name \(item.name)")
        
        print("Songs")
    }
}

print(" movies count \(moviesCount) and SOngs Count \(songCount)")
