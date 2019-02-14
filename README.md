# Cards Against Humanity

## A party game for horrible people.

## Link to the game

The page is hosted [here](---- insert link ------) on github.

This web version of Cards Against Humanity uses a React Client and Ruby on Rails Server to recreate the extremely popular, despicable and awkward party game you know and love.

To create this we:

- Designed and implemented a database using Ruby on Rails
- Used JSON data downloaded from [JSON Against Humanity](https://crhallberg.com/cah/) to seed the DB.
- Recreated game play using React.
  - A user can create a game and is given a game pin.
  - Users are tracked through cookies and use the game pin to join a shared game.
  - Each player is dealt 7 'response' cards (The white cards of the original game).
  - An 'instance' card is displayed and players select their 'response'.
  - The CardTsar selects a winner from the responses.
  - Game data is tracked and displayed as the game progresses.
- The server is deployed on Heroku and the code for this is on GitHub [here](https://github.com/dtpearl/orcastra-backend)




### Interesting learning experiences  

- Using the server as an API for the React client.
- Using CSS animations to add 'pop' to the game experience.
-

## Future goal/plans

- Add a way to track the winners for a current session and record these on screen.


## Link to the game

The page is hosted [here](---- insert link ------) on github.

#### Easter egg

Sneaky Easter Egg - A player that doesn't enter their name will play as 'Bill Murray'
