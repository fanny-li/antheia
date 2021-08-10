import SwiftUI
struct CalculatorView: View {
    
    
    //POINT SYSTEM
    @State var done = false
    @State var yesno = false
    @State public var carbon: Int = 0
    
    @State var carpool_points: Int  = 20
    @State var taxi_points: Int  = 48
    @State var car_points: Int = 48
    @State var bus_points: Int  = 3
    
    @State var gas_points: Int = 140
    @State var electricity_points: Int  = 12
    @State var oil_points: Int  = 271
    @State var propane_points: Int  = 150
    
    @State var vehicle_points: Int = 691
    @State var electronics_points: Int = 25
    @State var plastic_points: Int = 1
    @State var clothes_points: Int = 5
    @State var restaurant_points: Int = 2
    @State var organic_points: Int = 692
    
    @State var trees_points: Int = 48
    @State var bottle_points: Int = 142
    @State var paper_points: Int = 450
    
    //TOGGLE
    
    @State var bottles = false
    @State var paper = false
    
    //SLIDER
    
    @State var carpool: Double  = 0
    @State var taxi: Double  = 0
    @State var car: Double = 0
    @State var bus: Double  = 0
    
    
    @State var gas_kwh: Double = 0
    @State var electricity_therm: Double  = 0
    @State var oil_gal: Double  = 0
    @State var propane_gal: Double  = 0
    
    //    STEPPERS
    @State var people: Int = 1
    @State var vehicle: Int = 0
    @State var trees: Int = 0
    @State var electronics: Int = 0
    @State var plastic: Int = 0
    @State var clothes: Int = 0
    @State var restaurant: Int = 0
    @State var organic: Int = 0
    
