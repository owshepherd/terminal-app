# Terminal App
## Book Chooser App

Terminal App project for CoderAcademy (Semester 1)

### Link for Trello
(https://trello.com/b/HtWjMEz6/terminal-app)
### Link for Github
(https://github.com/owshepherd/terminal-app.git)

### Purpose
Book chooser App. This is a user focused book library with search and recmmendation tools to help users find books to read. This is achieved either via a search or recomendations based on the users personal book library. Users are able to create a uique profile with a personal library of books they have read, authors whose books they have read and genres that they enjoy. This information can then be compared to the broader library of books and a list of reccomended titles and/or authors can be given. Users can also ask for recommendations based on a single title. There is also a search function so the user can search the broader library for titles and authors.

### Functionality
- As a group, we decided to use objects to create the books, authors, genres and users to be used within our application. The reason behind this decision was that the use of classes seemed more time effective compared to other methods and allowed for easier access to information (for example, enabling output of the genres associated with a certain book with relative ease by calling on the instance variable).
- Our initial plan was to enable the creation of new users through a series of prompts which would add a new user to the user class and allow users to choose their preferred books, genres and authors which would, in turn, be used to facilitate book recommendations based on their defined interests. Unfortunately, we were unable to implement these features within our terminal application due to time constraints. However, we believe that if given more time that we would be able to successfully incorporate these features.
- Presently, the application begins by prompting the user to enter a book title. This input is checked against an array of book objects (book_array) until a match is found. If no match is found, the user will be notified of this and prompted again until a match is found. Once a match is found, the titles of all applicable book objects are then pushed into an array (book_selection_array) and displayed to the user with an index (+1) shown.
- The user is prompted by the application to select one of the numbers shown on screen. Once the book has been selected, the genres which are associated with that book are pulled into a new array called, "genre_search_array". The values within the "genre_search_array" are then used as a search term in conjunction with the "genre_search" method found within the Book class.
- From here, each book within the "book_array" which shares a genre withh one of the genres found within the "genre_search_array" are printed to screen as a recommendation to the user for future reading.
- Presently, the recommendations printed to screen also included the book initially used to produce these recommendations (for example, searching for "The Hobbit" will display books which share genres with The Hobbit but will also list The Hobbit itself as a recommendation). Again, we as a group believe this could be easily addressed with additional time. However, we feel that this does not adversely impact the user experience and that users will dismiss this as a minor error.

### Insructions for using App
The user is promted to enter a book title to receive book recommendations based on the book title provided.
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-screenshot-1.png)
Once the user has entered their book title if no result is returned the user is asked to enter another book title.
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-screen%20shot-2.png)
Once the user has entered their book title and at least one matching result is returned then a numbered list will appear showing all matching title(s). The user is asked to the select (type and return) the number which corresponds to the book title they are searching for.
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-screenshot-3.png)
Book recommendations based on that title are then shown on the screen.
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-screenshot-4.png)
###Screenshots

### Brainstorming
TERMINAL APP IDEAS
-chatbot app
-football statistics app
-book chooser app
-eat seasonal app
-food miles app
-my budget app
-split bill app

We settled on the book chooser app

see: 
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-planning-1.jpg)
terminal-app-planning-1.jpeg
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-planning-2.jpg)
terminal-app-planning-2.jpeg
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-planning-3.jpg)
terminal-app-planning-3.jpeg
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-planning-4.jpg)
terminal-app-planning-4.jpeg

### Project Plan & Method
We used trello to lay out the plan.

see:
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-trello-1.jpg)
terminal-app-trello-1
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-trello-2.jpg)
terminal-app-trello-2
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-trello-3.jpg)
terminal-app-trello-3
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-trello-4.jpg)
terminal-app-trello-4
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-trello-5.jpg)
terminal-app-trello-5
![](https://github.com/owshepherd/terminal-app/blob/master/terminal-app-trello-6.jpg)
terminal-app-trello-6
