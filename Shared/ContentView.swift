//
//  ContentView.swift
//  Shared
//
//  Created by user227537 on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                   
                    Image("bb")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                    Text("Olá, Sillas")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "eye.fill")
                        .foregroundColor(.white)
                    
                    Image(systemName: "text.bubble.fill")
                        .foregroundColor(.white)
                    
                    Image(systemName:"rectangle.portrait.and.arrow.right")
                        .foregroundColor(.white)
                }.padding()
                .background(Color.blue)
                    
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill()
                        .foregroundColor(Color(hex: 0xeef2fe))
                        .padding()
                        .aspectRatio(3, contentMode: .fit)
                    HStack{
                        VStack(alignment: .leading,spacing:5){
                            Text("Saldo disponível")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(Color(hex: 0x757679))
                                .lineLimit(1)
                            Text("R$ 1.000,00")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(Color(hex: 0x306bfe))
                        }.padding(.horizontal,10)
                        Spacer()
                        VStack(alignment: .leading,spacing:5){
                            Text("Agendado até 30Set")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(Color(hex: 0x757679))
                                .frame(maxWidth: .infinity,alignment: .trailing)
                            Text("R$ 300,00")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.red)
                                .frame(maxWidth: .infinity,alignment: .trailing)
                                
                        }.padding(.horizontal,10)
                    }.padding()
                        
                }.padding(5)
                
                HStack{
                    circleButtons(text: "Extrato",image: "dollarsign.circle.fill")
                    circleButtons(text: "Pagamento",image: "dollarsign.circle.fill")
                    circleButtons(text: "Transferência",image: "dollarsign.circle.fill")
                    circleButtons(text: "Pix",image: "dollarsign.circle.fill")
                }
                HStack{
                    circleButtons(text: "Empréstimo",image: "dollarsign.circle.fill")
                    circleButtons(text: "Seguro",image: "dollarsign.circle.fill")
                    circleButtons(text: "Investimento",image: "dollarsign.circle.fill")
                    circleButtons(text: "Consórcio",image: "dollarsign.circle.fill")
                }
                
                
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(hex: 0xeef2fe))
                    VStack{
                        VStack{
                            HStack{
                                Image(systemName: "bag.fill")
                                    .foregroundColor(.blue)
                                Spacer()
                                Text("Quer sair de casa mais tranquilo")
                                    .font(.system(size: 12, weight: .semibold))
                                Spacer()
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.gray)
                                
                            }.padding(2)
                      
                        
                            Text("Proteja da bolsa ao Pix por apenas R$ 9,90 por mês")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.secondary)
                                .frame(maxWidth: .infinity,alignment: .leading)
                                
                        }.padding(5)
                        HStack{
                            Text("AGORA NÃO")
                                .padding(.horizontal)
                                .padding(.vertical)
                                .font(.footnote)
                                .foregroundColor(.white)
                                .background(Color(.systemBlue))
                                
                                
                            Text("QUERO ME \n PROTEGER")
                                .padding(.horizontal)
                                .padding(.vertical,8)
                                .font(.footnote)
                                .foregroundColor(.blue)
                                .background(Color(hex: 0xfcf328))
                        }.padding(.vertical,5)
                        
                        }
                }.padding()
               
                Text("Cartões")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,20)
                    .padding(.top,15)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(hex: 0xeef2fe))
                    VStack{
                        HStack{
                            VStack(alignment: .leading,spacing:5){
                                
                                Text("R$ 1.000,00")
                                    .font(.system(size: 12, weight: .bold))
                                Text("Saldo disponível")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color(hex: 0x757679))
                            }.padding(.horizontal,10)
                            Spacer()
                            VStack(alignment: .leading,spacing:5){
                                Text("R$ 524,00")
                                    .font(.system(size: 12, weight: .bold))
                                Text("Disponivel")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color(hex: 0x757679))
                                    
                            }
                           
                        }.padding(.horizontal,15)
                            .padding(.vertical,10)
                        
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                                .padding(.horizontal,5)        .frame(width: 200)
                            Spacer()
                        }.padding(.bottom,10)
                        
                    }
                   
                    
                }.padding()
                
            }
        }
        
    }
}
extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
struct circleButtons: View{
    var text:String
    var image:String
    var body: some View{
        VStack{
            ZStack{
                Circle()
                    .fill(Color(hex: 0xeef2fe))
                    .frame(width: 50, height: 50)
                Image(systemName: image)
                    .foregroundColor(.blue)
            }
            Text(text)
                .font(.system(size: 12, weight: .semibold))
            
        }
        
    }
}

struct textUpDown: View{
    var textUp:String
    var textDown:String
    var color:Color = Color(hex: 0xeef2fe)
    var body: some View{
        
        VStack(alignment: .leading){
            Text(textUp)
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(Color(hex: 0x757679))
                .lineLimit(1)
            Text(textDown)
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(Color(hex: 0x306bfe))
        }.padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

