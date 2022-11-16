# README

[![](https://camo.githubusercontent.com/1ab1a7ec3f2dd01c7960044047e96a86aed5111004c9b0b86e852eac461bedac/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f527562795f6f6e5f5261696c732d4343303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d727562792d6f6e2d7261696c73266c6f676f436f6c6f723d7768697465)](https://camo.githubusercontent.com/1ab1a7ec3f2dd01c7960044047e96a86aed5111004c9b0b86e852eac461bedac/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f527562795f6f6e5f5261696c732d4343303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d727562792d6f6e2d7261696c73266c6f676f436f6c6f723d7768697465)
[![](https://camo.githubusercontent.com/3f0e26b0951bab845a1bb9a7198ecca0da272e462921b6edd85879f3673b6927/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f73746d616e2d4646364333373f7374796c653d666f722d7468652d6261646765266c6f676f3d706f73746d616e266c6f676f436f6c6f723d7768697465)](https://camo.githubusercontent.com/3f0e26b0951bab845a1bb9a7198ecca0da272e462921b6edd85879f3673b6927/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f73746d616e2d4646364333373f7374796c653d666f722d7468652d6261646765266c6f676f3d706f73746d616e266c6f676f436f6c6f723d7768697465)
[![](https://user-images.githubusercontent.com/64919819/113648232-81d60d00-9649-11eb-8ea4-0ff5e399afb6.png)](https://user-images.githubusercontent.com/64919819/113648232-81d60d00-9649-11eb-8ea4-0ff5e399afb6.png)
![](https://camo.githubusercontent.com/510a057988cb5216f5d297ee202f6a08fa179798926cea28e95910f6b8ca5535/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4d61726b646f776e2d3030303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d6d61726b646f776e266c6f676f436f6c6f723d7768697465)
[![](https://camo.githubusercontent.com/281c069a2703e948b536500b9fd808cb4fb2496b3b66741db4013a2c89e91986/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f737467726553514c2d3331363139323f7374796c653d666f722d7468652d6261646765266c6f676f3d706f737467726573716c266c6f676f436f6c6f723d7768697465)](https://camo.githubusercontent.com/281c069a2703e948b536500b9fd808cb4fb2496b3b66741db4013a2c89e91986/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f737467726553514c2d3331363139323f7374796c653d666f722d7468652d6261646765266c6f676f3d706f737467726573716c266c6f676f436f6c6f723d7768697465)
[![](https://user-images.githubusercontent.com/64919819/113648167-6965f280-9649-11eb-8794-0f1082ae8d1c.png)](https://user-images.githubusercontent.com/64919819/113648167-6965f280-9649-11eb-8794-0f1082ae8d1c.png)


## Welcome to the Back-end repo for Lunch and Learn!


[Lunch and Learn](https://github.com/nikkyrojas/lunch_and_learn) Back-end app was constructed to provide the necessary endpoints and data to the front-end given via their wireframe so that they can construct an app that allows a user to, sign up, search for cuisines by country, and provide opportunities to learn more about that country's culture. This backend app consumes multiple APIs to be packaged and exposed to the frontend;  REST Countries API,  Edamam Recipe API,  YouTube API, and Unsplash. 

## Table of contents

- [Schema](#schema)
- [Setup](#setup)
- [Gems](#gems)
- [Endpoints](#endpoints)
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
- Need to sign up these 3 [API](#api) keys and insert the appropriate keys in your `application.yml` file.

## Gems

-   [RSpec](https://github.com/rspec/rspec-rails)
-   [ShouldaMatchers](https://github.com/thoughtbot/shoulda-matchers)
-   [Capybara](https://github.com/teamcapybara/capybara)
-   [SimpleCov](https://github.com/simplecov-ruby/simplecov)

## API
[Edamam Recipe API](https://developer.edamam.com/edamam-recipe-api),  [YouTube API](https://developers.google.com/youtube/v3/getting-started), and [Unsplash](https://unsplash.com/documentation#search-photos). 

## Endpoints

### Get recipes
get '/api/v1/recipes'

![Screen Shot 2022-09-22 at 1 33 24 PM](https://user-images.githubusercontent.com/90064385/191813809-2575599a-d345-4f7d-94e1-b0d625cd856a.png)

### Tourist Sights
get "/api/v1/blogs/:blog_id"

![Screen Shot 2022-09-22 at 1 38 59 PM](https://user-images.githubusercontent.com/90064385/191814879-7caf7dd0-e2ab-4e43-bd1c-012e8fce0bb7.png)

### Get favorites
get "/api/v1/blogs/:blog_id/comments"

![Screen Shot 2022-09-22 at 1 41 58 PM](https://user-images.githubusercontent.com/90064385/191815428-64d7de1c-7d04-445b-8dd2-9d58886f0cb0.png)

## Update a blog 
patch "/api/v1/blogs/:blog_id"

![Screen Shot 2022-09-22 at 1 53 06 PM](https://user-images.githubusercontent.com/90064385/191817492-bc545f39-eade-4df0-8309-ee083a2a906a.png)

## Delete favorite
delete "/api/v1/blogs/:blog_id"

![Screen Shot 2022-09-22 at 1 57 10 PM](https://user-images.githubusercontent.com/90064385/191818218-2b4b542d-8b18-4745-9a20-d2c655208d04.png)


## Contributors
-   **Nikky Rojas** - _Turing Student_ - [GitHub Profile](https://github.com/nikkyrojas) - [LinkedIn](https://www.linkedin.com/in/nikkyrojas/)