    var image = #imageLiteral(resourceName: "circleprint")
    var body: some View {
        
        ScrollView {
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            VStack{
                Text("Carbon Calculator Directions: for more accurate results on this carbon calculator be as specific about this month's information.")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.custom("Verdana", size: 16))
                    .lineLimit(4)
                    .padding(.all, 10)
                
                Group {
                    
                    
                    HStack(alignment: .center) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Stepper(onIncrement: {
                            print("Stepper onIncrement")
                            self.people += 1
                        }, onDecrement: {
                            print("Stepper onDecrement")
                            self.people -= 1
                        }) {
                            Text("Household size: \(self.people)")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(3)
                        }
                    }
                    .padding(.all, 10)
                    .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(20)
                    
                    
                    HStack(alignment: .center) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Stepper(onIncrement: {
                            self.vehicle += 1
                            self.carbon += vehicle_points
                        }, onDecrement: {
                            self.vehicle -= 1
                            self.carbon += vehicle_points
                        }) {
                            Text("Number of Vehicle(s): \(self.vehicle)")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(3)
                        }
                    }
                    .padding(.all, 10)
                    .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(20)
                    
                    
                    
                    
                    HStack(alignment: .center) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Stepper(onIncrement: {
                            self.restaurant += 1
                            self.carbon += restaurant_points
                        }, onDecrement: {
                            self.restaurant -= 1
                            self.carbon -= restaurant_points
                        }) {
                            Text("Number of visits to restaurants: \(self.restaurant)")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(3)
                        }
                    }
                    .padding(.all, 10)
                    .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(20)
                    
                    
                    HStack(alignment: .center) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Stepper(onIncrement: {
                            self.organic += 1
                            self.carbon += organic_points
                        }, onDecrement: {
                            self.organic -= 1
                            self.carbon -= organic_points
                        }) {
                            Text("Pounds of fruits/produce disposed: \(self.organic)")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(3)
                        }
                    }
                    .padding(.all, 10)
                    .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(20)
                    
                    
                    HStack(alignment: .center) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Stepper(onIncrement: {
                            self.electronics += 1
                            self.carbon += electronics_points
                        }, onDecrement: {
                            self.organic -= 1
                            self.carbon -= electronics_points
                        }) {
                            Text("Number of electronics diposed: \(self.electronics)")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(3)
                        }
                    }
                    .padding(.all, 10)
                    .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(20)
                    
                    
                    HStack(alignment: .center) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Stepper(onIncrement: {
                            self.plastic += 1
                            self.carbon += plastic_points
                        }, onDecrement: {
                            self.plastic -= 1
                            self.carbon -= plastic_points
                        }) {
                            Text("Number of plastic items disposed: \(self.plastic)")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(3)
                        }
                    }
                    .padding(.all, 10)
                    .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(20)
                    
                    
                    HStack(alignment: .center) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Stepper(onIncrement: {
                            self.clothes += 1
                            self.carbon += clothes_points
                        }, onDecrement: {
                            self.clothes -= 1
                            self.carbon -= clothes_points
                        }) {
                            Text("Pounds of clothing/fabrics disposed: \(self.clothes)")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(3)
                        }
                    }
                    .padding(.all, 10)
                    .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(20)
                    
                    
                    
                    Group{ // SLIDER
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            Slider(value: $electricity_therm, in: 1...500, step: 5)
                            Text("Monthly Household Electricity usage: \(self.electricity_therm) kWh")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(5)
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            Slider(value: $oil_gal, in: 1...500, step: 5)
                            Text("Monthly Household Fuel Oil usage: \(self.oil_gal) Gallons")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(5)
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            Slider(value: $propane_gal, in: 1...500, step: 5)
                            Text( "Monthly Household Propane usage: \(self.propane_gal) Gallons" )
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(5)
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            Slider(value: $gas_kwh, in:1...500, step: 5)
                            Text("Monthly Household Natural Gas usage: \(self.gas_kwh) Therms")
                                .font(.custom("Verdana", size: 13))
                                .lineLimit(6)
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                    }
                    
                    Group{
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            Stepper(onIncrement: {
                                self.carpool += 1
                                self.carbon += carpool_points
                            }, onDecrement: {
                                self.carpool -= 1
                                self.carbon -= carpool_points
                            }) {
                                Text("Miles driven by carpool: \(self.carpool) mi")
                                    .font(.custom("Verdana", size: 13))
                                    .lineLimit(3)
                            }
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            Stepper(onIncrement: {
                                self.taxi += 1
                                self.carbon += taxi_points
                            }, onDecrement: {
                                self.taxi -= 1
                                self.carbon -= taxi_points
                            }) {
                                Text("Miles driven by taxi: \(self.taxi) mi")
                                    .font(.custom("Verdana", size: 13))
                                    .lineLimit(3)
                            }
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            Stepper(onIncrement: {
                                self.bus += 1
                                self.carbon += bus_points
                            }, onDecrement: {
                                self.bus -= 1
                                self.carbon -= bus_points
                            }) {
                                Text("Miles driven by bus: \(self.bus) mi")
                                    .font(.custom("Verdana", size: 13))
                                    .lineLimit(3)
                            }
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            Stepper(onIncrement: {
                                self.car += 1
                                self.carbon += car_points
                            }, onDecrement: {
                                self.car -= 1
                                self.carbon -= car_points
                            }) {
                                Text("Miles driven by car: \(self.car) mi")
                                    .font(.custom("Verdana", size: 13))
                                    .lineLimit(3)
                            }
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                    }
                    
                    Group{
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            Toggle("Recycle or reuse bottles", isOn: $bottles)
                                .onChange(of: bottles){ _bottles in
                                    
                                if _bottles {
                                
                                   self.carbon += bottle_points
                                }else{
                                    self.carbon -= bottle_points
                                }
                                
                            }
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                        
                        
                        HStack(alignment: .center) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            Toggle("Recycle newspapers or magazines", isOn: $paper)
                                .onChange(of: paper) { _paper in
                                    if(_paper) {
                                        self.carbon += paper_points
                                    } else {
                                        self.carbon -= paper_points
                                    }
                                }
                        }
                        .padding(.all, 10)
                        .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .cornerRadius(20)
                            
                            
                            
                            HStack(alignment: .center) {
                                Image(uiImage: image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                    .padding(.all, 20)
                                VStack(){
                                    Toggle("Did you plant any trees recently:", isOn: $yesno)
                                        .font(.custom("Verdana", size: 13))
                                    if yesno {
                                        Stepper(onIncrement: {
                                            self.trees += 1
                                            self.carbon -= trees_points
                                        }, onDecrement: {
                                            self.trees -= 1
                                            self.carbon += trees_points
                                        }) {
                                            Text("How many trees did you plant: \(self.trees)")
                                                .font(.custom("Verdana", size: 13))
                                                .lineLimit(2)
                                        }
                                    }
                                }
                            }
                            .padding(.all, 10)
                            .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .cornerRadius(20)

                            
                            Toggle("Check if you are ready for your results", isOn: $done)
                                .padding(.all, 10)
                                .background(Color(red: 249/255, green: 216/255, blue: 135/255))
                                .frame(maxWidth: .infinity, alignment: .center)
                                .cornerRadius(20)
                            if done {
                                Text("Your carbon output for this period is:"); Text("\(self.carbon)")
                                    .bold()
                                Spacer()
                                Text("To have the best chance of avoiding a 2 degree celsius rise in global temperatures, the average global carbon footprint per year needs to drop under 2 tons by 2050. Calculator Source: https://www3.epa.gov/carbon-footprint-calculator/")
                                Spacer()
                                if self.carbon > 2000 {
                                    Text("You need to step up your game! ")
                                    
                                } else if self.carbon < 2000 && self.carbon > 200 {
                                    Text("Not too bad, but Mother Earth still needs your help")
                                    
                                } else if self.carbon < 100 && self.carbon > 0 {
                                    Text("Keep up the good work!")
                                    
                                } else if self.carbon < 0 {
                                    Text("You are a Carbon Zero Hero")
                                }
                            }
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                        
                        
                    }
                    
                }
                
            }
            .background(Color(red: 212/255, green: 163/255, blue: 115/255))
            .edgesIgnoringSafeArea(.all)
        }
        
    }
    
    
    struct CalculatorView_Previews: PreviewProvider {
        static var previews: some View {
            CalculatorView()
        }
    }
