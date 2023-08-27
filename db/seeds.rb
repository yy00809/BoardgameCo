# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
monopoly = Game.create!(
  name: "Monopoly",
  number_of_players: "2-8",
  age_limit: 9,
  description: "Monopoly is a classic board game where players roll dice to move around the board, buying and trading properties, and collecting rent from other players.",
  rules: "Players take turns rolling two six-sided dice and moving their token around the board. If a player lands on an unowned property, they can choose to buy it or let it go up for auction. If a player lands on a property owned by another player, they must pay rent. The goal of the game is to bankrupt all other players.",
  rate: 4.5,
  type: "Strategy"
)
monopoly.game_variants.create!([
{ name: "Classic", link: "https://www.amazon.co.uk/Monopoly-Family-Board-Players-Community/dp/B096W2XGHM/ref=sr_1_3?crid=UW8E9LZYWT2Z&keywords=monop&qid=1679771696&sprefix=monop%2Caps%2C87&sr=8-3&th=1", price: 20.16 },
{ name: "Super mario edition", link: "https://www.amazon.co.uk/Monopoly-Super-Mario-Celebration-Effects/dp/B087YNBC51/ref=sr_1_4?crid=UW8E9LZYWT2Z&keywords=monop&qid=1679771696&sprefix=monop%2Caps%2C87&sr=8-4", price: 23.98 }
])

monopoly.q_and_as.create!(question: "How do I win Monopoly?", answer: "The goal of Monopoly is to be the last player standing after all other players have gone bankrupt.")
monopoly.q_and_as.create!(question: "What is the objective of Monopoly?", answer: "The objective of Monopoly is to become the richest player in the game.")
monopoly.q_and_as.create!(question: "How many players can play Monopoly?", answer: "Monopoly can be played with 2 to 8 players.")
monopoly.q_and_as.create!(question: "What happens if I land on a property that is not owned?", answer: "If you land on an unowned property, you have the option to buy it or let it go up for auction.")
monopoly.q_and_as.create!(question: "What happens if I can't afford to pay rent to another player?", answer: "If you can't afford to pay rent, you must either mortgage your own properties or sell them to raise the necessary funds.")
monopoly.q_and_as.create!(question: "What is the purpose of the 'Free Parking' space on the board?", answer: "The 'Free Parking' space does not have any special gameplay function, and players do not collect money when they land on it.")
monopoly.q_and_as.create!(question: "Can I build houses and hotels on my properties right away?", answer: "No, you must first own all properties in a color group before you can start building houses and hotels on them.")
monopoly.q_and_as.create!(question: "What is the maximum number of houses and hotels that can be built on a single property?", answer: "You can build up to 4 houses on a single property, and then replace those houses with a hotel when you have 4 houses on all properties in the color group.")


settlers = Game.create!(
  name: "Settlers of Catan",
  number_of_players: "3-4",
  age_limit: 10,
  description: "Settlers of Catan is a popular board game where players collect resources and use them to build roads, settlements, and cities on a fictional island. The game involves trading with other players, strategic placement of buildings, and a little bit of luck.",
  rules: "Players take turns rolling two six-sided dice to determine which resources are produced. Players then collect these resources and use them to build roads, settlements, and cities. The game also involves trading resources with other players and strategically blocking their progress. The first player to reach a certain number of points wins the game.",
  rate: 4.8,
  type: "Euro"
)

settlers.game_variants.create!([
{ name: "Classic", link: "https://www.amazon.co.uk/Catan-CN3071-Board-Game-Multi-color/dp/B00U26V4VQ/ref=sr_1_3_mod_primary_new?crid=33RLNKK7A78QW&keywords=Settlers+of+Catan&qid=1679773321&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=settlers+of+catan%2Caps%2C121&sr=8-3", price: 36.99 },
{ name: "Game of Thrones Edition", link: "https://www.amazon.co.uk/Catan-Games-Thrones-CN3015-Brotherhood/dp/B07746H7R2/ref=sxin_16?asc_contentid=amzn1.osa.3ce9d018-d72c-42bd-8997-ef89bb0f7eb0.A1F83G8C2ARO7P.en_GB&asc_contenttype=article&ascsubtag=amzn1.osa.3ce9d018-d72c-42bd-8997-ef89bb0f7eb0.A1F83G8C2ARO7P.en_GB&content-id=amzn1.sym.1ffc78d9-6ca5-45a3-9a92-e0cd6c518bf8%3Aamzn1.sym.1ffc78d9-6ca5-45a3-9a92-e0cd6c518bf8&creativeASIN=B07746H7R2&crid=33RLNKK7A78QW&cv_ct_cx=Settlers+of+Catan&cv_ct_id=amzn1.osa.3ce9d018-d72c-42bd-8997-ef89bb0f7eb0.A1F83G8C2ARO7P.en_GB&cv_ct_pg=search&cv_ct_we=asin&cv_ct_wn=osp-single-source-pecos-desktop&keywords=Settlers+of+Catan&linkCode=oas&pd_rd_i=B07746H7R2&pd_rd_r=d72db00c-5f8d-4322-95b9-7edfb494bccf&pd_rd_w=YUht7&pd_rd_wg=bzZBv&pf_rd_p=1ffc78d9-6ca5-45a3-9a92-e0cd6c518bf8&pf_rd_r=8M8BNTDQ9ER7QFPAHBTS&qid=1679773392&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=settlers+of+catan%2Caps%2C121&sr=1-2-c84eb971-91f2-4a4d-acce-811265c24254&tag=empire-osp-21", price: 44.95 }
])

settlers.q_and_as.create!(question: "How do I win Settlers of Catan?", answer: "The goal of Settlers of Catan is to be the first player to reach 10 victory points.")
settlers.q_and_as.create!(question: "What is the robber in Settlers of Catan?", answer: "The robber is a game piece that allows a player to steal resources from other players.")
settlers.q_and_as.create!(question: "How do I get resources in Settlers of Catan?", answer: "Resources can be obtained by building settlements and cities on resource tiles or by trading with other players.")
settlers.q_and_as.create!(question: "Can you play Settlers of Catan with two players?", answer: "Yes, Settlers of Catan can be played with two players, but the game is more balanced with three or four players.")
settlers.q_and_as.create!(question: "What is the longest road in Settlers of Catan?", answer: "The longest road is a special achievement that is awarded to the player with the longest continuous road of at least 5 segments.")
settlers.q_and_as.create!(question: "What are development cards in Settlers of Catan?", answer: "Development cards are special cards that provide various benefits to the player who buys them, such as victory points or the ability to move the robber.")
settlers.q_and_as.create!(question: "Can you trade resources with the bank in Settlers of Catan?", answer: "Yes, you can trade resources with the bank in Settlers of Catan at a rate of 4 of the same resource for 1 of any other resource.")
settlers.q_and_as.create!(question: "How do I place roads in Settlers of Catan?", answer: "To place a road in Settlers of Catan, you need to have the necessary resources (1 brick and 1 lumber) and build it adjacent to one of your settlements or cities.")

ride = Game.create!(
  name: "Ticket to Ride",
  number_of_players: "2-5",
  age_limit: 8,
  description: "Ticket to Ride is a popular board game where players build train routes across North America (or other regions depending on the version). The game involves collecting train cards and strategically placing trains on the board.",
  rules: "Players take turns collecting train cards and using them to place trains on the board. The goal is to connect specific cities and complete routes shown on your tickets. Points are awarded for completed routes and for having the longest continuous route. The player with the most points at the end of the game wins.",
  rate: 4.7,
  type: "Euro"
)

ride.game_variants.create!([
{ name: "Europe edition", link: "https://www.amazon.co.uk/Days-Wonder-DOW7202-Ticket-Europe/dp/B000809OAO/ref=sr_1_1?crid=EHGYI6MV92SE&keywords=ticket+to+ride&qid=1679773445&s=kids&sprefix=ticket+to+ride%2Ctoys%2C74&sr=1-1", price: 40.74 },
{ name: "London Edition", link: "https://www.amazon.co.uk/Days-Wonder-DOW720061-Ticket-Ride/dp/B07SG5QWJY/ref=sr_1_4?crid=EHGYI6MV92SE&keywords=ticket+to+ride&qid=1679773540&s=kids&sprefix=ticket+to+ride%2Ctoys%2C74&sr=1-4", price: 17.00 }
])

