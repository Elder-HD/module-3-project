package com.example.quest.repository;

import com.example.quest.entity.Question;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Data
public abstract class BaseQuest implements Quest {
    protected String questName;
    protected List<Question> questions = new ArrayList<>();
    protected int currentQuestion = 0;


    public boolean isQuestEmpty() {
        return questions.isEmpty();
    }




}
