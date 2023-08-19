from brain_games.cli_dialog import compare_answers, get_user_answer
import random

min_start_number, max_start_number = 1, 20
min_step, max_step = 2, 9
min_size, max_size = 5, 10


def guess_progression_turn():
    start_number = random.randint(min_start_number, max_start_number)
    step = random.randint(min_step, max_step)
    size = random.randint(min_size, max_size)
    random_position = random.randint(0, size - 1)

    progression = [start_number + i * step for i in range(0, size)]

    progression_str = progression[:]
    progression_str[random_position] = '..'
    progression_str = ' '.join(map(str, progression_str))

    expected_answer = progression[random_position]
    user_answer = get_user_answer(progression_str, 'number')
    return compare_answers(expected_answer, user_answer)