ride.q_and_as.create!(question: "What is the goal of Ticket to Ride?", answer: "The goal of Ticket to Ride is to score the most points by building train routes between cities and completing destination tickets.")
ride.q_and_as.create!(question: "How do I earn points in Ticket to Ride?", answer: "You can earn points in Ticket to Ride by completing routes, claiming routes, and completing destination tickets.")
ride.q_and_as.create!(question: "What happens when all the train pieces are used up in Ticket to Ride?", answer: "When all the train pieces are used up in Ticket to Ride, the game ends and players tally up their scores.")
ride.q_and_as.create!(question: "What are the different colors of train cards in Ticket to Ride?", answer: "The different colors of train cards in Ticket to Ride represent different types of trains: red for passenger, blue for ferry, yellow for local, green for express, black for super express, and white for locomotive.")
ride.q_and_as.create!(question: "Can I build on an opponent's route in Ticket to Ride?", answer: "No, you cannot build on an opponent's route in Ticket to Ride. Each player can only claim routes for themselves.")
ride.q_and_as.create!(question: "How many train pieces do I start with in Ticket to Ride?", answer: "In Ticket to Ride, each player starts with 45 train pieces.")
ride.q_and_as.create!(question: "What happens if I don't complete a destination ticket in Ticket to Ride?", answer: "If you don't complete a destination ticket in Ticket to Ride, you lose the number of points indicated on the ticket.")
ride.q_and_as.create!(question: "How do I draw train cards in Ticket to Ride?", answer: "You can draw train cards in Ticket to Ride by either drawing two from the face-down deck or taking one from the face-up cards on the table. However, you can only take one face-up card per turn.")

chess = Game.create!(
  name: "Chess",
  number_of_players: "2",
  age_limit: 6,
  description: "Chess is a classic board game that has been played for centuries. It involves two players moving their pieces around the board in an attempt to capture the opponent's king.",
  rules: "Players take turns moving their pieces around the board, with each piece having its own unique movement pattern. The goal is to capture the opponent's king, which results in a checkmate and victory. The game can also end in a stalemate or draw.",
  rate: 4.9,
  type: "Strategy"
)

chess.game_variants.create!([
{ name: "Jaques of London Large Chess Sets", link: "https://www.amazon.co.uk/Jaques-Folding-Inches-Complete-Pieces/dp/B07BL2M9G2/ref=sr_1_1_sspa?crid=9E71N4VV1YI2&keywords=chess&qid=1679773575&s=kids&sprefix=chess%2Ctoys%2C78&sr=1-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1", price: 32.99 },
{ name: "Peradix Chess Board Set Game", link: "https://www.amazon.co.uk/Peradix-Folding-Storage-Portable-Travel/dp/B07RHL9FKQ/ref=sr_1_4?crid=9E71N4VV1YI2&keywords=chess&qid=1679773619&s=kids&sprefix=chess%2Ctoys%2C78&sr=1-4", price: 16.98 }
])

chess.q_and_as.create!(question: "What is the objective of Chess?", answer: "The objective of Chess is to put the opponent's king in a position where it is in checkmate and cannot escape capture.")
chess.q_and_as.create!(question: "How do the chess pieces move?", answer: "Each chess piece moves in a specific way. The king moves one square in any direction, the queen moves any number of squares along a rank, file, or diagonal, the rook moves any number of squares along a rank or file, the bishop moves any number of squares diagonally, and the knight moves to any of the squares immediately adjacent to it that are not on the same rank, file, or diagonal.")
chess.q_and_as.create!(question: "What is 'castling' in Chess?", answer: "Castling is a move in which the king is moved two squares towards a rook on the player's first rank, then that rook moves to the square over which the king crossed.")
chess.q_and_as.create!(question: "What is 'en passant' in Chess?", answer: "'En passant' is a move in which a pawn can capture an opponent's pawn that has just advanced two squares from its starting position.")
chess.q_and_as.create!(question: "What is 'promotion' in Chess?", answer: "'Promotion' is a move in which a pawn that reaches the eighth rank is exchanged for a queen, rook, bishop, or knight of the same color.")
chess.q_and_as.create!(question: "What is a 'pin' in Chess?", answer: "A 'pin' in Chess is a situation where a piece cannot move without exposing a more valuable piece to capture.")
chess.q_and_as.create!(question: "What is a 'fork' in Chess?", answer: "A 'fork' in Chess is a move in which a single piece attacks two or more opponent pieces at the same time.")
chess.q_and_as.create!(question: "What is a 'skewer' in Chess?", answer: "A 'skewer' in Chess is a tactic in which a more valuable piece is attacked through a less valuable piece that is in front of it.")

scrabble = Game.create!(
  name: "Scrabble",
  number_of_players: "2-4",
  age_limit: 8,
  description: "Scrabble is a word game where players create words from a set of letter tiles and place them on a board to earn points.",
  rules: "Players take turns creating words on the board using their letter tiles. Each letter has a point value, and players can earn bonus points for creating longer words or using certain spaces on the board. The player with the most points at the end of the game wins.",
  rate: 4.6,
  type: "Strategy"
)

scrabble.game_variants.create!([
{ name: "Harry Potter Edition", link: "https://www.amazon.co.uk/Mattel-Games-DPR77-Scrabble-Potter/dp/B01ICY1DEM/ref=sr_1_3_sspa?crid=A6MEBV414GZQ&keywords=scrabble&qid=1679773668&s=kids&sprefix=scrabble%2Ctoys%2C76&sr=1-3-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1", price: 24.55 },
{ name: "Classic Edition", link: "https://www.amazon.co.uk/Scrabble-Orginal-Y9592-Board-Game/dp/B00DE6FZCK/ref=sr_1_1_sspa?crid=A6MEBV414GZQ&keywords=scrabble&qid=1679773733&s=kids&sprefix=scrabble%2Ctoys%2C76&sr=1-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1", price: 12.99 }
])

scrabble.q_and_as.create!(question: "What is the highest scoring word in Scrabble?", answer: "The highest scoring word in Scrabble is 'oxyphenbutazone' with a total of 1,458 points if played across three triple word score squares.")
scrabble.q_and_as.create!(question: "How many tiles are in a game of Scrabble?", answer: "There are 100 tiles in a game of Scrabble, with each letter having a different point value.")
scrabble.q_and_as.create!(question: "What is the name of the official Scrabble dictionary?", answer: "The official Scrabble dictionary is called the Official Tournament and Club Word List.")
scrabble.q_and_as.create!(question: "Can you use proper nouns in Scrabble?", answer: "No, proper nouns are not allowed in Scrabble.")
scrabble.q_and_as.create!(question: "What is the value of the blank tile in Scrabble?", answer: "The blank tile in Scrabble has no point value, but can be used to represent any letter.")
scrabble.q_and_as.create!(question: "How do you win a game of Scrabble?", answer: "In Scrabble, the player with the highest score at the end of the game wins.")
scrabble.q_and_as.create!(question: "How many letters are in a Scrabble game rack?", answer: "There are 7 letters in a Scrabble game rack at any given time.")
scrabble.q_and_as.create!(question: "What happens if you challenge a word in Scrabble?", answer: "If you challenge a word in Scrabble and the word is found to be invalid, the player who played the word must remove it from the board and forfeit their turn.")

risk = Game.create!(
name: "Risk",
number_of_players: "2-6",
age_limit: 10,
description: "Risk is a strategy board game where players aim to conquer territories and eliminate their opponents. Players roll dice to determine the outcome of battles and must strategically place and move their armies to gain control of the board.",
rules: "Each player starts with a set number of armies and territories, and takes turns placing additional armies and attacking other territories. Battles are determined by rolling dice, with higher numbers resulting in a victory. The game is won by eliminating all other players or achieving a specific goal, such as controlling a certain number of territories.",
rate: 4.3,
type: "strategy"
)

risk.game_variants.create!([
{ name: "Classic", link: "https://www.amazon.co.uk/Hasbro-B7404-Gaming-Risk-Game/dp/B01BKBXQ58/ref=sr_1_4?crid=1HNRDXLVY3GP7&keywords=risk&qid=1679773770&s=kids&sprefix=risk%2Ctoys%2C74&sr=1-4", price: 29.99 },
{ name: "Star Wars Edition", link: "https://www.amazon.co.uk/Star-Wars-Risk-Clone/dp/B0007ZGPES/ref=sr_1_5?crid=1HNRDXLVY3GP7&keywords=risk&qid=1679773826&s=kids&sprefix=risk%2Ctoys%2C74&sr=1-5", price: 84.90 }
])

risk.q_and_as.create!(question: "What is the objective of Risk?", answer: "The objective of Risk is to conquer the world by occupying all territories on the board and eliminating all other players.")
risk.q_and_as.create!(question: "How do I reinforce my armies in Risk?", answer: "You can reinforce your armies in Risk by trading in sets of cards for additional troops or by placing troops during the reinforcement phase.")
risk.q_and_as.create!(question: "What happens if all my armies are defeated in Risk?", answer: "If all your armies are defeated in Risk, you are eliminated from the game.")
risk.q_and_as.create!(question: "How do I initiate an attack in Risk?", answer: "To initiate an attack in Risk, you must have at least one army adjacent to an enemy territory and roll the attack dice.")
risk.q_and_as.create!(question: "What is the purpose of the dice in Risk?", answer: "The dice in Risk are used to determine the outcome of battles when attacking and defending territories.")
risk.q_and_as.create!(question: "Can I form alliances with other players in Risk?", answer: "Yes, players can form alliances in Risk, but they are not binding and can be broken at any time.")
risk.q_and_as.create!(question: "What is the significance of the continents in Risk?", answer: "The continents in Risk provide bonuses to players who control all territories within them, making them strategically important to control.")
risk.q_and_as.create!(question: "What happens if I run out of armies in Risk?", answer: "If you run out of armies in Risk, you cannot attack or defend and must wait until the reinforcement phase to receive additional troops.")

