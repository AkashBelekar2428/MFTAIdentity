//
//  TAAuthenticateStartRequest.swift
//  MFAuthAccess_Example
//
//  Created by Nishu Sharma on 17/05/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import Foundation
import ObjectMapper

//MARK: TAAuthenticateRequest Class
public class TAAuthenticateRequest : Mappable {
    
    //MARK: Variables
    public var model : TAAuthenticateRequestModelObj!
    
    //MARK: init
    public init() {}
    
    required public init?(map: Map) {}
    public func mapping(map: Map){
        model   <- map["model"]
    }
}

//MARK: TAAuthenticateRequestModelObj Class
public class TAAuthenticateRequestModelObj : Mappable {
    
    //MARK: Variables
    public var authSessionId : String = ""
    public var email : String = ""
    public var userName : String = ""
    public var password : String = ""
    public var phoneNumber : String = ""
    public var pin : String = ""
    public var authFactorType : Int = -1
    public var currentAuthStep : Int = -1
    
    //MARK: init
    public init() {}
    required public init?(map: Map) {}
    
    public func mapping(map: Map){
        authSessionId            <- map["authSessionId"]
        email                    <- map["email"]
        userName                 <- map["userName"]
        password                 <- map["password"]
        phoneNumber              <- map["phoneNumber"]
        pin                      <- map["pin"]
        authFactorType           <- map["authFactorType"]
        currentAuthStep          <- map["currentAuthStep"]
    }
}
