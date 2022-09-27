//
//  CardView.swift
//  RunRadius-SwiftUI
//
//  Created by Jacob Myers on 9/25/22.
//

import SwiftUI

struct CardView: View {
    
    @Binding var radiusValue: Double
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width,
                       height: 285,
                       alignment: .center)
            .foregroundColor(Color("CardColor"))
            
            VStack {
                SwiftUISlider(
                    thumbColor: UIColor(Color("SliderThumbColor")),
                    minTrackColor: UIColor(Color("SliderActiveValueColor")),
                    maxTrackColor: UIColor(Color("SliderInactiveValueColor")),
                    value: $radiusValue
                ).frame(width: 300)
                    .padding(-20)
                
                HStack {
                    Spacer()
                    VStack(alignment: .center) {
                        HStack {
                            Text(String(format: "%.1f", radiusValue * 3.0))
                                .font(.custom("Futura", size: 55))
                                .bold()
                            .foregroundColor(.white)
                            Text("mi")
                                .font(.custom("Futura", size: 20))
                                .padding(.top, 30)
                            .foregroundColor(.white)
                        }
                        
                        HStack {
                            Text("\(String(format: "%.0f", radiusValue * 25.5))")
                                .font(.custom("Futura", size: 55))
                                .bold()
                            .foregroundColor(.white)
                            Text("mins")
                                .font(.custom("Futura", size: 20))
                                .padding(.top, 30)
                            .foregroundColor(.white)
                        }.padding(.top, -20)
                        
                        HStack {
                            Spacer()
                            Text("To Edge")
                                .font(.custom("Futura", size: 20))
                                .foregroundColor(.white)
                                .italic()
                            .frame(alignment: .center)
                            Spacer()
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center)  {
                        HStack {
                            Text("\(String(format: "%.1f", (radiusValue * 3.0) * 2))")
                                .font(.custom("Futura", size: 55))
                                .bold()
                            .foregroundColor(.white)
                            Text("mi")
                                .font(.custom("Futura", size: 20))
                                .padding(.top, 30)
                            .foregroundColor(.white)
                        }
                        
                        HStack {
                            Text("\(String(format: "%.0f", (radiusValue * 25.5) * 2))")
                                .font(.custom("Futura", size: 55))
                                .bold()
                            .foregroundColor(.white)
                            Text("mins")
                                .font(.custom("Futura", size: 20))
                                .padding(.top, 30)
                            .foregroundColor(.white)
                        }.padding(.top, -20)
                        
                        HStack {
                            Spacer()
                            Text("There & Back")
                                .font(.custom("Futura", size: 20))
                                .foregroundColor(.white)
                                .italic()
                            .frame(alignment: .center)
                            Spacer()
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(radiusValue: Binding(projectedValue: .constant(0.5)))
    }
}