pandemic = Game.create!(
name: "Pandemic",
number_of_players: "2-4",
age_limit: 8,
description: "Pandemic is a cooperative board game where players work together to stop the spread of diseases around the world. Players take on the role of different specialists and must use their unique abilities to find cures for the diseases before they become global pandemics.",
rules: "Players take turns moving around the world, treating diseases, and trying to find cures. They must work together to manage outbreaks and prevent the spread of diseases to new regions. The game is won by finding cures for all four diseases before time runs out, while the game is lost if the diseases spread too far and become uncontrollable.",
rate: 4.7,
type: "Cooperation"
)

pandemic.game_variants.create!([
{ name: "Season 0", link: "https://www.amazon.co.uk/Asmodee-ZM7174IT-Pandemic-Legacy-Season/dp/B08KF54M3Y/ref=sr_1_4?crid=2DL21NGFECE97&keywords=Pandemic&qid=1679773864&s=kids&sprefix=pandemic%2Ctoys%2C82&sr=1-4", price: 69.79 },
{ name: "Season 2", link: "https://www.amazon.co.uk/Asmodee-Pandemic-Legacy-pan08black-Season/dp/B0778JQK9V/ref=sr_1_2?crid=2DL21NGFECE97&keywords=Pandemic&qid=1679773966&s=kids&sprefix=pandemic%2Ctoys%2C82&sr=1-2", price: 81.41 }
])

pandemic.q_and_as.create!(question: "What is the objective of Pandemic?", answer: "The objective of Pandemic is to cure all four diseases before time runs out.")
pandemic.q_and_as.create!(question: "How do I treat diseases in Pandemic?", answer: "To treat a disease in Pandemic, you need to be in a city with a disease cube and use an action to remove one cube from the city.")
pandemic.q_and_as.create!(question: "How do I win Pandemic?", answer: "To win Pandemic, you need to cure all four diseases and prevent outbreaks from occurring.")
pandemic.q_and_as.create!(question: "What are the different roles in Pandemic?", answer: "The different roles in Pandemic are the Medic, Scientist, Researcher, Dispatcher, Operations Expert, Quarantine Specialist, and Contingency Planner.")
pandemic.q_and_as.create!(question: "How does the outbreak mechanic work in Pandemic?", answer: "When a city with three disease cubes is infected again in Pandemic, an outbreak occurs, and disease cubes are added to all adjacent cities.")
pandemic.q_and_as.create!(question: "Can players trade cards in Pandemic?", answer: "Yes, players can trade cards with each other in Pandemic, as long as they are in the same city.")
pandemic.q_and_as.create!(question: "How many epidemic cards are in the Pandemic deck?", answer: "There are a total of five epidemic cards in the Pandemic deck.")
pandemic.q_and_as.create!(question: "What happens when an epidemic card is drawn in Pandemic?", answer: "When an epidemic card is drawn in Pandemic, the infection rate increases, and a new card is drawn from the bottom of the infection deck, which is more likely to be a high-risk city.")

dominion = Game.create!(
name: "Dominion",
number_of_players: "2-4",
age_limit: 14,
description: "Dominion is a deck-building board game where players compete to build the most powerful kingdom. Players start with a small deck of cards and must acquire new cards to build their deck and gain victory points.",
rules: "Players start with a deck of basic cards and use them to acquire new cards from a shared pool. These new cards allow players to take actions, gain resources, and earn victory points. The game ends when all the victory point cards are gone or when the game's supply runs out. The player with the most victory points at the end of the game is the winner.",
rate: 4.5,
type: "Deck-building"
)

dominion.game_variants.create!([
{ name: "Classic", link: "https://www.amazon.co.uk/Rio-Grande-Games-RGG370-Dominion/dp/B001JQY6K4/ref=sr_1_5?crid=3JRZOUC8RCAKM&keywords=Dominion&qid=1679774022&s=kids&sprefix=dominion%2Ctoys%2C206&sr=1-5", price: 111.00 },
{ name: "Dominion Expansion Empires", link: "https://www.amazon.co.uk/Rio-Grande-Games-22501422-Expansion/dp/B096BNW84H/ref=sr_1_3?crid=3JRZOUC8RCAKM&keywords=Dominion&qid=1679774074&s=kids&sprefix=dominion%2Ctoys%2C206&sr=1-3", price: 35.11 }
])

dominion.q_and_as.create!(question: "How many cards do I start with in Dominion?", answer: "In Dominion, you start with 7 Copper cards and 3 Estate cards.")
dominion.q_and_as.create!(question: "What is the objective of Dominion?", answer: "The objective of Dominion is to have the most Victory points when the game ends.")
dominion.q_and_as.create!(question: "How many players can play Dominion?", answer: "Dominion can be played with 2 to 4 players.")
dominion.q_and_as.create!(question: "What are the different types of cards in Dominion?", answer: "There are three types of cards in Dominion: Treasure cards, Victory cards, and Kingdom cards.")
dominion.q_and_as.create!(question: "How do I acquire cards in Dominion?", answer: "In Dominion, you acquire cards by using your Action and Buy phases to purchase them from the common pool or gain them through special abilities.")
dominion.q_and_as.create!(question: "What is the role of the Curse card in Dominion?", answer: "The Curse card is a Victory card with a negative point value. Players can give Curse cards to opponents to hinder their progress.")
dominion.q_and_as.create!(question: "How do I win a game of Dominion?", answer: "To win a game of Dominion, you need to accumulate the most Victory points by the end of the game.")
dominion.q_and_as.create!(question: "What is the purpose of the Trash pile in Dominion?", answer: "The Trash pile is where players discard cards they no longer want or need. Cards in the Trash pile cannot be retrieved.")

gate = Game.create!(
name: "Betrayal at Baldur's Gate",
number_of_players: "3-6",
age_limit: 12,
description: "Betrayal at Baldur's Gate is a horror-themed board game where players explore a haunted city and face off against supernatural forces. As they explore the city, they uncover secrets and trigger events that can lead to one player becoming a traitor, forcing the other players to work together to stop them.",
rules: "Players take turns moving their characters around the city, exploring new locations and triggering events. As they explore, they collect items and gain experience points, which can be used to improve their characters. At a certain point in the game, one player is revealed to be a traitor and must work against the other players to achieve their own goals.",
rate: 4.4,
type: "Cooperation"
)

gate.game_variants.create!([
{ name: "Classic", link: "https://www.amazon.co.uk/Avalon-Hill-Betrayal-Baldurs-Modular/dp/B08YJYSX82/ref=sr_1_1?crid=1YSRA392SQRTP&keywords=Betrayal+at+Baldur%27s+Gate&qid=1679774132&s=kids&sprefix=betrayal+at+baldur+s+gate%2Ctoys%2C87&sr=1-1", price: 41.99 },
{ name: "Wizards of the Coast", link: "https://www.amazon.co.uk/Betrayal-at-House-Hill-Deutsch/dp/B07Z115WG6/ref=sr_1_10?crid=1YSRA392SQRTP&keywords=Betrayal+at+Baldur%27s+Gate&qid=1679774154&s=kids&sprefix=betrayal+at+baldur+s+gate%2Ctoys%2C87&sr=1-10", price: 37.04 }
])

gate.q_and_as.create!(question: "How do I win Betrayal at Baldur's Gate?", answer: "The goal of Betrayal at Baldur's Gate varies depending on the scenario you are playing. You will need to follow the specific objectives outlined in the scenario to win the game.")
gate.q_and_as.create!(question: "How do I explore new rooms in Betrayal at Baldur's Gate?", answer: "To explore a new room in Betrayal at Baldur's Gate, you need to move your character's token into an unexplored room and then draw a new tile from the stack.")
gate.q_and_as.create!(question: "How do I know when the Haunt begins in Betrayal at Baldur's Gate?", answer: "The Haunt phase in Betrayal at Baldur's Gate begins when a specific condition outlined in the scenario is met. This can vary depending on the scenario you are playing.")
gate.q_and_as.create!(question: "What are some common strategies in Betrayal at Baldur's Gate?", answer: "Common strategies in Betrayal at Baldur's Gate include exploring the house quickly to gather resources, working together with other players to increase your chances of survival, and being prepared to face the Haunt phase.")
gate.q_and_as.create!(question: "Can players win together in Betrayal at Baldur's Gate?", answer: "The outcome of Betrayal at Baldur's Gate depends on the scenario being played. In some scenarios, players can win together by achieving a shared objective, while in other scenarios, only one player can be victorious.")
gate.q_and_as.create!(question: "How do I use items in Betrayal at Baldur's Gate?", answer: "To use an item in Betrayal at Baldur's Gate, you need to have the item card in your possession and then follow the instructions on the card.")
gate.q_and_as.create!(question: "How do I gain experience points in Betrayal at Baldur's Gate?", answer: "Experience points in Betrayal at Baldur's Gate are gained by defeating monsters and completing certain objectives. You can then use these points to improve your character's abilities.")
gate.q_and_as.create!(question: "How do I initiate combat in Betrayal at Baldur's Gate?", answer: "Combat in Betrayal at Baldur's Gate is initiated when a player enters a room with a monster. The player then rolls dice to determine the outcome of the combat.")

