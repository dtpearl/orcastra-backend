Users
  name: text
  email: text
  password_digest: text

belongs_to: Games

##############

Games
  name: text
  pin: integer
  # instance_id: integer
  # response_id: integer
  # player_id: integer

has_many: Instances
has_many: Responses
has_many: Players

##############

Deck
  game_id: integer
  card_id: integer

################

Instances
  card: text
  category: text
  rating: boolean

belongs_to: Games

##############

Responses
  card: text
  category: text
  rating: boolean

belongs_to: Games

##############

Players
  game_id: integer
  nickname: text

belongs_to: Games

##############

Status
  game_id: integer
  instance_id: integer
  response_id: integer
  player_id: integer

Rounds
