//
//  Login.swift
//  PC Family
//
//  Created by Aseda Asomani on 5/22/24.
//

import Foundation
import SwiftUI
import os

enum contentTypeEnum {
    case email, password, firstname, lastname, repassw
}

struct LoginInput: View {
    @Binding var data: String
    var title: String?
    var inputType: contentTypeEnum
    var body: some View {
        if inputType == contentTypeEnum.password || inputType == contentTypeEnum.repassw {
            ZStack {
                SecureField("Required", text: $data)
                    .textContentType(.password)
                    .padding(.horizontal, 35)
                    .frame(height: 42)
                    .overlay(
                        RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal)
                    )
                if inputType == contentTypeEnum.password{
                    HStack {
                        Text("Password")
                            .font(.headline)
                            .fontWeight(.thin)
                            .foregroundStyle(Color.gray)
                            .multilineTextAlignment(.leading)
                            .padding(4)
                            .background(.white)
                        Spacer()
                    }
                    .padding(.leading, 25)
                    .offset(CGSize(width: 0, height: -20))  // pushes the text up to overlay the border of the input field
                } else {
                    HStack {
                        Text("Re-Enter Password")
                            .font(.headline)
                            .fontWeight(.thin)
                            .foregroundStyle(Color.gray)
                            .multilineTextAlignment(.leading)
                            .padding(4)
                            .background(.white)
                        Spacer()
                    }
                    .padding(.leading, 25)
                    .offset(CGSize(width: 0, height: -20))  // pushes the text up to overlay the border of the input field

                }
            }
        } else if inputType == contentTypeEnum.email{
            ZStack {
                TextField("Required", text: $data)
                    .padding(.horizontal, 35)
                    .frame(height: 42)
                    .overlay(
                        RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal)
                    )
                HStack {
                    Text("Email")
                        .font(.headline)
                        .fontWeight(.thin)
                        .foregroundStyle(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding(4)
                        .background(.white)
                    Spacer()
                }
                .padding(.leading, 25)
                .offset(CGSize(width: 0, height: -20))
                // pushes the text up to overlay the border of the input field
            }
        } else if inputType == contentTypeEnum.firstname{
            ZStack {
                TextField("Required", text: $data)
                    .padding(.horizontal, 35)
                    .frame(height: 42)
                    .overlay(
                        RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal)
                    )
                HStack {
                    Text("First Name")
                        .font(.headline)
                        .fontWeight(.thin)
                        .foregroundStyle(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding(4)
                        .background(.white)
                    Spacer()
                }
                .padding(.leading, 25)
                .offset(CGSize(width: 0, height: -20))  // pushes the text up to overlay the border of the input field
            }
        } else if inputType == contentTypeEnum.lastname{
            ZStack {
                TextField("Required", text: $data)
                    .padding(.horizontal, 35)
                    .frame(height: 42)
                    .overlay(
                        RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal)
                    )
                HStack {
                    Text("Last Name")
                        .font(.headline)
                        .fontWeight(.thin)
                        .foregroundStyle(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding(4)
                        .background(.white)
                    Spacer()
                }
                .padding(.leading, 25)
                .offset(CGSize(width: 0, height: -20))// pushes the text up to overlay the border of the input field
                
            }
        }
    }
}

struct LoginInputPreview: PreviewProvider {
    @State static var data: String = ""
    static var title: String? = ""
    static var inputType = contentTypeEnum.password
    
    static var previews: some View {
        LoginInput(data: $data, title: title, inputType: inputType)
    }
}