hanabi = Game.create!(
name: "Hanabi",
number_of_players: "2-5",
age_limit: 8,
description: "Hanabi is a cooperative card game where players work together to create a fireworks display. The catch is that players can't see their own cards and have to rely on clues from other players to figure out what cards they have.",
rules: "Players take turns giving clues to their teammates about the cards in their hands, trying to help them figure out which cards to play and in what order. The catch is that players can only give limited information and must rely on deduction to figure out the rest. If players manage to play all the cards in the correct order, they create a beautiful fireworks display and win the game.",
rate: 4.2,
type: "Cooperation"
)

hanabi.game_variants.create!([
{ name: "Classic", link: "https://www.amazon.com/Hanabi-Card-Game-2013-Award/dp/B00CYQ9Q76", price: 9.99 },
{ name: "Deluxe", link: "https://www.amazon.com/Hanabi-Card-Game-Expansions-2014/dp/B00J57VU44", price: 19.99 }
])

hanabi.q_and_as.create!(question: "How do I win Hanabi?", answer: "The goal of Hanabi is to create a fireworks display by playing cards in the correct order. Players need to work together and use deduction to figure out which cards to play in what order.")
hanabi.q_and_as.create!(question: "How do I give clues in Hanabi?", answer: "When giving clues in Hanabi, players can only give limited information about the cards in their teammates' hands. For example, they can say how many cards of a certain color or value a teammate has, but can't specify which cards.")
hanabi.q_and_as.create!(question: "What happens if I play a card out of order in Hanabi?", answer: "If a player plays a card out of order in Hanabi, the display of fireworks becomes incomplete and it becomes more difficult for players to deduce which cards to play next. Players need to work together to avoid this and create a complete fireworks display.")
hanabi.q_and_as.create!(question: "Can players look at their own cards in Hanabi?", answer: "No, players can't look at their own cards in Hanabi. They can only rely on clues from other players to figure out which cards they have in their hand.")
hanabi.q_and_as.create!(question: "What are some common strategies in Hanabi?", answer: "Common strategies in Hanabi include giving specific clues to indicate which cards to play next, using deduction to figure out the contents of teammates' hands, and being careful not to play cards out of order.")
hanabi.q_and_as.create!(question: "Is Hanabi a difficult game to learn?", answer: "Hanabi has simple rules, but can be challenging to master due to the limited information players have and the need for precise communication and deduction.")


forbidden_island = Game.create!(
name: "Forbidden Island",
number_of_players: "2-4",
age_limit: 10,
description: "Forbidden Island is a cooperative board game where players work together to explore an island and collect treasure before it sinks into the sea. Players take on different roles with unique abilities and must work together to keep the island from sinking while completing their objectives.",
rules: "Players take turns moving around the island, collecting treasure and trying to prevent the island from sinking by shoring up flooded tiles. Each player has a unique ability that can help the team achieve their goals. If all the treasure is collected and the players escape before the island sinks, they win the game.",
rate: 4.7,
type: "Cooperation"
)

forbidden_island.game_variants.create!([
  { name: "Standard", link: "https://www.amazon.co.uk/gp/product/B003D7F4YY/ref=s9_acsd_top_hd_bw_b2iGB5S_c_x_w?pf_rd_m=A3P5ROKL5A1OLE&pf_rd_s=merchandised-search-11&pf_rd_r=BXGG8VW47Q2J72FTVGS9&pf_rd_t=101&pf_rd_p=d0dd023c-53e2-5808-8f0c-7d1500d3e3a8&pf_rd_i=465460", price: 19.99 },
  { name: "Special Edition", link: "https://www.amazon.co.uk/gp/product/B0091HFA7A/ref=s9_acsd_top_hd_bw_b2iGB5S_c_x_w?pf_rd_m=A3P5ROKL5A1OLE&pf_rd_s=merchandised-search-11&pf_rd_r=BXGG8VW47Q2J72FTVGS9&pf_rd_t=101&pf_rd_p=d0dd023c-53e2-5808-8f0c-7d1500d3e3a8&pf_rd_i=465460", price: 29.99 }
])

forbidden_island.q_and_as.create!(
  question: "What happens when a tile on Forbidden Island sinks?",
  answer: "When a tile on Forbidden Island sinks, it is removed from the board and players cannot land on it. If a player is on a tile when it sinks, they must move to an adjacent tile or swim to shore if they have the appropriate equipment."
)

forbidden_island.q_and_as.create!(
  question: "What is the Water Meter in Forbidden Island?",
  answer: "The Water Meter in Forbidden Island tracks how quickly the island is sinking. When the Water Meter reaches certain levels, tiles on the board begin to flood and can sink if not shored up by the players."
)

forbidden_island.q_and_as.create!(
  question: "What happens if the players collect all the treasure in Forbidden Island?",
  answer: "If the players collect all the treasure in Forbidden Island and make it back to the helicopter landing pad before the island sinks, they win the game. If any player or treasure is left behind when the island sinks, the players lose."
)
forbidden_island.q_and_as.create!(question: "How do players win Forbidden Island?", answer: "Players win Forbidden Island by collecting all four treasure cards and making it to the Fools' Landing helicopter pad to escape the island before it sinks.")
forbidden_island.q_and_as.create!(question: "How do players lose Forbidden Island?", answer: "Players can lose Forbidden Island if any of the following conditions occur: the island sinks before players escape, a player drowns, or a player is unable to draw the necessary number of Flood Cards during the Flood Phase.")
forbidden_island.q_and_as.create!(question: "What are some common strategies in Forbidden Island?", answer: "Common strategies in Forbidden Island include prioritizing the collection of treasure cards for the treasure with the fewest remaining tiles, coordinating moves and actions with other players, and carefully managing the Flood Deck to prevent key tiles from sinking.")
forbidden_island.q_and_as.create!(question: "How does the Flood Deck work in Forbidden Island?", answer: "The Flood Deck in Forbidden Island determines which tiles on the island are flooded each turn. Each Flood Card corresponds to a specific tile on the island, and when a Flood Card is drawn, the corresponding tile is flipped over to its flooded side. If a tile is already flooded, it sinks and is removed from the game.")
forbidden_island.q_and_as.create!(question: "Can players win Forbidden Island without all four treasure cards?", answer: "No, players must collect all four treasure cards and make it to the Fools' Landing helicopter pad to win Forbidden Island.")
forbidden_island.q_and_as.create!(question: "What happens if a player drowns in Forbidden Island?", answer: "If a player drowns in Forbidden Island, they are out of the game and can no longer take actions or make decisions. The remaining players must continue without them.")
forbidden_island.q_and_as.create!(question: "What happens if a tile sinks with a player on it in Forbidden Island?", answer: "If a tile sinks with a player on it in Forbidden Island, the player is immediately moved to the nearest tile that is not flooded or sunk. If there are no safe tiles, the player drowns and is out of the game.")
forbidden_island.q_and_as.create!(question: "How do players move around the island in Forbidden Island?", answer: "Players can move up to three tiles orthogonally or diagonally on their turn. They can also swim or fly to adjacent tiles under certain circumstances.")

spirit_island = Game.create!(
name: "Spirit Island",
number_of_players: "1-4",
age_limit: 13,
description: "Spirit Island is a cooperative strategy game where players take on the roles of powerful spirits working together to defend their island home from colonizing invaders. Each spirit has unique powers and abilities, and players must work together to use them effectively to repel the invaders and save their island.",
rules: "Players take turns performing actions to drive back the invaders and protect the island. Each spirit has unique powers that can be used to create powerful combos with other spirits. As players progress through the game, the invaders become more powerful, so players must work together and use their powers wisely to stay ahead.",
rate: 4.8,
type: "Cooperation"
)

spirit_island.game_variants.create!([
{ name: "Core Game", link: "https://www.amazon.com/Greater-Than-Games-SISL-CORE-Spirit/dp/B06XCXGJM5", price: 79.95 },
{ name: "Branch and Claw Expansion", link: "https://www.amazon.com/Greater-Than-Games-SISL-BC-Spirit/dp/B07664HXJH", price: 39.99 }
])

