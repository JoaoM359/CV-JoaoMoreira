//
//  HobbiesAndInterestsSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 23/04/2024.
//

import Foundation

struct HobbiesAndInterests: Hashable, Identifiable {
    let id: UUID
    let name: String
    let description: String
    let from: String
    let to: String
    
    var period: String { "\(from)-\(to)" }
}

let hobbiesAndInterests = [
    HobbiesAndInterests(id: UUID(),
                        name: "Volunteering",
                        description: """
                                        I belong for over 6 years to a missionary movement (national level) called Jovens Sem Fronteiras in which, in addition to be a part of the group in my city, I am also one of the coordinators of all the groups in the Douro region.
                                        This group carries out a lot of volunteer activities all over Portugal, and gives me the opportunity to help others.
                                    """,
                        from: "2016",
                        to: "Current"),
    
    HobbiesAndInterests(id: UUID(),
                        name: "Sports",
                        description: """
                                        For as long as I can remember, I have always been a person who was very interested in participating in various activities.
                                        I played several sports, not only group sports, such as federated football, which helped me to understand very well what the word "team" means and its spirit, but also individual sports, such as badminton, which forced me to be very committed and focused in my abilities and in their development.
                                    """,
                        from: "",
                        to: ""),
    
    HobbiesAndInterests(id: UUID(),
                        name: "Photography",
                        description: """
                                        Photography and Design have always been two subjects that I was very interessed in. Since I was very young I have always been happy to walk around and take pictures of everything, so that when I got home I could edit them.
                                        Today, I have an Instagram account exclusively dedicated to sharing those images.
                                    """,
                        from: "",
                        to: "")
]
