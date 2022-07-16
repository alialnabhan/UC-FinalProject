//
//  ContentView.swift
//  Final Project
//
//  Created by MAC on 12/07/2022.
//

import SwiftUI

struct ClubsStruct : Identifiable {
    
    var id = UUID()
    var clubName : String
    var clubChampions : [String]
    
}
struct Title1 : ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 40))
            .foregroundColor(Color("Color"))
    }
}
struct Title2 : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .foregroundColor(Color("Color"))
    }
}
struct ContentView: View {
    @State var championsArray : [ClubsStruct] = [
        ClubsStruct(
            clubName: "realmadrid",
            clubChampions: ["1956", "1957", "1958", "1959", "1960", "1966", "1998", "2000", "2002", "2014", "2016", "2017", "2018", "2022"]),
        ClubsStruct(
            clubName: "AC Milan",
            clubChampions: ["1963" , "1969" , "1989" , "1990" , "1994" , "2003" , "2007"]),
        ClubsStruct(clubName: "Bayern Munich", clubChampions: ["1974" , "1975" , "1976" , "2001" , "2013" , "2020"]),
        ClubsStruct(clubName: "Liverpool", clubChampions: ["1977" , "1978" , "1981" , "1984" , "2005" , "2919"]),
        ClubsStruct(
            clubName: "Barcelona",
            clubChampions: ["1992", "2006", "2009", "2011", "2015"]),
        ClubsStruct(clubName: "Manchester United", clubChampions: ["1968" , "1999" , "2008"])
    ]
    
    var body: some View {
        NavigationView{
            
            VStack{
                List(championsArray, id:\.id){
                    champion in
                    NavigationLink {
                        SecondView(Club: ClubsStruct(clubName: champion.clubName,clubChampions: champion.clubChampions))
                    } label: {
                        HStack{
                            Image(champion.clubName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Spacer()
                            Text("\(champion.clubName)")
                            Spacer()
                        }.padding(3)
                    }

                }
                }
            .navigationBarTitle("Clubs")
        }.accentColor(.white)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
