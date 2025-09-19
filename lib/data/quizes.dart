import 'package:flutter/material.dart';
import 'models.dart';

final quizCategories = [ 
  QuizCategory(
    name: "Science",
    icon: Icons.science,
    color: Colors.redAccent,
    quizzes: [
      Quiz(question: "What planet is known as the Red Planet?", options: ["Earth", "Mars", "Jupiter", "Venus"], correctAnswer: 1,),
      Quiz(question: "What gas do plants produce during photosynthesis?", options: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"], correctAnswer: 0),
      Quiz(question: "What is the hardest natural substance?", options: ["Gold", "Iron", "Diamond", "Quartz"], correctAnswer: 2),
      Quiz(question: "What part of the cell contains DNA?", options: ["Nucleus", "Cytoplasm", "Mitochondria", "Ribosome"], correctAnswer: 0),
      Quiz(question: "What is the chemical symbol for water?", options: ["H2O", "CO2", "O2", "HO"], correctAnswer: 0),
      Quiz(question: "Which blood type is the universal donor?", options: ["A", "B", "O-", "AB+"], correctAnswer: 2),
      Quiz(question: "What is the speed of light?", options: ["300,000 km/s", "150,000 km/s", "1,000 km/s", "30,000 km/s"], correctAnswer: 0),
      Quiz(question: "What organ filters blood in the human body?", options: ["Liver", "Heart", "Kidney", "Lungs"], correctAnswer: 2),
      Quiz(question: "What vitamin is produced by sunlight?", options: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"], correctAnswer: 3),
      Quiz(question: "What planet is the largest in our solar system?", options: ["Saturn", "Neptune", "Jupiter", "Mars"], correctAnswer: 2),
    ],
  ),

  QuizCategory(
    name: "History",
    icon: Icons.museum,
    color: Colors.deepOrangeAccent,
    quizzes: [
      Quiz(question: "Who was the first president of the USA?", options: ["Lincoln", "Jefferson", "Washington", "Adams"], correctAnswer: 2),
      Quiz(question: "In what year did World War II end?", options: ["1940", "1945", "1950", "1939"], correctAnswer: 1),
      Quiz(question: "Where were the pyramids built?", options: ["Greece", "Egypt", "Mexico", "India"], correctAnswer: 1),
      Quiz(question: "Who discovered America in 1492?", options: ["Magellan", "Columbus", "Da Gama", "Cook"], correctAnswer: 1),
      Quiz(question: "The Great Wall is in which country?", options: ["China", "Japan", "India", "Mongolia"], correctAnswer: 0),
      Quiz(question: "Who was known as the Maid of Orléans?", options: ["Cleopatra", "Joan of Arc", "Elizabeth I", "Marie Curie"], correctAnswer: 1),
      Quiz(question: "Who was the first man on the moon?", options: ["Armstrong", "Aldrin", "Collins", "Gagarin"], correctAnswer: 0),
      Quiz(question: "In which year did the Berlin Wall fall?", options: ["1989", "1979", "1999", "1969"], correctAnswer: 0),
      Quiz(question: "What empire was ruled by Julius Caesar?", options: ["Greek", "Roman", "Ottoman", "Persian"], correctAnswer: 1),
      Quiz(question: "Which war was called the Great War?", options: ["WWI", "WWII", "Cold War", "Civil War"], correctAnswer: 0),
    ],
  ),

  QuizCategory(
    name: "Sports",
    icon: Icons.sports_soccer,
    color: Colors.deepPurple,
    quizzes: [
      Quiz(question: "How many players are on a basketball team on the court?", options: ["4", "5", "6", "7"], correctAnswer: 1),
      Quiz(question: "What sport is played at Wimbledon?", options: ["Tennis", "Golf", "Cricket", "Soccer"], correctAnswer: 0),
      Quiz(question: "How many holes are in a standard golf course?", options: ["16", "17", "18", "19"], correctAnswer: 2),
      Quiz(question: "In which sport would you perform a slam dunk?", options: ["Volleyball", "Basketball", "Tennis", "Badminton"], correctAnswer: 1),
      Quiz(question: "What is the maximum score in ten-pin bowling?", options: ["200", "250", "300", "350"], correctAnswer: 2),
      Quiz(question: "Which country hosted the 2016 Summer Olympics?", options: ["China", "Brazil", "UK", "Japan"], correctAnswer: 1),
      Quiz(question: "What does FIFA stand for?", options: ["Football International Federation", "Federation of International Football", "International Football Federation", "Federation Internationale de Football Association"], correctAnswer: 3),
      Quiz(question: "How long is a marathon race?", options: ["26.2 miles", "25 miles", "27 miles", "24.5 miles"], correctAnswer: 0),
      Quiz(question: "What sport uses terms like 'spare' and 'strike'?", options: ["Tennis", "Golf", "Bowling", "Baseball"], correctAnswer: 2),
      Quiz(question: "In American football, how many points is a touchdown worth?", options: ["3", "6", "7", "8"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Technology",
    icon: Icons.computer,
    color: Colors.teal,
    quizzes: [
      Quiz(question: "What does CPU stand for?", options: ["Computer Processing Unit", "Central Processing Unit", "Central Program Unit", "Computer Program Unit"], correctAnswer: 1),
      Quiz(question: "Which company created the iPhone?", options: ["Samsung", "Google", "Apple", "Microsoft"], correctAnswer: 2),
      Quiz(question: "What does HTML stand for?", options: ["Hypertext Markup Language", "High Tech Modern Language", "Home Tool Markup Language", "Hyperlink and Text Markup Language"], correctAnswer: 0),
      Quiz(question: "What does RAM stand for?", options: ["Random Access Memory", "Read Access Memory", "Rapid Access Memory", "Real Access Memory"], correctAnswer: 0),
      Quiz(question: "Which programming language is known for its snake logo?", options: ["Java", "Python", "C++", "JavaScript"], correctAnswer: 1),
      Quiz(question: "What does URL stand for?", options: ["Universal Resource Locator", "Uniform Resource Locator", "Universal Reference Link", "Uniform Reference Locator"], correctAnswer: 1),
      Quiz(question: "Who founded Microsoft?", options: ["Steve Jobs", "Bill Gates", "Mark Zuckerberg", "Larry Page"], correctAnswer: 1),
      Quiz(question: "What is the most used search engine?", options: ["Bing", "Yahoo", "Google", "DuckDuckGo"], correctAnswer: 2),
      Quiz(question: "What does Wi-Fi originally stand for?", options: ["Wireless Fidelity", "Wireless Function", "Wide Fidelity", "Nothing specific"], correctAnswer: 3),
      Quiz(question: "Which company owns YouTube?", options: ["Facebook", "Google", "Microsoft", "Amazon"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Geography",
    icon: Icons.public,
    color: Colors.indigo,
    quizzes: [
      Quiz(question: "What is the capital of Australia?", options: ["Sydney", "Melbourne", "Canberra", "Perth"], correctAnswer: 2),
      Quiz(question: "Which is the longest river in the world?", options: ["Amazon", "Nile", "Mississippi", "Yangtze"], correctAnswer: 1),
      Quiz(question: "What is the smallest country in the world?", options: ["Monaco", "Vatican City", "San Marino", "Liechtenstein"], correctAnswer: 1),
      Quiz(question: "Which mountain range contains Mount Everest?", options: ["Alps", "Himalayas", "Rockies", "Andes"], correctAnswer: 1),
      Quiz(question: "What is the largest desert in the world?", options: ["Sahara", "Gobi", "Antarctic", "Arabian"], correctAnswer: 2),
      Quiz(question: "Which continent has the most countries?", options: ["Asia", "Europe", "Africa", "South America"], correctAnswer: 2),
      Quiz(question: "What is the deepest ocean trench?", options: ["Puerto Rico Trench", "Mariana Trench", "Java Trench", "Peru-Chile Trench"], correctAnswer: 1),
      Quiz(question: "Which country has the most time zones?", options: ["USA", "Russia", "China", "France"], correctAnswer: 3),
      Quiz(question: "What is the capital of Canada?", options: ["Toronto", "Vancouver", "Ottawa", "Montreal"], correctAnswer: 2),
      Quiz(question: "Which sea is the saltiest?", options: ["Dead Sea", "Red Sea", "Black Sea", "Caspian Sea"], correctAnswer: 0),
    ],
  ),

  QuizCategory(
    name: "Math",
    icon: Icons.calculate,
    color: Colors.amber,
    quizzes: [
      Quiz(question: "What is 15% of 200?", options: ["25", "30", "35", "20"], correctAnswer: 1),
      Quiz(question: "What is the square root of 144?", options: ["11", "12", "13", "14"], correctAnswer: 1),
      Quiz(question: "What is 7 × 8?", options: ["54", "56", "58", "52"], correctAnswer: 1),
      Quiz(question: "What is the value of π (pi) to 2 decimal places?", options: ["3.14", "3.15", "3.13", "3.16"], correctAnswer: 0),
      Quiz(question: "What is 2^5?", options: ["16", "25", "32", "64"], correctAnswer: 2),
      Quiz(question: "What is 100 ÷ 4?", options: ["20", "25", "30", "35"], correctAnswer: 1),
      Quiz(question: "In a right triangle, what is the longest side called?", options: ["Adjacent", "Opposite", "Hypotenuse", "Base"], correctAnswer: 2),
      Quiz(question: "What is 9! (9 factorial)?", options: ["362,880", "40,320", "5,040", "720"], correctAnswer: 0),
      Quiz(question: "What is the sum of angles in a triangle?", options: ["90°", "180°", "270°", "360°"], correctAnswer: 1),
      Quiz(question: "What is 0.25 as a fraction?", options: ["1/2", "1/3", "1/4", "1/5"], correctAnswer: 2),
    ],
  ),

  QuizCategory(
    name: "Movies",
    icon: Icons.movie,
    color: Colors.redAccent,
    quizzes: [
      Quiz(question: "Who directed the movie 'Jaws'?", options: ["George Lucas", "Steven Spielberg", "Martin Scorsese", "Francis Ford Coppola"], correctAnswer: 1),
      Quiz(question: "What is the highest-grossing film of all time?", options: ["Avatar", "Titanic", "Avengers: Endgame", "Star Wars"], correctAnswer: 0),
      Quiz(question: "In which movie does the character 'Jack Sparrow' appear?", options: ["Pirates of the Caribbean", "Titanic", "The Mask of Zorro", "Ocean's Eleven"], correctAnswer: 0),
      Quiz(question: "Which movie won the Academy Award for Best Picture in 1994?", options: ["Forrest Gump", "The Lion King", "Pulp Fiction", "The Shawshank Redemption"], correctAnswer: 0),
      Quiz(question: "What is the name of the hobbit in 'The Lord of the Rings'?", options: ["Bilbo", "Frodo", "Gandalf", "Legolas"], correctAnswer: 1),
      Quiz(question: "Who played the Joker in 'The Dark Knight'?", options: ["Jack Nicholson", "Joaquin Phoenix", "Heath Ledger", "Jared Leto"], correctAnswer: 2),
      Quiz(question: "Which animated movie features the song 'Circle of Life'?", options: ["The Jungle Book", "The Lion King", "Finding Nemo", "Moana"], correctAnswer: 1),
      Quiz(question: "What is the first movie in the Marvel Cinematic Universe?", options: ["Thor", "Iron Man", "The Incredible Hulk", "Captain America"], correctAnswer: 1),
      Quiz(question: "In 'Star Wars', what is Luke Skywalker's home planet?", options: ["Coruscant", "Hoth", "Tatooine", "Endor"], correctAnswer: 2),
      Quiz(question: "Which director made 'Pulp Fiction'?", options: ["Quentin Tarantino", "Christopher Nolan", "David Fincher", "The Coen Brothers"], correctAnswer: 0),
    ],
  ),

  QuizCategory(
    name: "Music",
    icon: Icons.music_note,
    color: Colors.brown,
    quizzes: [
      Quiz(question: "Which band released the album 'Abbey Road'?", options: ["The Rolling Stones", "Led Zeppelin", "The Beatles", "Queen"], correctAnswer: 2),
      Quiz(question: "What instrument does Yo-Yo Ma famously play?", options: ["Violin", "Piano", "Cello", "Flute"], correctAnswer: 2),
      Quiz(question: "How many strings does a standard guitar have?", options: ["5", "6", "7", "8"], correctAnswer: 1),
      Quiz(question: "Which composer wrote 'The Four Seasons'?", options: ["Bach", "Mozart", "Beethoven", "Vivaldi"], correctAnswer: 3),
      Quiz(question: "What does the musical term 'forte' mean?", options: ["Soft", "Loud", "Fast", "Slow"], correctAnswer: 1),
      Quiz(question: "Which genre of music originated in Jamaica?", options: ["Jazz", "Blues", "Reggae", "Country"], correctAnswer: 2),
      Quiz(question: "What is the highest male singing voice?", options: ["Bass", "Baritone", "Tenor", "Countertenor"], correctAnswer: 3),
      Quiz(question: "Which instrument family does the trumpet belong to?", options: ["String", "Woodwind", "Brass", "Percussion"], correctAnswer: 2),
      Quiz(question: "How many keys are on a standard piano?", options: ["76", "88", "96", "104"], correctAnswer: 1),
      Quiz(question: "Which music streaming service has the most subscribers?", options: ["Apple Music", "Spotify", "Amazon Music", "YouTube Music"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Literature",
    icon: Icons.book,
    color: Colors.amber,
    quizzes: [
      Quiz(question: "Who wrote 'To Kill a Mockingbird'?", options: ["Harper Lee", "Mark Twain", "F. Scott Fitzgerald", "John Steinbeck"], correctAnswer: 0),
      Quiz(question: "In which Shakespeare play does Hamlet appear?", options: ["Macbeth", "Romeo and Juliet", "Hamlet", "Othello"], correctAnswer: 2),
      Quiz(question: "Who wrote '1984'?", options: ["Aldous Huxley", "Ray Bradbury", "George Orwell", "Kurt Vonnegut"], correctAnswer: 2),
      Quiz(question: "What is the first book in the Harry Potter series?", options: ["Chamber of Secrets", "Philosopher's Stone", "Prisoner of Azkaban", "Goblet of Fire"], correctAnswer: 1),
      Quiz(question: "Who wrote 'Pride and Prejudice'?", options: ["Charlotte Brontë", "Emily Brontë", "Jane Austen", "George Eliot"], correctAnswer: 2),
      Quiz(question: "In 'The Great Gatsby', what is the narrator's name?", options: ["Jay Gatsby", "Tom Buchanan", "Nick Carraway", "George Wilson"], correctAnswer: 2),
      Quiz(question: "Which epic poem tells the story of Odysseus?", options: ["The Iliad", "The Odyssey", "The Aeneid", "Beowulf"], correctAnswer: 1),
      Quiz(question: "Who wrote 'One Hundred Years of Solitude'?", options: ["Jorge Luis Borges", "Gabriel García Márquez", "Mario Vargas Llosa", "Pablo Neruda"], correctAnswer: 1),
      Quiz(question: "What is the opening line of 'A Tale of Two Cities'?", options: ["Call me Ishmael", "It was the best of times", "In a hole in the ground", "All children except one"], correctAnswer: 1),
      Quiz(question: "Who wrote the 'Lord of the Rings' trilogy?", options: ["C.S. Lewis", "J.R.R. Tolkien", "Terry Pratchett", "George R.R. Martin"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Art",
    icon: Icons.palette,
    color: Colors.teal,
    quizzes: [
      Quiz(question: "Who painted 'The Starry Night'?", options: ["Pablo Picasso", "Leonardo da Vinci", "Vincent van Gogh", "Claude Monet"], correctAnswer: 2),
      Quiz(question: "Where is the Mona Lisa displayed?", options: ["British Museum", "Louvre", "Metropolitan Museum", "Uffizi Gallery"], correctAnswer: 1),
      Quiz(question: "Which art movement was Pablo Picasso associated with?", options: ["Impressionism", "Surrealism", "Cubism", "Abstract Expressionism"], correctAnswer: 2),
      Quiz(question: "Who sculpted 'David'?", options: ["Donatello", "Michelangelo", "Bernini", "Rodin"], correctAnswer: 1),
      Quiz(question: "What type of art is Auguste Rodin famous for?", options: ["Painting", "Sculpture", "Architecture", "Photography"], correctAnswer: 1),
      Quiz(question: "Which artist cut off his own ear?", options: ["Paul Gauguin", "Vincent van Gogh", "Paul Cézanne", "Henri Toulouse-Lautrec"], correctAnswer: 1),
      Quiz(question: "What is the art technique of using light and shadow called?", options: ["Impasto", "Chiaroscuro", "Sfumato", "Fresco"], correctAnswer: 1),
      Quiz(question: "Who painted 'The Persistence of Memory' with melting clocks?", options: ["René Magritte", "Max Ernst", "Salvador Dalí", "Joan Miró"], correctAnswer: 2),
      Quiz(question: "What is the primary color that cannot be created by mixing other colors?", options: ["Green", "Orange", "Purple", "Red"], correctAnswer: 3),
      Quiz(question: "Which museum houses 'Guernica' by Picasso?", options: ["Prado Museum", "Guggenheim", "Reina Sofía", "Picasso Museum"], correctAnswer: 2),
    ],
  ),

  QuizCategory(
    name: "Politics",
    icon: Icons.account_balance,
    color: Colors.pink,
    quizzes: [
      Quiz(question: "How many branches of government are there in the US?", options: ["2", "3", "4", "5"], correctAnswer: 1),
      Quiz(question: "What is the minimum age to be President of the United States?", options: ["30", "35", "40", "45"], correctAnswer: 1),
      Quiz(question: "How many senators does each US state have?", options: ["1", "2", "3", "4"], correctAnswer: 1),
      Quiz(question: "What is the term length for a US House Representative?", options: ["2 years", "4 years", "6 years", "8 years"], correctAnswer: 0),
      Quiz(question: "Which document begins with 'We the People'?", options: ["Declaration of Independence", "Constitution", "Bill of Rights", "Articles of Confederation"], correctAnswer: 1),
      Quiz(question: "How many justices are on the US Supreme Court?", options: ["7", "8", "9", "10"], correctAnswer: 2),
      Quiz(question: "What is the legislative body of the United Kingdom called?", options: ["Congress", "Parliament", "Senate", "Assembly"], correctAnswer: 1),
      Quiz(question: "How long is a US presidential term?", options: ["2 years", "4 years", "6 years", "8 years"], correctAnswer: 1),
      Quiz(question: "What is the minimum age to vote in most democracies?", options: ["16", "17", "18", "21"], correctAnswer: 2),
      Quiz(question: "Which amendment gave women the right to vote in the US?", options: ["18th", "19th", "20th", "21st"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Nature",
    icon: Icons.nature,
    color: Colors.green,
    quizzes: [
      Quiz(question: "What is the tallest tree species in the world?", options: ["Oak", "Pine", "Redwood", "Eucalyptus"], correctAnswer: 2),
      Quiz(question: "Which gas makes up about 78% of Earth's atmosphere?", options: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Argon"], correctAnswer: 2),
      Quiz(question: "What is the process by which water changes from liquid to gas?", options: ["Condensation", "Evaporation", "Precipitation", "Sublimation"], correctAnswer: 1),
      Quiz(question: "Which biome is characterized by permafrost?", options: ["Desert", "Rainforest", "Tundra", "Grassland"], correctAnswer: 2),
      Quiz(question: "What is the most abundant element in the Earth's crust?", options: ["Iron", "Silicon", "Aluminum", "Oxygen"], correctAnswer: 3),
      Quiz(question: "Which natural disaster is measured using the Richter scale?", options: ["Tornado", "Hurricane", "Earthquake", "Flood"], correctAnswer: 2),
      Quiz(question: "What type of rock is formed by volcanic activity?", options: ["Sedimentary", "Metamorphic", "Igneous", "Composite"], correctAnswer: 2),
      Quiz(question: "Which layer of the atmosphere is closest to Earth?", options: ["Stratosphere", "Mesosphere", "Thermosphere", "Troposphere"], correctAnswer: 3),
      Quiz(question: "What is the study of weather called?", options: ["Geology", "Meteorology", "Oceanography", "Astronomy"], correctAnswer: 1),
      Quiz(question: "Which type of cloud typically produces thunderstorms?", options: ["Cirrus", "Stratus", "Cumulonimbus", "Cumulus"], correctAnswer: 2),
    ],
  ),

  QuizCategory(
    name: "Animals",
    icon: Icons.pets,
    color: Colors.deepOrange,
    quizzes: [
      Quiz(question: "Which animal is known as the 'King of the Jungle'?", options: ["Tiger", "Elephant", "Lion", "Leopard"], correctAnswer: 2),
      Quiz(question: "How many hearts does an octopus have?", options: ["1", "2", "3", "4"], correctAnswer: 2),
      Quiz(question: "Which bird is known for its ability to mimic human speech?", options: ["Eagle", "Parrot", "Owl", "Robin"], correctAnswer: 1),
      Quiz(question: "What is the largest mammal in the world?", options: ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"], correctAnswer: 1),
      Quiz(question: "Which animal is known for changing colors?", options: ["Octopus", "Chameleon", "Cuttlefish", "All of the above"], correctAnswer: 3),
      Quiz(question: "How many legs does a spider have?", options: ["6", "8", "10", "12"], correctAnswer: 1),
      Quiz(question: "Which animal is the fastest land animal?", options: ["Lion", "Horse", "Cheetah", "Gazelle"], correctAnswer: 2),
      Quiz(question: "What do you call a group of lions?", options: ["Pack", "Herd", "Flock", "Pride"], correctAnswer: 3),
      Quiz(question: "Which animal never sleeps?", options: ["Shark", "Dolphin", "Bullfrog", "Elephant"], correctAnswer: 2),
      Quiz(question: "What is the only mammal capable of true flight?", options: ["Flying Squirrel", "Bat", "Sugar Glider", "Flying Lemur"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Food",
    icon: Icons.restaurant,
    color: Colors.blue,
    quizzes: [
      Quiz(question: "Which spice is derived from the Crocus flower?", options: ["Turmeric", "Paprika", "Saffron", "Cardamom"], correctAnswer: 2),
      Quiz(question: "What is the main ingredient in guacamole?", options: ["Tomato", "Avocado", "Lime", "Onion"], correctAnswer: 1),
      Quiz(question: "Which country is famous for inventing pizza?", options: ["Greece", "Spain", "Italy", "France"], correctAnswer: 2),
      Quiz(question: "What type of pastry is used to make profiteroles?", options: ["Puff pastry", "Shortcrust", "Choux pastry", "Filo pastry"], correctAnswer: 2),
      Quiz(question: "Which vitamin is abundant in citrus fruits?", options: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"], correctAnswer: 2),
      Quiz(question: "What is the most consumed beverage in the world after water?", options: ["Coffee", "Tea", "Beer", "Soda"], correctAnswer: 1),
      Quiz(question: "Which cheese is traditionally used on pizza?", options: ["Cheddar", "Swiss", "Mozzarella", "Parmesan"], correctAnswer: 2),
      Quiz(question: "What is the hottest part of a chili pepper?", options: ["Flesh", "Seeds", "Skin", "Stem"], correctAnswer: 1),
      Quiz(question: "Which country produces the most coffee in the world?", options: ["Colombia", "Vietnam", "Brazil", "Ethiopia"], correctAnswer: 2),
      Quiz(question: "What is umami considered to be?", options: ["A cooking technique", "The fifth taste", "A type of seaweed", "A Japanese spice"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Space",
    icon: Icons.rocket_launch,
    color: Colors.deepPurpleAccent,
    quizzes: [
      Quiz(question: "How many moons does Mars have?", options: ["0", "1", "2", "3"], correctAnswer: 2),
      Quiz(question: "What is the closest star to Earth?", options: ["Alpha Centauri", "Proxima Centauri", "The Sun", "Sirius"], correctAnswer: 2),
      Quiz(question: "Which planet is known for its prominent ring system?", options: ["Jupiter", "Saturn", "Uranus", "Neptune"], correctAnswer: 1),
      Quiz(question: "What is the name of our galaxy?", options: ["Andromeda", "Milky Way", "Whirlpool", "Triangulum"], correctAnswer: 1),
      Quiz(question: "How long does it take for light from the Sun to reach Earth?", options: ["8 seconds", "8 minutes", "8 hours", "8 days"], correctAnswer: 1),
      Quiz(question: "Which was the first country to land on the Moon?", options: ["Russia", "USA", "China", "India"], correctAnswer: 1),
      Quiz(question: "What is the largest planet in our solar system?", options: ["Saturn", "Earth", "Jupiter", "Neptune"], correctAnswer: 2),
      Quiz(question: "Which space telescope was launched in 1990?", options: ["Kepler", "Hubble", "Spitzer", "James Webb"], correctAnswer: 1),
      Quiz(question: "What is the term for a dying star that has collapsed?", options: ["White dwarf", "Red giant", "Black hole", "Neutron star"], correctAnswer: 2),
      Quiz(question: "How many Earth days does it take Mars to orbit the Sun?", options: ["365", "687", "225", "1,687"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Programming",
    icon: Icons.code,
    color: Colors.red,
    quizzes: [
      Quiz(question: "What does OOP stand for?", options: ["Object Oriented Programming", "Only One Program", "Open Office Program", "Optimal Output Processing"], correctAnswer: 0),
      Quiz(question: "Which symbol is used for comments in Python?", options: ["//", "/*", "#", "<!--"], correctAnswer: 2),
      Quiz(question: "What does SQL stand for?", options: ["Structured Query Language", "Simple Query Language", "Standard Query Language", "System Query Language"], correctAnswer: 0),
      Quiz(question: "Which data structure follows LIFO principle?", options: ["Queue", "Stack", "Array", "List"], correctAnswer: 1),
      Quiz(question: "What is the time complexity of binary search?", options: ["O(n)", "O(log n)", "O(n²)", "O(1)"], correctAnswer: 1),
      Quiz(question: "Which language is primarily used for web styling?", options: ["JavaScript", "HTML", "CSS", "PHP"], correctAnswer: 2),
      Quiz(question: "What does API stand for?", options: ["Application Programming Interface", "Advanced Programming Interface", "Automated Program Interface", "Application Process Interface"], correctAnswer: 0),
      Quiz(question: "Which of these is not a programming paradigm?", options: ["Object-oriented", "Functional", "Procedural", "Circular"], correctAnswer: 3),
      Quiz(question: "What is Git used for?", options: ["Database management", "Version control", "Web development", "Mobile development"], correctAnswer: 1),
      Quiz(question: "Which company developed Java?", options: ["Microsoft", "Apple", "Sun Microsystems", "IBM"], correctAnswer: 2),
    ],
  ),

  QuizCategory(
    name: "Mythology",
    icon: Icons.auto_stories,
    color: Colors.brown,
    quizzes: [
      Quiz(question: "Who is the king of the gods in Greek mythology?", options: ["Poseidon", "Hades", "Zeus", "Apollo"], correctAnswer: 2),
      Quiz(question: "What is Thor's hammer called in Norse mythology?", options: ["Gungnir", "Mjolnir", "Gram", "Laevateinn"], correctAnswer: 1),
      Quiz(question: "Who is the Egyptian god of the sun?", options: ["Anubis", "Osiris", "Ra", "Horus"], correctAnswer: 2),
      Quiz(question: "In Roman mythology, who is the goddess of wisdom?", options: ["Venus", "Diana", "Minerva", "Juno"], correctAnswer: 2),
      Quiz(question: "What creature has the body of a lion and the head of a human?", options: ["Griffin", "Sphinx", "Minotaur", "Centaur"], correctAnswer: 1),
      Quiz(question: "Who opened the box that released evil into the world?", options: ["Pandora", "Helen", "Cassandra", "Medusa"], correctAnswer: 0),
      Quiz(question: "What is the name of Odin's eight-legged horse?", options: ["Fenrir", "Sleipnir", "Jormungandr", "Huginn"], correctAnswer: 1),
      Quiz(question: "Who is the Greek goddess of the hunt?", options: ["Athena", "Artemis", "Aphrodite", "Hera"], correctAnswer: 1),
      Quiz(question: "What did Prometheus steal from the gods?", options: ["Gold", "Fire", "Knowledge", "Immortality"], correctAnswer: 1),
      Quiz(question: "Who is the Norse god of mischief?", options: ["Odin", "Thor", "Loki", "Freyr"], correctAnswer: 2),
    ],
  ),

  QuizCategory(
    name: "Medicine",
    icon: Icons.medical_services,
    color: Colors.black54,
    quizzes: [
      Quiz(question: "What is the largest organ in the human body?", options: ["Heart", "Liver", "Brain", "Skin"], correctAnswer: 3),
      Quiz(question: "What does DNA stand for?", options: ["Deoxyribonucleic Acid", "Dinitrogen Acid", "Dynamic Nuclear Acid", "Dextrose Nucleic Acid"], correctAnswer: 0),
      Quiz(question: "Which blood cells help fight infection?", options: ["Red blood cells", "White blood cells", "Platelets", "Plasma"], correctAnswer: 1),
      Quiz(question: "What is the normal human body temperature?", options: ["96.8°F", "98.6°F", "100.4°F", "102.2°F"], correctAnswer: 1),
      Quiz(question: "Which part of the brain controls balance?", options: ["Cerebrum", "Cerebellum", "Brain stem", "Hippocampus"], correctAnswer: 1),
      Quiz(question: "How many chambers does a human heart have?", options: ["2", "3", "4", "5"], correctAnswer: 2),
      Quiz(question: "What is the medical term for high blood pressure?", options: ["Hypotension", "Hypertension", "Tachycardia", "Bradycardia"], correctAnswer: 1),
      Quiz(question: "Which vitamin deficiency causes scurvy?", options: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"], correctAnswer: 2),
      Quiz(question: "What is the strongest muscle in the human body?", options: ["Bicep", "Heart", "Jaw muscle", "Quadriceps"], correctAnswer: 2),
      Quiz(question: "How many bones are in an adult human body?", options: ["196", "206", "216", "226"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Business",
    icon: Icons.business,
    color: Colors.amber,
    quizzes: [
      Quiz(question: "What does CEO stand for?", options: ["Chief Executive Officer", "Central Executive Officer", "Corporate Executive Officer", "Chief Efficient Officer"], correctAnswer: 0),
      Quiz(question: "What is the term for a company's total revenue minus expenses?", options: ["Gross profit", "Net profit", "Operating income", "EBITDA"], correctAnswer: 1),
      Quiz(question: "Which company is known for the slogan 'Just Do It'?", options: ["Adidas", "Nike", "Puma", "Reebok"], correctAnswer: 1),
      Quiz(question: "What does IPO stand for?", options: ["International Public Offering", "Initial Public Offering", "Internal Profit Organization", "Independent Public Office"], correctAnswer: 1),
      Quiz(question: "Which management principle suggests that 80% of effects come from 20% of causes?", options: ["Pareto Principle", "Murphy's Law", "Peter Principle", "Occam's Razor"], correctAnswer: 0),
      Quiz(question: "What is a startup company that is valued at over \$1 billion called?", options: ["Dragon", "Phoenix", "Unicorn", "Griffin"], correctAnswer: 2),
      Quiz(question: "Which financial statement shows a company's assets, liabilities, and equity?", options: ["Income Statement", "Cash Flow Statement", "Balance Sheet", "Statement of Equity"], correctAnswer: 2),
      Quiz(question: "What does B2B stand for in business?", options: ["Business to Business", "Business to Buyer", "Brand to Business", "Business to Bank"], correctAnswer: 0),
      Quiz(question: "Who is known as the 'Father of Modern Management'?", options: ["Henry Ford", "Peter Drucker", "Frederick Taylor", "Max Weber"], correctAnswer: 1),
      Quiz(question: "What is the term for the practice of contracting work to external companies?", options: ["Insourcing", "Outsourcing", "Crowdsourcing", "Resourcing"], correctAnswer: 1),
    ],
  ),

  QuizCategory(
    name: "Random",
    icon: Icons.shuffle,
    color: Colors.purpleAccent,
    quizzes: [
      Quiz(question: "What is the most spoken language in the world?", options: ["English", "Spanish", "Mandarin Chinese", "Hindi"], correctAnswer: 2),
      Quiz(question: "Which is the only mammal capable of true flight?", options: ["Flying squirrel", "Bat", "Sugar glider", "Flying lemur"], correctAnswer: 1),
      Quiz(question: "What is the fear of spiders called?", options: ["Arachnophobia", "Acrophobia", "Claustrophobia", "Agoraphobia"], correctAnswer: 0),
      Quiz(question: "How many sides does a hexagon have?", options: ["5", "6", "7", "8"], correctAnswer: 1),
      Quiz(question: "What is the currency of Japan?", options: ["Won", "Yuan", "Yen", "Rupiah"], correctAnswer: 2),
      Quiz(question: "Which planet is closest to the Sun?", options: ["Venus", "Earth", "Mercury", "Mars"], correctAnswer: 2),
      Quiz(question: "What is the largest ocean on Earth?", options: ["Atlantic", "Indian", "Arctic", "Pacific"], correctAnswer: 3),
      Quiz(question: "How many minutes are in a full day?", options: ["1,440", "1,400", "1,460", "1,480"], correctAnswer: 0),
      Quiz(question: "What is the chemical symbol for gold?", options: ["Go", "Gd", "Au", "Ag"], correctAnswer: 2),
      Quiz(question: "Which word appears first in the dictionary?", options: ["Aardvark", "Aback", "Abacus", "Abandon"], correctAnswer: 0),
    ],
  ),
];



























