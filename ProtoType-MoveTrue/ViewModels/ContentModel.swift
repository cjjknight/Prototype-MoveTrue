//
//  ContentModel.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import Foundation

class ContentModel: ObservableObject {
    
    //List of Modules
    @Published var formattedText = [FormattedText]()

    // Current Text in HTML Formatting
    @Published var codeText = NSAttributedString()
    var styleData: Data?
    
    //Current Text
    @Published var currentText: String?
    
    init() {
        
        getLocalData()
        openTabView()
            
    }
    
    // MARK: - Tab Navigation
    
    func openTabView() {
     
        currentText = formattedText[0].explanation
        codeText = addStyling(currentText!)
    }
    
    // MARK: - Data Methods
    
    
    func getLocalData() {
        
        //get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "FormattedText", withExtension: "json")
        
        do {
            // read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            // try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let formattedText = try jsonDecoder.decode([FormattedText].self, from: jsonData)
            
            // Assign parsed modules to modules propetry
            self.formattedText = formattedText
            
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
