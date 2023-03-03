# GitFollowers

# Overview:

GitFollower app allows the user to search for Github users hitting the GitHub API, you can add and save github users to a favorites list via local persistence, view followers, view repos via safari services.

<img scr ="https://user-images.githubusercontent.com/36921220/222826000-8a25d087-e9c6-4bf2-9ac8-6e173b1ef5c0.png" width="210" height="450">,
<img scr ="https://user-images.githubusercontent.com/36921220/222826688-1d996db2-614b-4265-aba7-8ec7f482fcf5.png" width="210" height="450">,
<img scr ="https://user-images.githubusercontent.com/36921220/222826716-1bb171f3-c7cb-4e7a-afbe-9db6fa0c04a9.png" width="210" height="450">,
<img scr ="https://user-images.githubusercontent.com/36921220/222826721-b123d6d8-3547-4a4c-9863-1d085dffbf4b.png" width="210" height="450">


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
