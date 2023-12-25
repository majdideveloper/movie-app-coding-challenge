import 'dart:convert';

class MovieAPI {
  static final movies = [
    {
      "Title": "The Shawshank Redemption",
      "Year": "1994",
      "Rated": "R",
      "Released": "14 Oct 1994",
      "Runtime": "142 min",
      "Genre": "Drama",
      "Director": "Frank Darabont",
      "Writer": "Stephen King, Frank Darabont",
      "Actors": "Tim Robbins, Morgan Freeman, Bob Gunton",
      "Plot":
      "Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man's unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.",
      "Language": "English",
      "Country": "United States",
      "Awards": "Nominated for 7 Oscars. 21 wins & 43 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "9.3/10"},
        {"Source": "Rotten Tomatoes", "Value": "91%"},
        {"Source": "Metacritic", "Value": "81/100"}
      ],
      "Metascore": "81",
      "imdbRating": "9.3",
      "imdbVotes": "2,688,936",
      "imdbID": "tt0111161",
      "Type": "movie",
      "DVD": "21 Dec 1999",
      "BoxOffice": "\$28,767,189",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "The Godfather",
      "Year": "1972",
      "Rated": "R",
      "Released": "24 Mar 1972",
      "Runtime": "175 min",
      "Genre": "Crime, Drama",
      "Director": "Francis Ford Coppola",
      "Writer": "Mario Puzo, Francis Ford Coppola",
      "Actors": "Marlon Brando, Al Pacino, James Caan",
      "Plot":
      "The Godfather \"Don\" Vito Corleone is the head of the Corleone mafia family in New York. He is at the event of his daughter's wedding. Michael, Vito's youngest son and a decorated WW II Marine is also present at the wedding. Michael seems to be uninterested in being a part of the family business. Vito is a powerful man, and is kind to all those who give him respect but is ruthless against those who do not. But when a powerful and treacherous rival wants to sell drugs and needs the Don's influence for the same, Vito refuses to do it. What follows is a clash between Vito's fading old values and the new ways which may cause Michael to do the thing he was most reluctant in doing and wage a mob war against all the other mafia families which could tear the Corleone family apart.",
      "Language": "English, Italian, Latin",
      "Country": "United States",
      "Awards": "Won 3 Oscars. 32 wins & 30 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "9.2/10"},
        {"Source": "Rotten Tomatoes", "Value": "97%"},
        {"Source": "Metacritic", "Value": "100/100"}
      ],
      "Metascore": "100",
      "imdbRating": "9.2",
      "imdbVotes": "1,868,934",
      "imdbID": "tt0068646",
      "Type": "movie",
      "DVD": "11 May 2004",
      "BoxOffice": "\$136,381,073",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "The Dark Knight",
      "Year": "2008",
      "Rated": "PG-13",
      "Released": "18 Jul 2008",
      "Runtime": "152 min",
      "Genre": "Action, Crime, Drama",
      "Director": "Christopher Nolan",
      "Writer": "Jonathan Nolan, Christopher Nolan, David S. Goyer",
      "Actors": "Christian Bale, Heath Ledger, Aaron Eckhart",
      "Plot":
      "Set within a year after the events of Batman Begins (2005), Batman, Lieutenant James Gordon, and new District Attorney Harvey Dent successfully begin to round up the criminals that plague Gotham City, until a mysterious and sadistic criminal mastermind known only as \"The Joker\" appears in Gotham, creating a new wave of chaos. Batman's struggle against The Joker becomes deeply personal, forcing him to \"confront everything he believes\" and improve his technology to stop him. A love triangle develops between Bruce Wayne, Dent, and Rachel Dawes.",
      "Language": "English, Mandarin",
      "Country": "United States, United Kingdom",
      "Awards": "Won 2 Oscars. 160 wins & 163 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "9.0/10"},
        {"Source": "Rotten Tomatoes", "Value": "94%"},
        {"Source": "Metacritic", "Value": "84/100"}
      ],
      "Metascore": "84",
      "imdbRating": "9.0",
      "imdbVotes": "2,667,813",
      "imdbID": "tt0468569",
      "Type": "movie",
      "DVD": "09 Dec 2008",
      "BoxOffice": "\$534,987,076",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "The Godfather: Part II",
      "Year": "1974",
      "Rated": "R",
      "Released": "18 Dec 1974",
      "Runtime": "202 min",
      "Genre": "Crime, Drama",
      "Director": "Francis Ford Coppola",
      "Writer": "Francis Ford Coppola, Mario Puzo",
      "Actors": "Al Pacino, Robert De Niro, Robert Duvall",
      "Plot":
      "The continuing saga of the Corleone crime family tells the story of a young Vito Corleone growing up in Sicily and in 1910s New York; and follows Michael Corleone in the 1950s as he attempts to expand the family business into Las Vegas, Hollywood and Cuba.",
      "Language": "English, Italian, Spanish, Latin, Sicilian",
      "Country": "United States",
      "Awards": "Won 6 Oscars. 17 wins & 21 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "9.0/10"},
        {"Source": "Rotten Tomatoes", "Value": "96%"},
        {"Source": "Metacritic", "Value": "90/100"}
      ],
      "Metascore": "90",
      "imdbRating": "9.0",
      "imdbVotes": "1,277,933",
      "imdbID": "tt0071562",
      "Type": "movie",
      "DVD": "24 May 2005",
      "BoxOffice": "\$47,834,595",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "12 Angry Men",
      "Year": "1957",
      "Rated": "Approved",
      "Released": "10 Apr 1957",
      "Runtime": "96 min",
      "Genre": "Crime, Drama",
      "Director": "Sidney Lumet",
      "Writer": "Reginald Rose",
      "Actors": "Henry Fonda, Lee J. Cobb, Martin Balsam",
      "Plot":
      "The defense and the prosecution have rested, and the jury is filing into the jury room to decide if a young man is guilty or innocent of murdering his father. What begins as an open-and-shut case of murder soon becomes a detective story that presents a succession of clues creating doubt, and a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, AND each other. Based on the play, all of the action takes place on the stage of the jury room.",
      "Language": "English",
      "Country": "United States",
      "Awards": "Nominated for 3 Oscars. 17 wins & 13 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "9.0/10"},
        {"Source": "Rotten Tomatoes", "Value": "100%"},
        {"Source": "Metacritic", "Value": "96/100"}
      ],
      "Metascore": "96",
      "imdbRating": "9.0",
      "imdbVotes": "793,999",
      "imdbID": "tt0050083",
      "Type": "movie",
      "DVD": "04 Mar 2008",
      "BoxOffice": "N/A",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "Schindler's List",
      "Year": "1993",
      "Rated": "R",
      "Released": "04 Feb 1994",
      "Runtime": "195 min",
      "Genre": "Biography, Drama, History",
      "Director": "Steven Spielberg",
      "Writer": "Thomas Keneally, Steven Zaillian",
      "Actors": "Liam Neeson, Ralph Fiennes, Ben Kingsley",
      "Plot":
      "Oskar Schindler is a vain and greedy German businessman who becomes an unlikely humanitarian amid the barbaric German Nazi reign when he feels compelled to turn his factory into a refuge for Jews. Based on the true story of Oskar Schindler who managed to save about 1100 Jews from being gassed at the Auschwitz concentration camp, it is a testament to the good in all of us.",
      "Language": "English, Hebrew, German, Polish, Latin",
      "Country": "United States",
      "Awards": "Won 7 Oscars. 91 wins & 49 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "9.0/10"},
        {"Source": "Rotten Tomatoes", "Value": "98%"},
        {"Source": "Metacritic", "Value": "94/100"}
      ],
      "Metascore": "94",
      "imdbRating": "9.0",
      "imdbVotes": "1,362,192",
      "imdbID": "tt0108052",
      "Type": "movie",
      "DVD": "12 Feb 2008",
      "BoxOffice": "\$96,898,818",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "The Lord of the Rings: The Return of the King",
      "Year": "2003",
      "Rated": "PG-13",
      "Released": "17 Dec 2003",
      "Runtime": "201 min",
      "Genre": "Action, Adventure, Drama",
      "Director": "Peter Jackson",
      "Writer": "J.R.R. Tolkien, Fran Walsh, Philippa Boyens",
      "Actors": "Elijah Wood, Viggo Mortensen, Ian McKellen",
      "Plot":
      "The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron's evil army at the stone city of Minas Tirith.",
      "Language": "English, Quenya, Old English, Sindarin",
      "Country": "New Zealand, United States",
      "Awards": "Won 11 Oscars. 213 wins & 124 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "9.0/10"},
        {"Source": "Rotten Tomatoes", "Value": "93%"},
        {"Source": "Metacritic", "Value": "94/100"}
      ],
      "Metascore": "94",
      "imdbRating": "9.0",
      "imdbVotes": "1,855,485",
      "imdbID": "tt0167260",
      "Type": "movie",
      "DVD": "25 May 2004",
      "BoxOffice": "\$378,251,207",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "Pulp Fiction",
      "Year": "1994",
      "Rated": "R",
      "Released": "14 Oct 1994",
      "Runtime": "154 min",
      "Genre": "Crime, Drama",
      "Director": "Quentin Tarantino",
      "Writer": "Quentin Tarantino, Roger Avary",
      "Actors": "John Travolta, Uma Thurman, Samuel L. Jackson",
      "Plot":
      "Jules Winnfield (Samuel L. Jackson) and Vincent Vega (John Travolta) are two hit men who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace (Ving Rhames). Wallace has also asked Vincent to take his wife Mia (Uma Thurman) out a few days later when Wallace himself will be out of town. Butch Coolidge (Bruce Willis) is an aging boxer who is paid by Wallace to lose his fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents.",
      "Language": "English, Spanish, French",
      "Country": "United States",
      "Awards": "Won 1 Oscar. 70 wins & 75 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.9/10"},
        {"Source": "Rotten Tomatoes", "Value": "92%"},
        {"Source": "Metacritic", "Value": "94/100"}
      ],
      "Metascore": "94",
      "imdbRating": "8.9",
      "imdbVotes": "2,067,298",
      "imdbID": "tt0110912",
      "Type": "movie",
      "DVD": "20 Aug 2002",
      "BoxOffice": "\$107,928,762",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "The Lord of the Rings: The Fellowship of the Ring",
      "Year": "2001",
      "Rated": "PG-13",
      "Released": "19 Dec 2001",
      "Runtime": "178 min",
      "Genre": "Action, Adventure, Drama",
      "Director": "Peter Jackson",
      "Writer": "J.R.R. Tolkien, Fran Walsh, Philippa Boyens",
      "Actors": "Elijah Wood, Ian McKellen, Orlando Bloom",
      "Plot":
      "An ancient Ring thought lost for centuries has been found, and through a strange twist of fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic quest to the Cracks of Doom in order to destroy it. However, he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir, and his three Hobbit friends Merry, Pippin, and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their quest to destroy the One Ring is the only hope for the end of the Dark Lords reign.",
      "Language": "English, Sindarin",
      "Country": "New Zealand, United States",
      "Awards": "Won 4 Oscars. 123 wins & 126 nominations total",
      "Poster":
      "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.8/10"},
        {"Source": "Rotten Tomatoes", "Value": "91%"},
        {"Source": "Metacritic", "Value": "92/100"}
      ],
      "Metascore": "92",
      "imdbRating": "8.8",
      "imdbVotes": "1,884,994",
      "imdbID": "tt0120737",
      "Type": "movie",
      "DVD": "06 Aug 2002",
      "BoxOffice": "\$316,115,420",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
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
    },
    {
      "Title": "Forrest Gump",
      "Year": "1994",
      "Rated": "PG-13",
      "Released": "06 Jul 1994",
      "Runtime": "142 min",
      "Genre": "Drama, Romance",
      "Director": "Robert Zemeckis",
      "Writer": "Winston Groom, Eric Roth",
      "Actors": "Tom Hanks, Robin Wright, Gary Sinise",
      "Plot": "Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His 'mama' teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.",
      "Language": "English",
      "Country": "United States",
      "Awards": "Won 6 Oscars. 51 wins & 75 nominations total",
      "Poster": "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.8/10"},
        {"Source": "Rotten Tomatoes", "Value": "71%"},
        {"Source": "Metacritic", "Value": "82/100"}
      ],
      "Metascore": "82",
      "imdbRating": "8.8",
      "imdbVotes": "2,093,111",
      "imdbID": "tt0109830",
      "Type": "movie",
      "DVD": "28 Aug 2001",
      "BoxOffice": "\$330,455,270",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "Fight Club",
      "Year": "1999",
      "Rated": "R",
      "Released": "15 Oct 1999",
      "Runtime": "139 min",
      "Genre": "Drama",
      "Director": "David Fincher",
      "Writer": "Chuck Palahniuk, Jim Uhls",
      "Actors": "Brad Pitt, Edward Norton, Meat Loaf",
      "Plot": "A nameless first person narrator (Edward Norton) attends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla (Helena Bonham Carter), another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler (Brad Pitt) he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power.",
      "Language": "English",
      "Country": "Germany, United States",
      "Awards": "Nominated for 1 Oscar. 11 wins & 38 nominations total",
      "Poster": "https://m.media-amazon.com/images/M/MV5BNDIzNDU0YzEtYzE5Ni00ZjlkLTk5ZjgtNjM3NWE4YzA3Nzk3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.8/10"},
        {"Source": "Rotten Tomatoes", "Value": "79%"},
        {"Source": "Metacritic", "Value": "66/100"}
      ],
      "Metascore": "66",
      "imdbRating": "8.8",
      "imdbVotes": "2,134,442",
      "imdbID": "tt0137523",
      "Type": "movie",
      "DVD": "14 Oct 2003",
      "BoxOffice": "\$37,030,102",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "The Lord of the Rings: The Two Towers",
      "Year": "2002",
      "Rated": "PG-13",
      "Released": "18 Dec 2002",
      "Runtime": "179 min",
      "Genre": "Action, Adventure, Drama",
      "Director": "Peter Jackson",
      "Writer": "J.R.R. Tolkien, Fran Walsh, Philippa Boyens",
      "Actors": "Elijah Wood, Ian McKellen, Viggo Mortensen",
      "Plot": "The continuing quest of Frodo and the Fellowship to destroy the One Ring. Frodo and Sam discover they are being followed by the mysterious Gollum. Aragorn, the Elf archer Legolas, and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman's deadly spell.",
      "Language": "English, Sindarin, Old English",
      "Country": "New Zealand, United States",
      "Awards": "Won 2 Oscars. 130 wins & 138 nominations total",
      "Poster": "https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.8/10"},
        {"Source": "Rotten Tomatoes", "Value": "95%"},
        {"Source": "Metacritic", "Value": "87/100"}
      ],
      "Metascore": "87",
      "imdbRating": "8.8",
      "imdbVotes": "1,676,152",
      "imdbID": "tt0167261",
      "Type": "movie",
      "DVD": "26 Aug 2003",
      "BoxOffice": "\$342,952,511",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "Inception",
      "Year": "2010",
      "Rated": "PG-13",
      "Released": "16 Jul 2010",
      "Runtime": "148 min",
      "Genre": "Action, Adventure, Sci-Fi",
      "Director": "Christopher Nolan",
      "Writer": "Christopher Nolan",
      "Actors": "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
      "Plot": "Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb's rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.",
      "Language": "English, Japanese, French",
      "Country": "United States, United Kingdom",
      "Awards": "Won 4 Oscars. 158 wins & 220 nominations total",
      "Poster": "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.8/10"},
        {"Source": "Rotten Tomatoes", "Value": "87%"},
        {"Source": "Metacritic", "Value": "74/100"}
      ],
      "Metascore": "74",
      "imdbRating": "8.8",
      "imdbVotes": "2,365,987",
      "imdbID": "tt1375666",
      "Type": "movie",
      "DVD": "07 Dec 2010",
      "BoxOffice": "\$292,587,330",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "Star Wars: Episode V - The Empire Strikes Back",
      "Year": "1980",
      "Rated": "PG",
      "Released": "20 Jun 1980",
      "Runtime": "124 min",
      "Genre": "Action, Adventure, Fantasy",
      "Director": "Irvin Kershner",
      "Writer": "Leigh Brackett, Lawrence Kasdan, George Lucas",
      "Actors": "Mark Hamill, Harrison Ford, Carrie Fisher",
      "Plot": "Luke Skywalker, Han Solo, Princess Leia and Chewbacca face attack by the Imperial forces and its AT-AT walkers on the ice planet Hoth. While Han and Leia escape in the Millennium Falcon, Luke travels to Dagobah in search of Yoda. Only with the Jedi Master's help will Luke survive when the Dark Side of the Force beckons him into the ultimate duel with Darth Vader.",
      "Language": "English",
      "Country": "United States",
      "Awards": "Won 1 Oscar. 26 wins & 20 nominations total",
      "Poster": "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.7/10"},
        {"Source": "Rotten Tomatoes", "Value": "94%"},
        {"Source": "Metacritic", "Value": "82/100"}
      ],
      "Metascore": "82",
      "imdbRating": "8.7",
      "imdbVotes": "1,299,202",
      "imdbID": "tt0080684",
      "Type": "movie",
      "DVD": "21 Sep 2004",
      "BoxOffice": "\$292,753,960",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
    {
      "Title": "The Matrix",
      "Year": "1999",
      "Rated": "R",
      "Released": "31 Mar 1999",
      "Runtime": "136 min",
      "Genre": "Action, Sci-Fi",
      "Director": "Lana Wachowski, Lilly Wachowski",
      "Writer": "Lilly Wachowski, Lana Wachowski",
      "Actors": "Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss",
      "Plot": "Thomas A. Anderson is a man living two lives. By day he is an average computer programmer and by night a hacker known as Neo. Neo has always questioned his reality, but the truth is far beyond his imagination. Neo finds himself targeted by the police when he is contacted by Morpheus, a legendary computer hacker branded a terrorist by the government. As a rebel against the machines, Neo must confront the agents: super-powerful computer programs devoted to stopping Neo and the entire human rebellion.",
      "Language": "English",
      "Country": "United States, Australia",
      "Awards": "Won 4 Oscars. 42 wins & 51 nominations total",
      "Poster": "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
      "Ratings": [
        {"Source": "Internet Movie Database", "Value": "8.7/10"},
        {"Source": "Rotten Tomatoes", "Value": "88%"},
        {"Source": "Metacritic", "Value": "73/100"}
      ],
      "Metascore": "73",
      "imdbRating": "8.7",
      "imdbVotes": "1,919,000",
      "imdbID": "tt0133093",
      "Type": "movie",
      "DVD": "15 May 2007",
      "BoxOffice": "\$172,076,928",
      "Production": "N/A",
      "Website": "N/A",
      "Response": "True"
    },
  ];

  static Future<String> index() {
    List<Map<String, dynamic>> response =
    movies.fold<List<Map<String, dynamic>>>(
        [],
            (previousValue, element) =>
        [
          ...previousValue,
          {
            'imdbID': element['imdbID'],
            'Title': element['Title'],
            'imdbRating': element['imdbRating'],
            'imdbVotes': element['imdbVotes'],
          }
        ]);
    response.shuffle();
    return Future.delayed(
        const Duration(milliseconds: 400), () => jsonEncode(response));
  }

  static Future<String> get(String imdbID) {
    return Future.delayed(
        const Duration(milliseconds: 300),
            () =>
            jsonEncode(
                movies.firstWhere((element) => element['imdbID'] == imdbID,
                    orElse: () => {})));
  }
}
