//
//  ContentView.swift
//  WheaterApp
//
//  Created by Lofy on 30/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeaterStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 20 : 27)
                GradWeaterDayView()
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeaterButton(tituloBotao: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeaterDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)º")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {

        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black : Color.blue)
//            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeaterStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)ºC")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}



struct GradWeaterDayView: View {
    var body: some View {
        HStack(spacing: 20){
            WeaterDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 26)
            WeaterDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 34)
            WeaterDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 15)
            WeaterDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 16)
            WeaterDayView(dayOfWeek: "SAT", imageName: "snow", temperature: -1)
        }
    }
}




