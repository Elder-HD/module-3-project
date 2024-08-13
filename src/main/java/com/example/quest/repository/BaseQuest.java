package com.example.quest.repository;

import com.example.quest.entity.Question;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public abstract class BaseQuest implements Quest {
    protected String questName;
    protected List<Question> questions = new ArrayList<>();

}