spirit_island.q_and_as.create!(question: "How many players can play Spirit Island?", answer: "Spirit Island can be played with 1-4 players.")
spirit_island.q_and_as.create!(question: "What is the minimum age requirement for Spirit Island?", answer: "The minimum age requirement for Spirit Island is 13 years old.")
spirit_island.q_and_as.create!(question: "What is the objective of Spirit Island?", answer: "The objective of Spirit Island is to work together with the other players to repel the invading colonizers and protect the island.")
spirit_island.q_and_as.create!(question: "How do players win in Spirit Island?", answer: "Players win in Spirit Island by successfully driving back the colonizers and preventing them from settling the island.")
spirit_island.q_and_as.create!(question: "What is unique about each spirit in Spirit Island?", answer: "Each spirit in Spirit Island has unique powers and abilities that can be used to create powerful combos with other spirits.")
spirit_island.q_and_as.create!(question: "How do players progress through the game in Spirit Island?", answer: "Players progress through the game in Spirit Island by taking turns performing actions to drive back the invaders and protect the island.")
spirit_island.q_and_as.create!(question: "What happens if the colonizers successfully settle the island in Spirit Island?", answer: "If the colonizers successfully settle the island in Spirit Island, the players lose the game.")
spirit_island.q_and_as.create!(question: "How does the game difficulty change as players progress in Spirit Island?", answer: "The game difficulty in Spirit Island increases as players progress, as the invaders become more powerful and harder to repel. Players must use their powers wisely and work together effectively to stay ahead.")
    
flashpoint = Game.create!(
name: "Flash Point: Fire Rescue",
number_of_players: "1-6",
age_limit: 10,
description: "Flash Point: Fire Rescue is a cooperative board game where players take on the roles of firefighters responding to emergencies and rescuing victims from a burning building. Players must work together to put out fires, remove hazardous materials, and save as many victims as possible before the building collapses.",
rules: "Players take turns moving their firefighters around the building and performing actions such as extinguishing fires, breaking down walls, and treating injured victims. The game features a unique mechanic where fire spreads dynamically based on die rolls and can cause explosive chain reactions. The game can be played with multiple difficulty levels and different maps.",
rate: 4.8,
type: "Cooperation"
)

flashpoint.game_variants.create!([
{ name: "Base Game", link: "https://www.amazon.com/Indie-Boards-and-Cards-Flash/dp/B003HC9734", price: 39.99 },
{ name: "Extreme Danger Expansion", link: "https://www.amazon.com/Flash-Point-Fire-Rescue-Extreme/dp/B00I0GSQ2S", price: 39.99 },
{ name: "2nd Story Expansion", link: "https://www.amazon.com/Flash-Point-Fire-Rescue-Story/dp/B00X9XFT7O", price: 39.99 }
])

flashpoint.q_and_as.create!(question: "How do you win Flash Point: Fire Rescue?", answer: "The goal of the game is to rescue at least 7 victims from the building before it collapses, or to rescue all victims and bring them to the ambulance outside.")
flashpoint.q_and_as.create!(question: "What happens if the building collapses in Flash Point: Fire Rescue?", answer: "If the building collapses, the game ends in a loss for all players. This can happen if too many structural damage markers are placed on the board or if the fire spreads out of control.")
flashpoint.q_and_as.create!(question: "What actions can players take in Flash Point: Fire Rescue?", answer: "Players can take actions such as extinguishing fires, breaking down walls, treating injured victims, and moving around the board. Each firefighter has a limited number of action points per turn.")
flashpoint.q_and_as.create!(question: "Can players revive dead victims in Flash Point: Fire Rescue?", answer: "No, once a victim dies, they are removed from the board and cannot be revived. Players must prioritize rescuing victims who are still alive.")
flashpoint.q_and_as.create!(question: "How does fire spread in Flash Point: Fire Rescue?", answer: "Fire spreads based on die rolls and can spread to adjacent rooms and cause explosive chain reactions. Smoke and hot spots can also spread and hinder player movement and actions.")
flashpoint.q_and_as.create!(question: "Can players customize the difficulty level in Flash Point: Fire Rescue?", answer: "Yes, the game includes multiple difficulty levels and can also be played with different maps and expansions to increase the challenge.")
flashpoint.q_and_as.create!(question: "What is the age limit for Flash Point: Fire Rescue?", answer: "The game is recommended for ages 10 and up, but younger players can also enjoy playing with adult supervision and guidance.")

carcassonne = Game.create!(
name: "Carcassonne",
number_of_players: "2-5",
age_limit: 7,
description: "Carcassonne is a tile-based Euro board game where players take turns placing tiles to build cities, roads, and other structures. Players also place meeples on these structures to claim ownership and score points. The game is won by the player with the most points at the end of the game.",
rules: "Players take turns drawing and placing tiles on the board, building cities, roads, and other structures. When a structure is completed, players with meeples on that structure score points. Meeples can also be placed as farmers to claim ownership of the surrounding land. At the end of the game, players score points for completed structures, incomplete structures, and farmland.",
rate: 4.7,
type: "Euro"
)

carcassonne.game_variants.create!([
{ name: "Base Game", link: "https://www.amazon.com/Z-Man-Games-ZM7810-Carcassonne/dp/B00005UNAX/", price: 34.99 },
{ name: "Big Box", link: "https://www.amazon.com/Carcassonne-Big-Box-2017-Board/dp/B06XWZNPW5/", price: 99.99 }
])

carcassonne.q_and_as.create!(question: "How do I score points in Carcassonne?", answer: "You can score points in Carcassonne by placing meeples on completed structures such as cities, roads, and monasteries. You can also score points for incomplete structures and farmland at the end of the game.")
carcassonne.q_and_as.create!(question: "Can I place a meeple on an incomplete structure in Carcassonne?", answer: "Yes, you can place a meeple on an incomplete structure in Carcassonne, and it will stay there until the structure is completed or the game ends.")
carcassonne.q_and_as.create!(question: "Can I place a meeple on another player's structure in Carcassonne?", answer: "No, you can only place a meeple on a structure that you have just placed a tile on.")
carcassonne.q_and_as.create!(question: "How does farmland work in Carcassonne?", answer: "Farmland is the green area surrounding cities and roads. Farmers are placed on farmland to claim ownership, and at the end of the game, players score points based on the number of completed cities that their farmers are adjacent to.")
carcassonne.q_and_as.create!(question: "How do I determine the starting player in Carcassonne?", answer: "The starting player in Carcassonne is determined by shuffling the tiles and drawing one at random. The player who draws the tile with the symbol of a starting meeple goes first.")
carcassonne.q_and_as.create!(question: "Can I move a meeple from one structure to another in Carcassonne?", answer: "No, once a meeple is placed on a structure, it remains there until the structure is completed or the game ends.")
carcassonne.q_and_as.create!(question: "How do I win in Carcassonne?", answer: "The game is won by the player with the most points at the end of the game, which is triggered when all tiles have been placed on the board.")


agricola = Game.create!(
  name: "Agricola",
  number_of_players: "1-4",
  age_limit: 12,
  description: "In Agricola, players take on the role of a farmer, building and improving their farm, growing crops, and raising animals. Over the course of the game, players must balance their resources and time to expand their farm and score the most points.",
  rules: "Players start the game with a small farm and a few resources. Each round, players take turns choosing actions to improve their farm, such as gathering resources, building fences, and expanding their house. Players must also feed their family each round, or suffer a penalty. The game lasts for 14 rounds, after which players tally up their points to determine the winner.",
  rate: 4.6,
  type: "Euro"
)

agricola.game_variants.create!([
  { name: "Revised Edition", link: "https://www.amazon.com/Mayfair-Games-MFG3515-Agricola/dp/B077KVRM87/", price: 54.99 },
  { name: "Family Edition", link: "https://www.amazon.com/Mayfair-Games-MFG3505-Family-Agricola/dp/B00KXDA2S8/", price: 39.99 }
])

agricola.q_and_as.create!(
  question: "What is the goal of Agricola?",
  answer: "The goal of Agricola is to build the most successful and prosperous farm, while feeding your family and raising animals. At the end of the game, players tally up their points to determine the winner."
)

agricola.q_and_as.create!(
  question: "What are some common strategies in Agricola?",
  answer: "Common strategies in Agricola include building a diversified farm that can produce a variety of goods, focusing on specific types of crops or animals, and maximizing your actions each round to make the most efficient use of your time."
)

agricola.q_and_as.create!(
  question: "How do I gather resources in Agricola?",
  answer: "Players can gather resources in Agricola by choosing the 'Take' action, which allows them to collect resources such as wood, clay, and stone. Some resources can also be gained by building certain structures or raising certain animals."
)

