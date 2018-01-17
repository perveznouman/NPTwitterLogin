//
//  NPTwitterParser.swift
//  TwitterLogin
//
//  Created by NOUMAN PERVEZ on 18/01/18.
//  Copyright © 2018 Nouman Pervez. All rights reserved.
//

import UIKit
import TwitterKit
import TwitterCore

protocol NPTwitterParserDelegate: class {
    
    func twitterParsingCompleted(_ twitterParserObj: NPTwitterParser) -> Void
}

class NPTwitterParser: NSObject {
    
    public var userName : String!
    public var userID : String!
    public var authToken : String!
    public var authTokenSecret : String!
    public var emailID : String!
    public var error : Error!
    
    public weak var delegate : NPTwitterParserDelegate?
    
    override init() {
        
        super.init()
        self.getTwitterData()
        return
    }
    
    func getTwitterData() -> Void {
        
        TWTRTwitter.sharedInstance().logIn {
            (session, error) -> Void in
            if (session != nil) {
                
                self.parseTwitterResponse(session!)
                let client = TWTRAPIClient.withCurrentUser()
                
                client.requestEmail { email, error in
                    if (email != nil) {
                        self.emailID = email
                        print("signed in as \(String(describing: email))");
                        //calls delegate and sends backs to Viewcontroller
                        self.delegate?.twitterParsingCompleted(self)
                    } else {
                        
                        self.error = error
                        print("error: \(String(describing: error?.localizedDescription))");
                        //calls delegate and sends backs to Viewcontroller
                        self.delegate?.twitterParsingCompleted(self)
                    }
                }
            } else {
                
                self.error = error
                //calls delegate and sends backs to Viewcontroller
                print("error: \(String(describing: error?.localizedDescription))");
                self.delegate?.twitterParsingCompleted(self)
            }
        }
    }
    
    func parseTwitterResponse(_ session: TWTRSession) -> Void {
        
        self.userName = session.userName
        self.userID = session.userID
        self.authToken = session.authToken
        self.authTokenSecret = session.authTokenSecret
        self.error = nil
    }
}
