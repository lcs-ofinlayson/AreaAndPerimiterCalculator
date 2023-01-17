//
//  RectangleView.swift
//  AreaAndPerimiterCalculator
//
//  Created by Oliver Finlayson on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored Properties
    let length: Double = 7
    let width: Double = 5
    
    //MARK: Computed properties
    
    var area: Double {
        
        return length * width
        
    }
    
    
    
    
    
    //Shoes our user interface
    var body: some View {
        VStack{
            
            HStack{
           
                Image("Rectangle1")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                Spacer()
        }
            // Length
            Text("Length")
                .font(.title2)
                .bold()
        
            
            //Use string interpolation \() to display length
            Text("\(length)")
            
            
            
            // Width
            Text("Width")
                .font(.title2)
                .bold()
        
            
            //Use string interpolation \() to display length
            Text("\(width)")
            
            
            
            // Area
            Text("area")
                .font(.title2)
                .bold()
        
            
            //Use string interpolation \() to display length
            Text("\(area)")
            
            Spacer()
    }
}
}
struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
