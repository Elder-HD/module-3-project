package com.example.quest.service;

import com.example.quest.entity.Question;
import com.example.quest.repository.BaseQuest;

public class QuestService {

    public static boolean checkIfWrongAnswer(int userAnswerQuestion, Question question) {
        return userAnswerQuestion != question.getCorrectOption();
    }

    public static boolean checkIfLastQuestion(int currentQuestionIndex, BaseQuest quest) {
        return currentQuestionIndex >= quest.getQuestions().size();
    }
}

