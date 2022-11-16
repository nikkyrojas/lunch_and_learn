# README

[![](https://camo.githubusercontent.com/1ab1a7ec3f2dd01c7960044047e96a86aed5111004c9b0b86e852eac461bedac/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f527562795f6f6e5f5261696c732d4343303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d727562792d6f6e2d7261696c73266c6f676f436f6c6f723d7768697465)](https://camo.githubusercontent.com/1ab1a7ec3f2dd01c7960044047e96a86aed5111004c9b0b86e852eac461bedac/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f527562795f6f6e5f5261696c732d4343303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d727562792d6f6e2d7261696c73266c6f676f436f6c6f723d7768697465)
[![](https://camo.githubusercontent.com/3f0e26b0951bab845a1bb9a7198ecca0da272e462921b6edd85879f3673b6927/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f73746d616e2d4646364333373f7374796c653d666f722d7468652d6261646765266c6f676f3d706f73746d616e266c6f676f436f6c6f723d7768697465)](https://camo.githubusercontent.com/3f0e26b0951bab845a1bb9a7198ecca0da272e462921b6edd85879f3673b6927/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f73746d616e2d4646364333373f7374796c653d666f722d7468652d6261646765266c6f676f3d706f73746d616e266c6f676f436f6c6f723d7768697465)
[![](https://user-images.githubusercontent.com/64919819/113648232-81d60d00-9649-11eb-8ea4-0ff5e399afb6.png)](https://user-images.githubusercontent.com/64919819/113648232-81d60d00-9649-11eb-8ea4-0ff5e399afb6.png)
![](https://camo.githubusercontent.com/510a057988cb5216f5d297ee202f6a08fa179798926cea28e95910f6b8ca5535/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4d61726b646f776e2d3030303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d6d61726b646f776e266c6f676f436f6c6f723d7768697465)
[![](https://camo.githubusercontent.com/281c069a2703e948b536500b9fd808cb4fb2496b3b66741db4013a2c89e91986/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f737467726553514c2d3331363139323f7374796c653d666f722d7468652d6261646765266c6f676f3d706f737467726573716c266c6f676f436f6c6f723d7768697465)](https://camo.githubusercontent.com/281c069a2703e948b536500b9fd808cb4fb2496b3b66741db4013a2c89e91986/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f737467726553514c2d3331363139323f7374796c653d666f722d7468652d6261646765266c6f676f3d706f737467726573716c266c6f676f436f6c6f723d7768697465)
[![](https://user-images.githubusercontent.com/64919819/113648167-6965f280-9649-11eb-8794-0f1082ae8d1c.png)](https://user-images.githubusercontent.com/64919819/113648167-6965f280-9649-11eb-8794-0f1082ae8d1c.png)


## Welcome to the Back-end repo for Lunch and Learn!


[Lunch and Learn](https://github.com/nikkyrojas/lunch_and_learn) Back-end app was constructed to provide the necessary endpoints and data to the front-end based on a given wireframe. The app is deisgned to allow a user to, sign up, search for cuisines by country, and provide opportunities to learn more about that country's culture. This backend app consumes multiple APIs to be packaged and exposed to the frontend;  [REST Countries API](https://restcountries.com/#api-endpoints-v3-all), [Edamam Recipe API](https://developer.edamam.com/edamam-recipe-api),  [YouTube API](https://developers.google.com/youtube/v3/getting-started), and [Unsplash](https://unsplash.com/documentation#search-photos). 

## Table of contents

- [Schema](#schema)
- [Setup](#setup)
- [Gems](#gems)
- [API Keys](#api)
- [Endpoints](#endpoints)
- [Front-End Wireframes](#wireframes)
- [Contributors](#contributors)

## Schema: 

![Screen Shot 2022-11-16 at 8 00 12 AM](https://user-images.githubusercontent.com/103013480/202215836-5a6a32ee-5c9e-4092-8fc6-968bef37a309.png)

## Setup

- `Ruby 2.7.4`
- `Rails 5.2.8'`
- [Fork this repository](https://github.com/nikkyrojas/lunch_and_learn)
- Clone your fork
- From the command line, install gems and set up your DB:
- `bundle install`
- `rails db:create`
- `rails db:migrate`
- Install Figaro with `bundle exec figaro install` to create an `application.yml` file locally (this to be updated with any needed ENV variables!!!)
- Need to sign up for these 3 [API](#api) keys and insert the appropriate keys in your `application.yml` file you created on the previous step.
## Gems

-   [RSpec](https://github.com/rspec/rspec-rails)
-   [ShouldaMatchers](https://github.com/thoughtbot/shoulda-matchers)
-   [Capybara](https://github.com/teamcapybara/capybara)
-   [SimpleCov](https://github.com/simplecov-ruby/simplecov)
-   [Faraday](https://lostisland.github.io/faraday)

## API 

[Edamam Recipe API](https://developer.edamam.com/edamam-recipe-api),  [YouTube API](https://developers.google.com/youtube/v3/getting-started), and [Unsplash](https://unsplash.com/documentation#search-photos). (Key setup. No key required for REST Countries API.)

## Endpoints

### Post user 
post '/api/v1/users'

![Screen Shot 2022-11-16 at 8 46 16 AM](https://user-images.githubusercontent.com/103013480/202227021-2df55fe9-b77a-40de-a074-e242a25d77b4.png)

### Get recipes (no country param/randomly selected)
get '/api/v1/recipes'

![Screen Shot 2022-11-16 at 8 21 28 AM](https://user-images.githubusercontent.com/103013480/202220941-3be9d2d7-97e9-4c83-acbc-417224c28736.png)

### Get recipes (with country param given)
get "/api/v1/recipes?country=#{country}"

![Screen Shot 2022-11-16 at 8 42 42 AM](https://user-images.githubusercontent.com/103013480/202226262-f542d1af-b006-4c4a-bb58-8d317567360d.png)


### Get Tourist Sights
get "/api/v1/tourist_sights?country=#{country}"

![Screen Shot 2022-11-16 at 8 25 00 AM](https://user-images.githubusercontent.com/103013480/202221693-218cfee3-73c4-4366-9e0e-6ce3d33fe01f.png)


### Post favorite 
post "/api/v1/favorites"

![Screen Shot 2022-11-16 at 8 18 24 AM](https://user-images.githubusercontent.com/103013480/202220223-f0c375cd-17f2-4e63-9173-a90169f329c1.png)

### Get favorites
get "/api/v1/favorites?api_key=#{api_key}"

![Screen Shot 2022-11-16 at 8 15 55 AM](https://user-images.githubusercontent.com/103013480/202219655-90ab6c6e-9546-43cf-8df8-57144ddb3886.png)

### Delete favorite
delete "/api/v1/favorite/:id"
note: the 204 status show states that their is no content because it was deleted

![Screen Shot 2022-11-16 at 8 40 19 AM](https://user-images.githubusercontent.com/103013480/202225725-07603d4f-eee3-4b6d-8153-b4bc54033452.png)

## Wireframes

![Screen Shot 2022-11-16 at 8 55 53 AM](https://user-images.githubusercontent.com/103013480/202230197-d0743a5f-6d3d-465b-9744-00e3dbb56636.png)
![Screen Shot 2022-11-16 at 8 56 34 AM](https://user-images.githubusercontent.com/103013480/202230212-59373758-59d2-4fcc-92f5-b606dde2d415.png)
![Screen Shot 2022-11-16 at 8 56 51 AM](https://user-images.githubusercontent.com/103013480/202230230-addaba42-89a8-4475-a77a-07472b382116.png)
![Screen Shot 2022-11-16 at 8 57 19 AM](https://user-images.githubusercontent.com/103013480/202230246-e88e6c41-15a9-49b2-aaf7-574010a6a339.png)

## Contributors
-   **Nikky Rojas** - _Turing Student_ - [GitHub Profile](https://github.com/nikkyrojas) - [LinkedIn](https://www.linkedin.com/in/nikkyrojas/)
