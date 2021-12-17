//
//  ContentView.swift
//  alura-viagens
//
//  Created by Abraao Barros on 16/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            VStack{
                VStack {
                    
                    Text("Alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL").font(.custom("Avenir Book", size: 20)).foregroundColor(Color.white)
                        .frame(minWidth: 0,  maxWidth: .infinity, alignment: .leading).padding(.leading, 30)
                    Text("BRASIL").foregroundColor(Color.white).frame(minWidth: 0,  maxWidth: .infinity, alignment: .leading).padding(.leading, 30).font(.custom("Avenir Black", fixedSize: 23))
                    
                    
                    
                }
                .frame(width: geometry.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                    }.frame(width: 100, height: 50)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .background(.blue)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.blue, lineWidth: 10))
                        .offset(x: 40)
                        
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                        
                    }.foregroundColor(.white)
                    
                        .frame(width: 100, height: 50)
                        .background(.orange)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.orange, lineWidth: 10))
                        .offset(x: -40)
                }.offset(y: -30)
                
                
                List (viagens){ viagem in
                    
                    NavigationLink(destination: Mapa(coordenada: viagem.localizacao).navigationBarTitle("Localização")){
                        
                        VStack{
                            Text(viagem.titulo)
                            Image(viagem.imagem)
                                .resizable()
                                .frame(height: 125)
                        }
                    }
                  
                    
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
