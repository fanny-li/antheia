//
//  UserProfile.swift
//  Antheia
//
//  Created by Fanny Li on 7/29/21.
//

import SwiftUI

struct UserProfile: View {
    
    @State var isShowingImagePicker = false
    @State var tempImage = UIImage()
    
    @State var name = "James Diamond"
    @State var age = 24
    
    
    // Bar Graph Values
    @State var pickerSelectionItem = 0
    @State var dataPoints: [[CGFloat]] = [
        [50, 100, 200, 120, 80],
        [150, 100, 50, 70, 10],
        [10, 20, 30, 50, 80]
    ]
    
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color(red: 1.00, green: 0.91, blue: 0.84)).edgesIgnoringSafeArea(.all)
            
            VStack{
                // User Information
                HStack(alignment: .top, content: {
                    VStack{
                        Image(uiImage: tempImage).resizable().scaledToFill().frame(width: 120, height: 120).border(Color.black, width: 1).clipped()
                        Button(action: {
                            self.isShowingImagePicker.toggle()
                        }, label: {
                            Text("Select Image")
                        }).sheet(isPresented: $isShowingImagePicker, content: {
                            ImagePickerView(isPresented: self.$isShowingImagePicker, selectedImage: self.$tempImage)
                        })
                    }
                    
                    VStack{
                        Text(name).font(.headline).kerning(1.0).padding()
                        Text("Age: \(age)").font(.headline).kerning(1.0).padding()
                        
                    }
                    
                
                }).padding(.top, 40)
                Spacer()
                
                // Bar Graph
                VStack{
                    Text("Personal Tracker").font(.title2).fontWeight(.bold).foregroundColor(.gray).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 24)
                    
                    Picker(selection: $pickerSelectionItem, label: Text(""), content: {
                        Text("Daily").tag(0)
                        Text("Weekly").tag(1)
                        Text("Monthly").tag(2)
                    }).pickerStyle(SegmentedPickerStyle()).padding(.horizontal, 24)
                    
                    HStack (spacing: 12){
                        
                        BarView(value: dataPoints[pickerSelectionItem][0])
                        BarView(value: dataPoints[pickerSelectionItem][1])
                        BarView(value: dataPoints[pickerSelectionItem][2])
                        BarView(value: dataPoints[pickerSelectionItem][3])
                        BarView(value: dataPoints[pickerSelectionItem][4])
                    }.padding(.top, 24).animation(.default)
                }
            }
        }
    }
}

struct BarView: View{
    
    var value: CGFloat
    
    var body: some View {
        VStack{
            ZStack (alignment: .bottom){
                
                Capsule().frame(width: 30, height: 200).foregroundColor(Color(red: 0.94, green: 0.94, blue: 0.94))
                Capsule().frame(width: 30, height: value).foregroundColor(Color(red: 0.80, green: 0.60, blue: 0.49))
            }
            Text("Value").padding(.top, 8)
        }
    }
}

struct ImagePickerView: UIViewControllerRepresentable{
    
    @Binding var isPresented: Bool
    @Binding var selectedImage: UIImage
    // returns instance of class coordinator
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) ->  UIViewController {
        let controller = UIImagePickerController()
        controller.delegate = context.coordinator
        return controller
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: ImagePickerView
        init(parent: ImagePickerView) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let selectedImageFromPicker = info[.originalImage] as? UIImage {
                print(selectedImageFromPicker)
                self.parent.selectedImage = selectedImageFromPicker
            }
            self.parent.isPresented = false
        }
        
    }
    
    
    func updateUIViewController(_ uiViewController: ImagePickerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ImagePickerView>) {
        
    }
}

struct UserProfile_Preview: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