agricola.q_and_as.create!(
  question: "What happens if I can't feed my family in Agricola?",
  answer: "If you can't feed your family in Agricola, you must take a Begging card, which is worth negative points at the end of the game. It's important to plan ahead and make sure you have enough food to feed your family each round."
)

agricola.q_and_as.create!(
  question: "Can I play Agricola with more than four players?",
  answer: "Agricola is designed for 1-4 players. However, there are some fan-made variants that allow for more players. Keep in mind that adding more players may increase the length of the game and make it more challenging to gather resources."
)

agricola.q_and_as.create!(
  question: "What are some expansions for Agricola?",
  answer: "There are several expansions for Agricola that add new cards, actions, and gameplay elements. Some popular expansions include Farmers of the Moor, which adds a new 'Heating' mechanic and new resource types, and the World Championship Deck, which includes winning decks from international Agricola tournaments."
)


puerto_rico = Game.create!(
  name: "Puerto Rico",
  number_of_players: "2-5",
  age_limit: 12,
  description: "Puerto Rico is a strategic board game where players take on the roles of colonial governors on the island of Puerto Rico. The goal of the game is to amass wealth and power by growing crops, constructing buildings, and shipping goods back to Europe.",
  rules: "Players take turns selecting roles, such as Builder or Trader, which give them unique abilities and bonuses. They then use these abilities to construct buildings, grow crops, and ship goods. The player with the most victory points at the end of the game wins.",
  rate: 4.5,
  type: "Euro"
)

puerto_rico.game_variants.create!([
  { name: "Standard", link: "https://www.amazon.com/Rio-Grande-Games-RGG195-Puerto/dp/B00008URUS", price: 36.99 },
  { name: "Deluxe", link: "https://www.amazon.com/Rio-Grande-Games-Puerto-Rico/dp/B07JMFNNWM", price: 114.95 }
])

puerto_rico.q_and_as.create!(
  question: "How many players can play Puerto Rico?",
  answer: "Puerto Rico is designed for 2-5 players."
)

puerto_rico.q_and_as.create!(
  question: "What is the objective of Puerto Rico?",
  answer: "The objective of Puerto Rico is to amass the most victory points by constructing buildings, growing crops, and shipping goods."
)

puerto_rico.q_and_as.create!(
  question: "What are the different roles in Puerto Rico?",
  answer: "Some of the different roles in Puerto Rico include Builder, Trader, and Mayor. Each role gives the player unique abilities and bonuses."
)

puerto_rico.q_and_as.create!(
  question: "How long does a game of Puerto Rico typically last?",
  answer: "A game of Puerto Rico typically lasts around 90-120 minutes, depending on the number of players and their experience level."
)

puerto_rico.q_and_as.create!(
  question: "What is the age limit for Puerto Rico?",
  answer: "The age limit for Puerto Rico is 12+."
)

clank = Game.create!(
name: "Clank!",
number_of_players: "2-4",
age_limit: 12,
description: "Clank! is a deck-building adventure board game where players take on the role of daring thieves venturing into a dangerous dungeon to steal treasure. Players must build their decks by acquiring new cards and managing their resources, all while avoiding detection by the dragon who guards the treasure hoard.",
rules: "Players start with a small deck of cards and use them to move around the dungeon, acquire new cards, and defeat monsters. Each player must also manage their Clank! meter, which fills up as they make noise and can alert the dragon. If a player is knocked out or gets trapped in the dungeon, they are out of the game. The game ends when a player successfully escapes the dungeon with a treasure and the most victory points.",
rate: 4.7,
type: "Deck-building"
)

clank.game_variants.create!([
{ name: "Base game", link: "https://www.amazon.com/Renegade-Game-Studios-Clank-Board/dp/B01HSIWH58", price: 51.24 },
{ name: "Sunken Treasures Expansion", link: "https://www.amazon.com/Clank-Sunken-Treasures-Expansion-Board/dp/B071D1JXTL", price: 31.23 }
])

clank.q_and_as.create!(question: "How do I win Clank!?", answer: "To win Clank!, you must successfully escape the dungeon with a treasure and the most victory points.")
clank.q_and_as.create!(question: "What is the Clank! meter in Clank!?", answer: "The Clank! meter in Clank! measures the amount of noise you make as you move around the dungeon. The more noise you make, the higher your Clank! meter gets, which can attract the dragon and make it more likely that you will be knocked out or trapped in the dungeon.")
clank.q_and_as.create!(question: "How do I acquire new cards in Clank!?", answer: "You can acquire new cards in Clank! by spending the appropriate resources to buy them from the game board or by defeating monsters.")
clank.q_and_as.create!(question: "How does combat work in Clank!?", answer: "Combat in Clank! is resolved using the attack values on your cards. When you attack a monster, you roll a number of dice equal to your total attack value, and if you roll high enough, you defeat the monster and gain any rewards associated with it.")
clank.q_and_as.create!(question: "Can I attack other players in Clank!?", answer: "No, you cannot attack other players in Clank!. However, you can use cards and other strategies to hinder their progress and increase their Clank! meter.")
clank.q_and_as.create!(question: "What happens if I get knocked out in Clank!?", answer: "If you get knocked out in Clank!, you are out of the game. Your cards and any treasures you have acquired are left in the dungeon for other players to potentially acquire.")
clank.q_and_as.create!(question: "Can I play Clank! with more than 4 players?", answer: "No, Clank! is designed for 2-4 players and does not have official rules for more players. However, there are some fan-made variants available online for playing with larger groups.")


aeons_end = Game.create!(
  name: "Aeon's End",
  number_of_players: "1-4",
  age_limit: 14,
  description: "Aeon's End is a cooperative deck-building game where players take on the role of mages fighting to save the last bastion of humanity from the monstrous Nameless. Players must build their decks and work together to defend Gravehold from the Nameless assault.",
  rules: "Players take turns using cards from their decks to cast spells, gain resources, and prepare for upcoming battles. The Nameless minions attack Gravehold each turn, and players must work together to stop them. Players can purchase new cards to add to their decks and improve their chances of victory.",
  rate: 4.8,
  type: "Deck-building"
)

aeons_end.game_variants.create!([
  { name: "Base Game", link: "https://www.amazon.com/Indie-Boards-Cards-Aeons-End/dp/B01D4NQP0M", price: 44.99 },
  { name: "The New Age Expansion", link: "https://www.amazon.com/Indie-Boards-Cards-Aeons-End/dp/B07SQJ21G9", price: 49.95 },
  { name: "The Outer Dark Expansion", link: "https://www.amazon.com/Indie-Boards-Cards-Aeons-Outer/dp/B08DDGKQ5L", price: 39.99 }
])

aeons_end.q_and_as.create!(question: "How do I win Aeon's End?", answer: "The goal of Aeon's End is to defeat the nemesis before it destroys Gravehold. Each nemesis has its own unique win condition that players must prevent in order to win the game.")
aeons_end.q_and_as.create!(question: "What is a nemesis in Aeon's End?", answer: "A nemesis in Aeon's End is a powerful monster that players must defeat in order to win the game. Each nemesis has its own unique abilities and win conditions.")
aeons_end.q_and_as.create!(question: "How do I build my deck in Aeon's End?", answer: "Players can purchase new cards to add to their decks by spending aether, which is gained through certain cards or abilities. Players can choose which cards to purchase and add to their deck based on their strategy and the situation.")
aeons_end.q_and_as.create!(question: "How do I cast spells in Aeon's End?", answer: "Players cast spells in Aeon's End by using cards from their hand. Each card has a specific effect, such as dealing damage to a nemesis or gaining aether.")
aeons_end.q_and_as.create!(question: "What is Gravehold in Aeon's End?", answer: "Gravehold is the last bastion of humanity in the world of Aeon's End. Players must defend Gravehold from the Nameless assault in order to win the game.")
aeons_end.q_and_as.create!(question: "Can I play Aeon's End solo?", answer: "Yes, Aeon's End can be played solo or with up to four players.")
aeons_end.q_and_as.create!(question: "How long does a game of Aeon's End usually take?", answer: "A game of Aeon's End usually takes around 60-90 minutes to play, depending on the number of players and the nemesis being faced.")

marvel = Game.create!(
name: "Marvel Legendary",
number_of_players: "1-5",
age_limit: 14,
description: "Marvel Legendary is a deck-building game where players take on the roles of Marvel superheroes and work together to defeat a mastermind and their evil schemes. Players build their decks by acquiring cards from the game's various expansions and use them to fight off villains, recruit new heroes, and complete objectives.",
rules: "Players start the game with a small deck of basic cards and gradually add more powerful cards as they play. Each turn, players use their cards to defeat villains and gain victory points, which can be used to buy new cards from the game's marketplace. As players progress through the game, they will face tougher challenges and eventually confront the mastermind behind the villainous plot.",
rate: 4.8,
type: "Deck-building"
)

