//
//  ContentView.swift
//  Disenio
//
//  Created by Jonathan Casillas on 29/05/22.
//

/**
-> Comandos<-
 
 Comand + Shift  + tecla 7     Cometar y descomentar
 Control + i                             Ordenar el codigo
 Comando + click  menu de funciones
 
 ->MENU DE FUNCIONES IMPORTANTES<-
    Embebid in ZStack   |
    Embebid in HStack   |  -->     Agrega un Stack al contenido seleccionado
    Embebid in VStack   |
 	
    SiwftUI Inspector  Mestra las propiedades del componente
 
->VALORES DE ENTORNO o EnviromentValues<-
 
@Enviroment(\.Locale) Sirve para localizacion regional de la aplicacion de nuestra aplicación
@Enviroment(\.colorScheme) Sirve para trabajar los colores como Dark mode o el Light mode
@Enviroment(\.horizontalSizeClass) Sirve para trabajar la horientacion de la aplicacion en horizontal
 
 ->ICONOS DE APPLE<-
 
 Se instala SF Simbols en la Mac y se ocupan como si fuera una imagen
 Para el tamaño se utiliza el font
 Ejemplo
 Image(systemName: "gamecontroller").font(.system(.size: 30 ))
 
 
 */



import SwiftUI

struct ContentView: View {
    
    //valiables de entorno o enviromenteValues
    
    @Environment(\.horizontalSizeClass) var HsizeClass
    @Environment(\.verticalSizeClass)   var VsizeClass
    
    var body: some View {
        if HsizeClass == .compact && VsizeClass == .regular{
            compactDesing()
        } else {
            regularDesing()
        }
    }
    
    
}

struct compactDesing: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.indigo.edgesIgnoringSafeArea(.all)
            ScrollView {
                
                
                VStack(alignment: .center){
                    
                    let texto: Text = Text("Practicando con Swift")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)

                    texto
                        .bold()
                        .font(.system(size: 40))
                        .italic()
                        .underline()
                        .padding()
                    
                    HStack{
                        Text("Texto ")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .italic()
                        
                        Text("Iconos ")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .italic()
                    }.padding()
                    
                    
                    HStack{
                        Text("Poniendo una imagen ")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .italic()
                        
                        Image("pokemon")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .leading)
                    }.padding()
                    
                    
                    HStack{
                        
                        Button(action: {
                            
                        }){
                            Text("phone.fill")
                                .foregroundColor(.white)
                                .italic()
                                .font(.system(size: 30))
                            Image(systemName: "phone.fill")
                                .font(.system(size: 60))
                                .background(Color.indigo)
                                .foregroundColor(.orange)
                        }.frame( alignment: .leading )
                    }.padding(.all)
                    
                    
                    
                    HStack(alignment: .center){
                        
                        
                        Button(action: {
                            
                        }){
                            Text("bubble.left.fill")
                                .foregroundColor(.white)
                                .italic()
                                .font(.system(size: 30))
                            Image(systemName: "bubble.left.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.white)
                        }
                        
                    }.padding(.all)
                    
                    HStack(alignment: .center, spacing: 150){
                        
                        Button(action: {
                            
                        }){
                            
                            Text("gamecontroller")
                                .foregroundColor(.white)
                                .italic()
                                .font(.system(size: 30))
                            Image(systemName: "gamecontroller" )
                                .font(.system(size: 60))
                                .background(.indigo)
                                .foregroundColor(.black)
                            
                        }
                    }
                    HStack(alignment: .center, spacing: 150){
                        
                        Button(action: {
                            
                        }){
                            
                            Text("house")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .italic()
                            Image(systemName: "house.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.green)
                        }
                    }
                    
                }.padding(.all)
                
                HStack(alignment: .center, spacing: 150){
                    
                    Button(action:  {
                        
                    }){
                        
                        Text("keyboard")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        Image(systemName: "keyboard")
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    
                }.padding(.all)
                
                HStack(alignment: .center, spacing: 150){
                    
                    Button(action:  {
                        
                    }){
                        
                        Text("car.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        Image(systemName: "car.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                    }
                    
                }.padding(.all)
                
                HStack(alignment: .center, spacing: 150){
                    
                    Button(action:  {
                        
                    }){
                        
                        Text("airplane")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        Image(systemName: "airplane")
                            .font(.system(size: 60))
                            .foregroundColor(.gray)
                    }
                    
                }.padding(.all)
                
            }
        }
        
    }
}

struct regularDesing: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.blue.edgesIgnoringSafeArea(.all)
            ScrollView {
                
                
                VStack(alignment: .center){
                    Image("pokemon")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .top)
                        .clipShape(Circle())
                    
                    let texto: Text = Text("Pokemones")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        
                        
                    texto
                        .bold()
                        .font(.system(size: 40))
                    
                    HStack{
                        texto
                            .foregroundColor(.indigo)
                            .italic()
                        
                        Image("pokemon")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .leading)
                            .clipShape(Circle())
                    }
                    HStack(alignment: .center ){
                        
                        texto
                            .foregroundColor(.indigo)
                            .italic()
                        Image("pokemon")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .clipShape(Circle())
                        
                    }
                    HStack(alignment: .center, spacing: 150){
                        Text("Venasaur")
                            .foregroundColor(.indigo)
                            .italic()
                        Image("pokemon")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .clipShape(Circle())
                    }
                    HStack(alignment: .center, spacing: 150){
                        Text("Charmander")
                            .foregroundColor(.indigo)
                            .italic()
                        
                        Image("pokemon")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .clipShape(Circle())
                    }
                    HStack(alignment: .center, spacing: 150){
                        Text("Charizard")
                            .foregroundColor(.indigo)
                        Image("pokemon")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .clipShape(Circle())
                    }
                    HStack(alignment: .center, spacing: 150){
                        Text("Warturtle")
                            .foregroundColor(.indigo)
                        Image("pokemon")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .clipShape(Circle())
                    }
                    
                }
                .padding(.all)
                
            }
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
