# GitFollowers

# Overview:

GitFollower app allows the user to search for Github users hitting the GitHub API, you can add and save github users to a favorites list via local persistence, view followers, view repos via safari services.

![Screen1](https://user-images.githubusercontent.com/36921220/222829846-12c7d312-5bfe-4a87-9b63-34c1c72d674e.png)
![Screen2](https://user-images.githubusercontent.com/36921220/222829852-0d92ff27-733a-4b06-9cf9-c4acf6c59cb7.png)
![Screen3](https://user-images.githubusercontent.com/36921220/222829854-6a535177-c754-4385-8bf9-ef4eb04dc12c.png)
![Screen4](https://user-images.githubusercontent.com/36921220/222829857-1e96b10f-cb07-4c0a-ab69-b51396c31e86.png)


# App Premise:

The user can enter a GitHub username and retrieve a list of that username's followers.
The user can search within these followers for a specific follower.
The user is able to tap on a follower from that list to get more information about that follower.
The user is able to save favorite username searches so they don’t have to type them every time. This needs to persist between app launches.

# Technologies

Pagination
Persistence Managment
Custom Protocol/Delegate Pattern
Diffable Data Source
Async/Await
Programmatic UI

# Details:

Use the GitHub API - No authentication needed

Followers endpoint - https://developer.github.com/v3/users/followers/

User info endpoint - https://developer.github.com/v3/users/
