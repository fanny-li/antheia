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
                
                
            }
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
