
//
//  PersistenceManager.swift
//  GitFollowers
//
//  Created by Didar Naurzbayev on 2/4/20.
//  Copyright © 2020 Didar Naurzbayev. All rights reserved.
//

import Foundation

enum PersistenceActionType{ case add, remove }

enum PersistenceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys{
        static let favorites = "favorites"
    }
    
    static func updateWith(favorite: Follower, actionType: PersistenceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavourites { result in
            switch result {
            case .success(let favorites):
                var retrieveFavorites = favorites
                switch actionType {
                case .add:
                    guard !retrieveFavorites.contains(favorite) else {
                        completed(.alreadyInFavorites)
                        return
                    }
                    retrieveFavorites.append(favorite)
                case .remove:
                    retrieveFavorites.removeAll { $0.login == favorite.login }
                }
                completed(save(favorites: retrieveFavorites))
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    static func retrieveFavourites(completed: @escaping (Result<[Follower], GFError>) -> Void){
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavourite))
        }
    }
    
    static func save(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavourite
        }
    }
}
