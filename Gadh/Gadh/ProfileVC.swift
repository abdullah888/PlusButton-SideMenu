//
//  ProfileVC.swift
//  Gadh
//
//  Created by abdullah FH  on 22/12/1442 AH.
//

import SwiftUI

struct ProfileVC: View {
    
    @State var index = 0
    @State var show = false
    
    var body: some View{
        
        ZStack{
        
            // Menu...
            
            HStack{
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Image("arab")
                    
                    
                    Text("عبدالله بن فهد")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    Text("الاعدادات")
                        .fontWeight(.bold)
                        .font(.title3)
                        .foregroundColor(.gray)
                    
                    Button(action: {
                        
                        self.index = 0
                        
                        // animating Views...
                        
                        // Each Time Tab Is Clicked Menu Will be Closed...
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "house.fill")
                                .foregroundColor(self.index == 0 ? Color("Color1") : Color.white)
                            
                            
                            Text("الصفحة الرئيسية")
                                .foregroundColor(self.index == 0 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    .padding(.top,25)
                    
                    Button(action: {
                        
                        self.index = 1
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "person.fill")
                                .foregroundColor(self.index == 1 ? Color("Color1") : Color.white)
                            
                            
                            Text("Profile")
                                .foregroundColor(self.index == 1 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 2
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "plus.app.fill")
                                .foregroundColor(self.index == 2 ? Color("Color1") : Color.white)
                            
                            
                            Text("صفحة الاضافة")
                                .foregroundColor(self.index == 2 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 3
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "person.3.fill")
                                .foregroundColor(self.index == 3 ? Color("Color1") : Color.white)
                            
                            
                            Text("الاصدقاء")
                                .foregroundColor(self.index == 3 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical,30)
                    
                    Button(action: {
                        
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("out")
                                .foregroundColor(Color.white)
                            
                            
                            Text("تسجيل خروج")
                                .foregroundColor(Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,25)
                .padding(.horizontal,20)
                
                Spacer(minLength: 0)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            // MainView...
            
            VStack(spacing: 0){
                
                HStack{
                    Button(action: {
                        self.show.toggle()
                    }, label: {
                        Image("menu")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black)
                            .padding()
                    })
                  
                    Spacer()
                    HStack{
                        Text("abdullah")
                            .font(.title)
                            .foregroundColor(.black)
                            
                            .padding()
                        Spacer()
                        Image("arab")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding()
                    }
                    
                   
                }
           
                .padding()
                .padding(.top, 30)
                GeometryReader{_ in
                    
                    VStack{
                        
                        // Changing Views Based On Index...
                        
                        if self.index == 0{
                            
                            HomeVC()
                        }
                        else if self.index == 1{
                            
                            EmptyView()
                        }
                        else if self.index == 2{
                            
                            EmptyView()
                        }
                        else{
                            
                            EmptyView()
                        }
                    }
                }
            }
            .background(Color(.white).edgesIgnoringSafeArea(.all))
                //Applying Corner Radius...
                .cornerRadius(self.show ? 30 : 0)
                // Shrinking And Moving View Right Side When Menu Button Is Clicked...
                .scaleEffect(self.show ? 0.9 : 1)
                .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
                // Rotating Slighlty...
                .rotationEffect(.init(degrees: self.show ? -5 : 0))
            
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }}

struct ProfileVC_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVC()
    }
}
