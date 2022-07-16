//
//  SwiftUIView.swift
//  Final Project
//
//  Created by MAC on 15/07/2022.
//

import SwiftUI

struct SecondView: View {
    
    @State var Club : ClubsStruct
    var body: some View {
        ZStack{
            Color.black.opacity(0.3)
                    .background(Image("Champions League")
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                            
                )
                .ignoresSafeArea()
            
            VStack{
                Image("Champions League")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 500)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text("\(Club.clubName) - \(Club.clubChampions.count)")
                    .modifier(Title1())
                ScrollView(.horizontal){
                    HStack{
                        ForEach(Club.clubChampions, id: \.self){
                            members in
                            VStack{
                                Image(members)
                                    .resizable()
                                    .frame(width: 120, height: 100)
                                Text(members)
                                    .modifier(Title2())
                            }.padding(5)
                        }
                    }
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(Club: ClubsStruct(clubName: "realmadrid", clubChampions: ["1956"]))
    }
}


