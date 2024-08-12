package com.example.quest.service;

import com.example.quest.entity.Question;
import com.example.quest.repository.BaseQuest;
import com.example.quest.repository.Quest;

public class QuestService {

    public static boolean checkIfWrongAnswer(int userAnswerQuestion, Question question) {
        return userAnswerQuestion != question.getCorrectOption();
    }

    public static boolean checkIfLastQuestion(int currentQuestion, BaseQuest quest) {
        return currentQuestion >= quest.getQuestions().size();
    }
}