marvel.game_variants.create!([
{ name: "Core Set", link: "https://www.amazon.com/Marvel-Legendary-Core-Set-Board/dp/B07C44K31D/ref=sr_1_1?dchild=1&keywords=marvel+legendary&qid=1648399902&s=toys-and-games&sr=1-1", price: 59.99 },
{ name: "World War Hulk Expansion", link: "https://www.amazon.com/Marvel-Legendary-World-Expansion-Board/dp/B07YX9FZY8/ref=sr_1_3?dchild=1&keywords=marvel+legendary&qid=1648399902&s=toys-and-games&sr=1-3", price: 39.99 }
])

marvel.q_and_as.create!(question: "How do I win Marvel Legendary?", answer: "The goal of Marvel Legendary varies depending on the scenario you are playing. In general, players need to work together to defeat a mastermind and their evil scheme.")
marvel.q_and_as.create!(question: "How do I acquire new cards in Marvel Legendary?", answer: "Players can acquire new cards in Marvel Legendary by using their victory points to buy them from the game's marketplace.")
marvel.q_and_as.create!(question: "Can I play Marvel Legendary solo?", answer: "Yes, Marvel Legendary can be played solo or with up to 5 players.")
marvel.q_and_as.create!(question: "How do I build my deck in Marvel Legendary?", answer: "Players start the game with a small deck of basic cards and gradually add more powerful cards as they play. They can acquire new cards from the game's marketplace by using their victory points.")
marvel.q_and_as.create!(question: "Are there different difficulty levels in Marvel Legendary?", answer: "Yes, Marvel Legendary has different difficulty levels that can be adjusted depending on the players' experience and skill level.")
marvel.q_and_as.create!(question: "Are there different scenarios in Marvel Legendary?", answer: "Yes, Marvel Legendary has different scenarios that can be played with different combinations of heroes, villains, and masterminds, offering a variety of gameplay experiences.")
marvel.q_and_as.create!(question: "Can I mix and match expansions in Marvel Legendary?", answer: "Yes, Marvel Legendary is designed to be highly customizable, and players can mix and match expansions to create their own unique gameplay experiences.")

star_realms = Game.create!(
  name: "Star Realms",
  number_of_players: "2",
  age_limit: 12,
  description: "Star Realms is a fast-paced deckbuilding game in which two players compete to build the most powerful space fleet. Players start with identical decks of cards and use them to purchase new ships and bases from a common pool. They then use these cards to attack their opponent and defend their own bases, with the goal of reducing their opponent's authority to zero.",
  rules: "Players start the game with a deck of basic cards that allow them to generate trade or combat points. Each turn, they draw five cards from their deck and use them to generate more trade or combat points, which they can then use to acquire new cards from a shared central pool. The game continues until one player's authority is reduced to zero, at which point the other player wins.",
  rate: 4.7,
  type: "Deck-building"
)

star_realms.game_variants.create!([
  { name: "Base game", link: "https://www.amazon.com/Star-Realms-Deckbuilding-Game/dp/B00HRGMPIU/", price: 14.95 },
  { name: "Crisis Expansion", link: "https://www.amazon.com/Star-Realms-Crisis-Expansion-Deckbuilding/dp/B00RZT6YCO/", price: 15.99 },
  { name: "United Expansion", link: "https://www.amazon.com/Star-Realms-United-Deckbuilding-Game/dp/B00TQ5SEAI/", price: 11.99 }
])

star_realms.q_and_as.create!(question: "How many cards are in a player's starting deck in Star Realms?", answer: "Each player starts with a deck of 8 cards: 2 scouts and 2 vipers, which generate trade and combat points respectively.")
star_realms.q_and_as.create!(question: "Can I play Star Realms with more than two players?", answer: "While the base game of Star Realms is designed for 2 players, there are team and multiplayer formats that allow for more players.")
star_realms.q_and_as.create!(question: "What are some common strategies in Star Realms?", answer: "Common strategies in Star Realms include focusing on trade-heavy cards to quickly acquire powerful cards, building up a strong defense with bases, and targeting your opponent's authority early and often.")
star_realms.q_and_as.create!(question: "How do I know when the game ends in Star Realms?", answer: "The game ends when one player's authority is reduced to zero, at which point the other player wins.")
star_realms.q_and_as.create!(question: "Can I play Star Realms with just the base game, or do I need expansions?", answer: "The base game of Star Realms is a complete game in itself, but expansions can add new cards and mechanics to the game, as well as allowing for more players.")
star_realms.q_and_as.create!(question: "Do I have to shuffle my discard pile before drawing a new hand in Star Realms?", answer: "No, you do not shuffle your discard pile in Star Realms. Instead, when you run out of cards in your draw deck, you simply shuffle your discard pile to create a new deck.")


  cah = Game.create!(
    name: "Cards Against Humanity",
    number_of_players: "4-20+",
    age_limit: 17,
    description: "Cards Against Humanity is a party game where players take turns being the 'Card Czar' and selecting a black card with a question or fill-in-the-blank phrase. The other players then select one of their white cards, which have humorous or offensive phrases on them, to answer the question or fill in the blank. The Card Czar selects the funniest or most outrageous answer, and the player who submitted that card earns a point.",
    rules: "At the start of each round, one player is designated as the Card Czar and selects a black card from the deck. The other players then select one of their white cards to answer the question or fill in the blank on the black card. The Card Czar selects the funniest or most outrageous answer, and the player who submitted that card earns a point. Play continues with a new Card Czar each round, and the game ends when a player reaches a predetermined number of points.",
    rate: 4.8,
    type: "Party"
  )
  
  cah.game_variants.create!([
    { name: "Base Set", link: "https://www.amazon.com/Cards-Against-Humanity-LLC-CAHUS/dp/B004S8F7QM", price: 25.00 },
    { name: "Red Box", link: "https://www.amazon.com/Cards-Against-Humanity-Red-Box/dp/B010TU7LPK", price: 20.00 },
    { name: "Blue Box", link: "https://www.amazon.com/Cards-Against-Humanity-Blue-Box/dp/B07G4KQNTQ", price: 20.00 }
  ])
  
  cah.q_and_as.create!(question: "Can Cards Against Humanity be played with just two players?", answer: "Cards Against Humanity is designed to be played with a minimum of three players. With only two players, the game loses some of its competitive and social aspects.")
  cah.q_and_as.create!(question: "Is Cards Against Humanity appropriate for children?", answer: "No, Cards Against Humanity is not appropriate for children. The game contains explicit and offensive content that is not suitable for minors.")
  cah.q_and_as.create!(question: "Can I create my own cards for Cards Against Humanity?", answer: "Yes, Cards Against Humanity provides instructions and resources for creating custom cards on their website.")
  cah.q_and_as.create!(question: "How many cards are in a standard Cards Against Humanity deck?", answer: "A standard Cards Against Humanity deck contains 600 cards: 100 black cards and 500 white cards.")
  cah.q_and_as.create!(question: "Is it possible to win Cards Against Humanity without submitting a funny or offensive answer?", answer: "No, in Cards Against Humanity the Card Czar selects the funniest or most outrageous answer, so players must submit a card that they think will be chosen in order to earn a point.")
  cah.q_and_as.create!(question: "Can I mix cards from different editions of Cards Against Humanity?", answer: "Yes, Cards Against Humanity cards are compatible across different editions and expansions, so you can mix and match to create your own custom deck.")
  cah.q_and_as.create!(question: "Is there a limit to the number of players that can play Cards Against Humanity?", answer: "No, there is no official limit to the number of players that can play Cards Against Humanity. However, the game is generally recommended for groups of four or more.")

  
  exploding_kittens = Game.create!(
    name: "Exploding Kittens",
    number_of_players: "2-5",
    age_limit: 7,
    description: "Exploding Kittens is a strategic, kitty-powered version of Russian Roulette. Players draw cards until someone draws an Exploding Kitten, at which point they explode, they are out of the game, unless that player has a defuse card, which can defuse the kitten using things like laser pointers, belly rubs, and catnip sandwiches.",
    rules: "At the beginning of the game, players take turns drawing cards from the deck. If they draw an Exploding Kitten card, they must use a Defuse card to prevent themselves from being eliminated from the game. Other cards in the deck can be used to skip turns, force other players to draw additional cards, or peek at the top cards of the deck. The last player standing wins!",
    rate: 4.7,
    type: "Party"
  )
  
  exploding_kittens.game_variants.create!(
    name: "Original Edition",
    link: "https://www.amazon.com/Exploding-Kittens-Card-Game-Explicit/dp/B010TQY7A8/",
    price: 19.99
  )
  
  exploding_kittens.q_and_as.create!(
    question: "How many players can play Exploding Kittens?",
    answer: "Exploding Kittens is designed for 2-5 players."
  )
  
  exploding_kittens.q_and_as.create!(
    question: "What is a Defuse card in Exploding Kittens?",
    answer: "A Defuse card is used to defuse an Exploding Kitten card when a player draws it from the deck. Defuse cards can be played at any time and prevent the player from being eliminated from the game."
  )
  
  exploding_kittens.q_and_as.create!(
    question: "How do I win Exploding Kittens?",
    answer: "The goal of Exploding Kittens is to be the last player standing. Players draw cards from the deck, and if they draw an Exploding Kitten card, they must use a Defuse card to prevent themselves from being eliminated. The last player standing is the winner."
  )
  
  exploding_kittens.q_and_as.create!(
    question: "Can I play Exploding Kittens with younger children?",
    answer: "Exploding Kittens has an age limit of 7 years old, but the game does contain some explicit language and dark humor. It's up to the discretion of the parents or guardians to determine whether the game is appropriate for their children."
  )
  
  exploding_kittens.q_and_as.create!(
    question: "What are some common strategies in Exploding Kittens?",
    answer: "Common strategies in Exploding Kittens include holding on to Defuse cards for as long as possible, using skip cards to force other players to draw additional cards, and trying to predict which cards are left in the deck to avoid drawing an Exploding Kitten."
  )

  
  telestrations = Game.create!(
  name: "Telestrations",
  number_of_players: "4-8",
  age_limit: 12,
  description: "Telestrations is a party game that combines drawing and guessing. Players take turns drawing a word or phrase on a sketchpad, passing it to the next player, who then tries to guess what the previous player drew. The game continues until everyone has had a turn, and the final sketchpads are compared to see how the word or phrase evolved throughout the game.",
  rules: "At the beginning of each round, each player is given a sketchpad and a secret word or phrase to draw. Once everyone has completed their drawing, the sketchpads are passed to the player on their left. The next player must then look at the previous player's drawing and write down what they think the word or phrase is. The sketchpad is then passed to the left again, and the next player must draw what the previous player wrote. This continues until all players have had a turn, and the sketchpads are compared to see how the word or phrase evolved throughout the game.",
  rate: 4.8,
  type: "Party"
)

