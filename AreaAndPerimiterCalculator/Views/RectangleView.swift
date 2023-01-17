import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored Properties
    //@State is a property weapper
    //Telling SwiftUI to "watch" these properties for changes
    //Update the user interface when they change
    @State var length: Double = 70
    @State var width: Double = 25
    
    //MARK: Computed Properties
    var area: Double {
        return length * width
    }
    //UI
    var body: some View {
        VStack {
            HStack {
                Image("Rectangle1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                Spacer()
            }
            
            //Length
            Text("Length")
                .font(.title2)
                .bold()
            //Use string interpolation \() to display within
            Text("\(length)")
            
            //Slider to control length
            Slider(value: $length,
                   in: 0...100,
                   label: { Text("Length")},
                   minimumValueLabel: { Text("0")},
                   maximumValueLabel: { Text("100")})
            
            //Width
            Text("Width")
                .font(.title2)
                .bold()
            //Use string interpolation \() to display within
            Text("\(width)")
            
            //Slider to control width
            Slider(value:($width),
                   in: 0...100,
                   label: { Text("width")},
                   minimumValueLabel: { Text("0")},
                   maximumValueLabel: { Text("100")})
            
            //Area
            Text("Area")
                .font(.title2)
                .bold()
            //Use string interpolation \() to display within
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
