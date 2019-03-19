# Cards Against Humanity

## A party game for horrible people.

## Contributors
  - Nick (nickec86)
  - Danny (akexinad)
  - Dave (dtpearl)

## Link to the game

The page is hosted [here](https://nickec86.github.io/orcastra_client/) on github.

This web version of Cards Against Humanity uses a React Client and Ruby on Rails Server to recreate the extremely popular, despicable and awkward party game you know and love.

## Acknowledgement
Cards Against Humanity is distributed under a Creative Commons BY-NC-SA 2.0 license. That means you can use and remix the game for free, but you can't sell it without their permission. “Cards Against Humanity” and the CAH logos are trademarks of Cards Against Humanity LLC. [Visit their website](https://cardsagainsthumanity.com/)

## To create this we:

- Designed and implemented a database using Ruby on Rails
- Used JSON data downloaded from [JSON Against Humanity](https://crhallberg.com/cah/) to seed the DB.
- Recreated game play using React.
  - A user can create a game and is given a game pin.
  - Users are tracked through cookies and use the game pin to join a shared game.
  - Each player is dealt 7 'response' cards (The white cards of the original game).
  - An 'instance' card is displayed and players select their 'response'. (A black card)
  - The Master selects a winner from the responses.
  - Game data is tracked and displayed as the game progresses.
- The server is deployed on Heroku and the code for this is on GitHub [here](https://github.com/dtpearl/orcastra-backend)

## This repository is for the Orcastra server:

- It is a Ruby on Rails server that delivers JSON data to the React Client.
- It stores information about cards played in each round and other information relevant to gameplay.

### Interesting learning experiences  

- Using the server as an API for the React client.
- Using CSS animations to add 'pop' to the game experience.

## Future goal/plans

- Add a way to track the winners for a current session and record these on screen.


## Link to the game

The page is hosted [here](https://nickec86.github.io/orcastra_client/) on github.

#### Easter egg

Sneaky Easter Egg - A player that doesn't enter their name will play as 'Bill Murray'