telestrations.game_variants.create!([
  { name: "Original", link: "https://www.amazon.com/Telestrations-USAopoly-000-00029-Original-8-Player/dp/B001SN8GF4", price: 29.99 },
  { name: "After Dark", link: "https://www.amazon.com/Telestrations-After-Dark-Board-Game/dp/B00VJKT3SG", price: 25.99 }
])

telestrations.q_and_as.create!(question: "How long does a game of Telestrations usually last?", answer: "A game of Telestrations typically lasts around 30 minutes to an hour, depending on the number of players.")
telestrations.q_and_as.create!(question: "Can you play Telestrations with more than 8 players?", answer: "While the game is designed for 4-8 players, you can purchase additional sketchpads and pens to accommodate more players.")
telestrations.q_and_as.create!(question: "Is Telestrations appropriate for kids?", answer: "Yes, Telestrations is appropriate for kids ages 12 and up, as long as they can read and write.")
telestrations.q_and_as.create!(question: "Do you have to be a good artist to play Telestrations?", answer: "No, you do not have to be a good artist to play Telestrations. In fact, some of the funniest moments in the game come from players' inability to draw well.")
telestrations.q_and_as.create!(question: "What happens if a player cannot guess what the previous player drew?", answer: "If a player cannot guess what the previous player drew, they can pass the sketchpad to the next player without writing anything. The game continues as normal from there.")
telestrations.q_and_as.create!(question: "Can you use your own words or phrases in Telestrations?", answer: "Yes, you can use your own words or phrases in Telestrations. You can also purchase additional word packs to add more variety to the game.")
telestrations.q_and_as.create!(question: "How do you determine the winner of Telestrations?", answer: "Telestrations is not really a competitive game, and there is no clear winner or loser. The fun is in seeing how the word or phrase evolves throughout the game.")




  what_do_you_meme = Game.create!(
    name: "What Do You Meme?",
    number_of_players: "3-20",
    age_limit: 17,
    description: "What Do You Meme? is a party game where players create funny memes using caption cards and photo cards. Each round, a new player becomes the judge, and the other players compete to create the funniest meme. The judge selects the winner, and the game continues with a new judge in the next round.",
    rules: "At the beginning of each round, the judge draws a photo card and places it face up on the table. Then, the other players choose one of their caption cards to pair with the photo and create a meme. The judge selects the funniest meme, and the player who submitted the winning caption card earns a point. The first player to earn a certain number of points wins the game.",
    rate: 4.7,
    type: "Party"
  )
  
  what_do_you_meme.game_variants.create!([
    { name: "Core Game", link: "https://www.amazon.com/WHAT-DO-YOU-MEME-Game/dp/B01MRG7T0D", price: 29.99 },
    { name: "Millennial Expansion Pack", link: "https://www.amazon.com/WHAT-DO-YOU-MEME-Millennial-Expansion/dp/B06XV27BP4", price: 12.99 },
    { name: "Fresh Memes Expansion Pack", link: "https://www.amazon.com/WHAT-DO-YOU-MEME-Fresh/dp/B07WFJNHHN", price: 12.99 }
  ])
  
  what_do_you_meme.q_and_as.create!(
    question: "How many players can play What Do You Meme?",
    answer: "What Do You Meme can be played with 3-20 players."
  )
  what_do_you_meme.q_and_as.create!(
    question: "What is the age limit for What Do You Meme?",
    answer: "The age limit for What Do You Meme is 17 years old."
  )
  what_do_you_meme.q_and_as.create!(
    question: "How do you win What Do You Meme?",
    answer: "To win What Do You Meme, you need to earn a certain number of points. Players earn points by submitting the funniest caption card in each round, as judged by the current round's judge."
  )
  what_do_you_meme.q_and_as.create!(
    question: "What is the core gameplay of What Do You Meme?",
    answer: "The core gameplay of What Do You Meme involves players creating memes using caption cards and photo cards. Each round, a new player becomes the judge and selects the funniest meme created by the other players."
  )
  what_do_you_meme.q_and_as.create!(
    question: "What are some of the expansion packs available for What Do You Meme?",
    answer: "Some of the expansion packs available for What Do You Meme include the Millennial Expansion Pack and the Fresh Memes Expansion Pack. These expansion packs add new caption cards and photo cards to the game."
  )
  what_do_you_meme.q_and_as.create!(
    question: "How long does a typical game of What Do You Meme last?",
    answer: "A typical game of What Do You Meme lasts around 30-90 minutes, depending on the number of players and the pace of the game."
  )
  
  dixit = Game.create!(
  name: "Dixit",
  number_of_players: "3-6",
  age_limit: 8,
  description: "Dixit is a storytelling game where players take turns being the storyteller and giving a clue related to a chosen card. The other players then choose a card from their hand that best matches the clue, and the goal is to guess which card belongs to the storyteller without making it too easy for everyone else.",
  rules: "Each round, one player becomes the storyteller and chooses a card from their hand. They then give a clue that can be a word, phrase, or even a sound or gesture. The other players choose a card from their own hand that they think best matches the clue and submit it anonymously. The cards are then shuffled and revealed, and players take turns guessing which card belongs to the storyteller. The goal is to choose a card that is not too obvious or too obscure, as points are awarded based on how many players correctly guess the storyteller's card.",
  rate: 4.7,
  type: "Party and Humor"
)

dixit.game_variants.create!([
  { name: "Base Game", link: "https://www.amazon.com/Libellud-Dixit-Board-Game/dp/B001O2S0VC/", price: 34.99 },
  { name: "Harmonies Expansion", link: "https://www.amazon.com/Dixit-Harmonies-Expansion-Board-Game/dp/B06ZYQ2X9N/", price: 25.00 },
  { name: "Daydreams Expansion", link: "https://www.amazon.com/Dixit-Daydreams-Expansion-Board-Game/dp/B006LWJ8EA/", price: 29.99 }
])

dixit.q_and_as.create!(
  question: "How many cards are in a player's hand in Dixit?",
  answer: "Each player starts with six cards in their hand in Dixit."
)

dixit.q_and_as.create!(
  question: "Can you use a made-up word as a clue in Dixit?",
  answer: "Yes, you can use any word, phrase, sound, or gesture you like as a clue in Dixit."
)

dixit.q_and_as.create!(
  question: "What happens if everyone guesses the storyteller's card in Dixit?",
  answer: "If everyone guesses the storyteller's card in Dixit, then they all receive two points and the storyteller receives no points."
)

dixit.q_and_as.create!(
  question: "Can you vote for your own card in Dixit?",
  answer: "No, you cannot vote for your own card in Dixit."
)

dixit.q_and_as.create!(
  question: "Is there a limit to how many points you can score in a round of Dixit?",
  answer: "No, there is no limit to how many points you can score in a round of Dixit."
)

dixit.q_and_as.create!(
  question: "Can you play Dixit with more than six players?",
  answer: "No, Dixit is designed for three to six players."
)
