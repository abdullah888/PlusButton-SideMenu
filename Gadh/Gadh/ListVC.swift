//
//  ListVC.swift
//  Gadh
//
//  Created by abdullah FH  on 19/12/1442 AH.
//

import SwiftUI

struct ListVC: View {
    @State private var showingPopover = false

       var body: some View {
        ZStack {
            VStack{
                VStack {
                    HStack{
                        
                        Image( "arab")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding()
                        
                        Text("abdullah")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                        
                        Spacer()
                        
                        Button(action: {
                            self.showingPopover.toggle()
                        }, label: {
                            Image(systemName: "plus")
                                .font(.title)
                                .foregroundColor(.white)
                                
                                
                        })
                        .popover(isPresented: $showingPopover) {
                         
                            HomeVC()
                            
                            
                        }
                        .padding()
                        
                        
                        
                        
                        
                    }
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: 150)
                .background(Color.blue)
                .padding()
                .padding(.all, -18)
                .edgesIgnoringSafeArea(.top)
                Spacer()
                  
                    
            }
        }
    }
}
                    

struct ListVC_Previews: PreviewProvider {
    static var previews: some View {
        ListVC()
    }
}


struct CC:View {
 
    var body: some View {
   Image("1")
    .resizable()
    .frame(width: UIScreen.main.bounds.width - 10, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
    
}

