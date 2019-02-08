# USERS ---------
# Users who create account
t.text      :email              # Required
t.text      :password_digest    # Required
t.boolean   :admin              # Required - Default false (backend only)
t.text      :firstname          # Optional
t.text      :lastname           # Optional


# GROUPS --------
# A group is a collection of users who wish to track gameplay
t.text      :name               # Required - Community name e.g. WDi30
t.integer   :creator            # Required - Stores user id for creator of group


# USER/GROUPS
# - A user can belong to many groups
# _ A group can have many users

t.integer   :user_id
t.integer   :group_id


# GAMES
# A user can create a game to be played - as part of a group or anon (e.g. Kahoot)
t.integer   :group_id           # Required unless user is used
t.integer   :user_id            # Required unless group is used
t.text      :game               # Required - user creates game


# QUESTIONS
# Holds image/query which answers can be played to
t.integer   :game_id
t.text      :card               # Required - image/url/question/statement
t.text      :category           # Optional - A game played can be filtered by category - e.g. Trump
t.text      :rating             # Optional - A game played can be filtered by rating - e.g. PG/R


# ANSWERS
# Holds possible solution/answers to 'question card'
t.integer   :game_id
t.text      :card               # Required - possible answers for specified game
t.text      :category           # Optional - A game played can be filtered by category - e.g. Trump
t.text      :rating             # Optional - A game played can be filtered by rating - e.g. PG/R


# STATUS
# Hold game status to keep track of questions/answers played
# This data is temporary and will destroyed once a game has finished/terminated
t.integer   :game_id
t.integer   :question_id
t.integer   :answer_id


# RESULTS ------- Optional
# Keeps track of group results
t.group_id
t.game_id
t.user_id