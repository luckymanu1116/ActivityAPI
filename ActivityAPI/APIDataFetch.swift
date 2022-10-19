//
//  APIDataFetch.swift
//  ActivityAPI
//
//  Created by MANOJ REDDY on 2022-10-19.
//

import Foundation

class APIDataFetch {
    static private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    public func fetchData(url: String){
        guard
            let url = URL(string: url)
        else{
            preconditionFailure("not convertable\(url)")
        }
        let request = URLRequest(url: url)
        let task = APIDataFetch.session.dataTask(with: request){
            data, response, error in
            if let data = data{
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    print(jsonData)
                }catch let err{
                    print("\(err)")
                    
                }}
                else if let error = error {
                    print("error task, fetchdir: \(error)")
                }
                else {
                    print("something wrong\(String (describing: response))")
                }
            }
            task.resume()
        }
    }


