    //
    //  ContentView.swift
    //  test-helloworld
    //
    //  Created by TI Digital on 04/06/21.
    //

    import SwiftUI
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    struct ContentView: View {
    @State var username : String = ""
    @State var password: String = ""
        var body: some View {
            VStack{
                WelcomeText()
                GokuImage()
                TextField("Username" , text: $username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5)
                    .padding(.bottom, 20)
                Button(action: {print(password, password)}){
                    ButtonLoginContent()
                }
            }
            .padding()
            
        }
    }

    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
    }
    
    struct WelcomeText: View {
        var body: some View {
            VStack(alignment: .leading){
                Text("Welcome To SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .fontWeight(.semibold)
                    .padding(.bottom, 5)
                Text("Created by Reggie Gunawan")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.bottom, 15)
            }
            
        }
    }
    
    
    struct GokuImage: View {
        var body: some View {
            Image("goku-hello")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 50)
        }
    }
    
    struct ButtonLoginContent: View {
        var body: some View {
            Text("LOGIN")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 65)
                .background(Color.green)
                .cornerRadius(15)
        }
    }
    
