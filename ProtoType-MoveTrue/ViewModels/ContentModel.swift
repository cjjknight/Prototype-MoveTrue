//
//  ContentModel.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import Foundation

class ContentModel: ObservableObject {
    
    //List of Modules
    @Published var modules = [Module]()
    
    
    // Current module
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    //  Formatted Text
    @Published var codeText = NSAttributedString()
    var styleData: Data?
    
    
    init() {
        
        getLocalData()
       // getRemoteData()
        
    }
    
    // MARK: - Data Methods
    
    
    func getLocalData() {
        
        //get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            // try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            // Assign parsed modules to modules propetry
            self.modules = modules
            
        }
        catch {
            //TODO log error
            print("Couldn't parse local data")
        }
        
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            //Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            
            //
            self.styleData = styleData
            
        }
        catch {
            // Log error
            print("couldn't parse style data")
        }
    }
    
    func getRemoteData() {
       
        // String path
        let urlString = "https://cjjknight.github.io/cwc-learningappdata/data2.json"  // [To Be Replaced with proper link]
        
       // Create a URL object
        let url = URL(string: urlString)
        
        guard url != nil else {
            // cound't create url
            return
        }
        
        //create a URLRequest object
        let request = URLRequest(url: url!)
        
        // Get the session and kick off the task
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            // Check if there is an eroor
            guard error == nil else {
                // There was an error
                return
            }
            
            do {
            
                // Create json decoder
                let decoder = JSONDecoder()
                
                //Decode
                let modules = try decoder.decode([Module].self, from: data!)
                
                // Appen parsed modules into modules property
                self.modules += modules
                
            }
            catch {
                print("Couldn't parse remote data")
            }
            
        }
        
        //Kick off data task
        dataTask.resume()
        
        
    }
    
    
    
    // MARK: - Module navigation methods
    
    func beginModule(_ moduleid:Int) {
        
        // Find the index for this module id
        for index in 0..<modules.count {
            if modules[index].id == moduleid {
                currentModuleIndex = index
                break
            }
        }
        
        // set the current Module
        currentModule = modules[currentModuleIndex]
    }
    
    
    
    
    // MARK: Code Styling
    
    private func addStyling(_ htmlString: String) -> NSAttributedString {
        
        var resultString = NSAttributedString()
        var data = Data()
        
        //Add the syling data
        if styleData != nil {
            data.append(self.styleData!)
            }
        
        // add the html data
        data.append(Data(htmlString.utf8))
            
        //convert to attributed string

        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
            resultString = attributedString
            }
        
        return resultString
    }
    
}


    
    
    
