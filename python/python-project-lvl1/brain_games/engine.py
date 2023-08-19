from brain_games.cli_dialog import ask_name


def play(make_turn_function, description='', max_turns_count=3):
    user_name = ask_name()
    print(description)
    correct_turns_count = 0
    while correct_turns_count < max_turns_count:
        if make_turn_function():
            print("Correct!")
            correct_turns_count += 1
        else:
            print("Let's try again, %s!" % user_name)
            return False
    print("Congratulations, %s!" % user_name)
