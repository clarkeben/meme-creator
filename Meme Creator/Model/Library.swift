//
//  Library.swift
//  Meme Creator
//
//  Created by Ben Clarke on 28/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import Foundation

struct Library {
    let image: String
    let imageText: String
    
    static func returnImages() -> [Library] {
        var allDataEntries = [Library]()
        
        allDataEntries.append(Library(image: "distractedboyfriend", imageText: "Distracted Boyfriend"))
        allDataEntries.append(Library(image: "twobuttons", imageText: "Two Buttons"))
        allDataEntries.append(Library(image: "twoballoons", imageText: "Two Balloons"))
        allDataEntries.append(Library(image: "mockingspongebob", imageText: "Mocking Sponge Bob"))
        allDataEntries.append(Library(image: "monkeypuppet", imageText: "Monkey Puppet"))
        allDataEntries.append(Library(image: "eviltolder", imageText: "Evil Todler"))
        allDataEntries.append(Library(image: "womenyellinatcat", imageText: "Women Yell At Cat"))
        allDataEntries.append(Library(image: "waitingskeleton", imageText: "Waiting Skeleton"))
        allDataEntries.append(Library(image: "disastergirl", imageText: "Disaster Girl"))
        allDataEntries.append(Library(image: "sadpablo", imageText: "Sad Pablo Escobar"))
        allDataEntries.append(Library(image: "toystory", imageText: "Toy Story"))
        allDataEntries.append(Library(image: "hidethepainharold", imageText: "Hide the Pain Harnold"))
        allDataEntries.append(Library(image: "thinkaboutit", imageText: "Think About It"))
        allDataEntries.append(Library(image: "ancientaliens", imageText: "Ancient Aliens"))
        allDataEntries.append(Library(image: "onedoesnotsimply", imageText: "One Does Not Simply"))
        allDataEntries.append(Library(image: "yallgotanymoreofthat", imageText: "Y'all Got Any More of That"))
        allDataEntries.append(Library(image: "oprahyougota", imageText: "Operah You Got A"))
        
        return allDataEntries
    }
    
}
