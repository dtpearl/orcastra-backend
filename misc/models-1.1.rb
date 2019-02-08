User
  name: text

Game
  pin: integer
  name: text
  deck_id: integer
  # sfw: boolean
  user_id: integer
  # rounds: integer

Round
  game_id: integer
  number: integer
  instance_id: integer
  winner_id: integer
  master_id: integer
  winning_card_id: integer

Deck
  name: text
  sfw: boolean

Instance
  card: text
  deck_id: integer

Response
  card: text
  deck_id: integer
