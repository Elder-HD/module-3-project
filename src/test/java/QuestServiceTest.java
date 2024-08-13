import com.example.quest.entity.Question;
import com.example.quest.repository.BaseQuest;
import com.example.quest.service.QuestService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;


import static org.junit.jupiter.api.Assertions.*;

class QuestServiceTest {

    @Test
    void checkIfWrongAnswer_shouldReturnFalseIfUserWasRight() {
        Question question = new Question();
        question.setCorrectOption(0);
        int userAnswerQuestion = 0;

        boolean expected = false;
        boolean actual = QuestService.checkIfWrongAnswer(userAnswerQuestion, question);
        assertEquals(expected, actual);
    }

    @Test
    void checkIfLastQuestion_shouldReturnTrueIfLastQuestion() {
        Question questionMock = Mockito.mock(Question.class);
        BaseQuest quest = new BaseQuest() {
            @Override
            public void initQuest() {
                questions.add(questionMock);
                questions.add(questionMock);
                questions.add(questionMock);
            }
        };
        int currentQuestionIndex = 2;

        boolean expected = true;
        boolean actual = QuestService.checkIfLastQuestion(currentQuestionIndex, quest);
        assertEquals(expected, actual);

    }
}