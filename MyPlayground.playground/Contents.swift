import UIKit

import Foundation



guard let urlString = ProcessInfo.processInfo.environment["backend_url"],
      let url = URL(string: urlString + "/users") else { print("Invalid backend URL:")
   }

let task = URLSession.shared.dataTask(with: url) { data, response, error  in
    let decoder = JSONDecoder()
    
    if let data = data{
        do{
            let tasks = try decoder.decode([User].self, from: data)
        }
    }
}
task.resume()







