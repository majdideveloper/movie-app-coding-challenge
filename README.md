# What's to do?

Please build a movies' app, for the top 15 movies on IMDB.

The design of your app is completely up to you. You can add any package you need. 

I would like to see the usage of state management like BloC or Cubit. You should provide 1 or more testcases.

Thinks I need in my app:

- a start screen containing a list of all movies
    - 15 movies ordered by their imDB rating highest to lowest (if rating is similar, compare total votes )
    - a button to go to details
- a detail screen for a movie showing all details for a movie
    - a back button to navigate to start
    - how you display details data is up to you, but I want at least: title, plot, poster, all actors, all ratings and
      awards

---
If you have a cool idea for the movies' app, you can add more features. Feel free to implement whatever you like. 

Things you could do:
- login
   - you don't need to check user credentials, just grant access to anyone
   - validate inputs like password length
- intro screen
- user profile
- bottom navigation bar
- theme switch dark/light mode
 - ---

## How to submit

Please create a GitHub repository for your app and invite: 
- `tobias.frauenberger@pass-consulting.com`
- `https://github.com/VitaApps` 
- `eric.winkler@pass-consulting.com` 
( *If you got any questions you can write an email* ).

Upload all your changes to the movies app. You shouldn't spend more than 6 hours for this task



## How to get Movies?

This project has a class MovieAPI, that will provide all data needed.

- ````MovieAPI.index()```` will return JSON with a list of all movies from the API  (in random order each time)
    ```
  [
     {
        "imdbID": "tt0111161",
        "Title": "The Shawshank Redemption",
        "imdbRating": "9.3",
        "imdbVotes": "2,688,936"
     },
  {
      "imdbID": "tt0071562",
      "Title": "The Godfather: Part II",
      "imdbRating": "9.0",
      "imdbVotes": "1,277,933"
     },
  .........
  ]

   ```
- ````MovieAPI.get(STRING imdbID)```` will return JSON for a single movie
  ```
   {
    "Title": "The Good, the Bad and the Ugly",
    "Year": "1966",
    "Rated": "Approved",
    "Released": "29 Dec 1967",
    "Runtime": "178 min",
    "Genre": "Adventure, Western",
    "Director": "Sergio Leone",
    "Writer": "Luciano Vincenzoni, Sergio Leone, Agenore Incrocci",
    "Actors": "Clint Eastwood, Eli Wallach, Lee Van Cleef",
    "Plot":
        "Blondie, The Good (Clint Eastwood), is a professional gunslinger who is out trying to earn a few dollars. Angel Eyes, The Bad (Lee Van Cleef), is a hitman who always commits to a task and sees it through--as long as he's paid to do so. And Tuco, The Ugly (Eli Wallach), is a wanted outlaw trying to take care of his own hide. Tuco and Blondie share a partnership making money off of Tuco's bounty, but when Blondie unties the partnership, Tuco tries to hunt down Blondie. When Blondie and Tuco come across a horse carriage loaded with dead bodies, they soon learn from the only survivor, Bill Carson (Antonio Casale), that he and a few other men have buried a stash of gold in a cemetery. Unfortunately, Carson dies and Tuco only finds out the name of the cemetery, while Blondie finds out the name on the grave. Now the two must keep each other alive in order to find the gold. Angel Eyes (who had been looking for Bill Carson) discovers that Tuco and Blondie met with Carson and knows they know where the gold is; now he needs them to lead him to it. Now The Good, the Bad, and the Ugly must all battle it out to get their hands on \$200,000.00 worth of gold.",
    "Language": "Italian, English",
    "Country": "Italy, Spain, West Germany",
    "Awards": "3 wins & 6 nominations",
    "Poster":
        "https://m.media-amazon.com/images/M/MV5BNjJlYmNkZGItM2NhYy00MjlmLTk5NmQtNjg1NmM2ODU4OTMwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg",
    "Ratings": [
      {"Source": "Internet Movie Database", "Value": "8.8/10"},
      {"Source": "Rotten Tomatoes", "Value": "97%"},
      {"Source": "Metacritic", "Value": "90/100"}
    ],
    "Metascore": "90",
    "imdbRating": "8.8",
    "imdbVotes": "765,995",
    "imdbID": "tt0060196",
    "Type": "movie",
    "DVD": "07 Nov 2006",
    "BoxOffice": "\$25,100,000",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
  }
  ```


