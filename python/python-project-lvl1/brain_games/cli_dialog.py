import prompt


def ask_name():
    print('Welcome to the Brain Games!')
    name = prompt.string('May I have your name? ')
    print('Hello, %s!' % name)
    return name


def get_user_answer(question, answer_type='number'):
    print('Question: %s' % str(question))
    if answer_type == 'number':
        return prompt.integer('Your answer: ')
    else:
        return prompt.string('Your answer: ')


def compare_answers(expected_answer, user_answer):
    return user_answer == expected_answer
