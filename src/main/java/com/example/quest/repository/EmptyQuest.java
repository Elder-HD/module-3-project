package com.example.quest.repository;

import com.example.quest.entity.Question;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class EmptyQuest extends BaseQuest {


    @Override
    public void initQuest() {
        questName = "Empty Quest";

        questions.add(new Question(
                "Тут поки що пусто... Повертайтесь пізніше",
                List.of("Обов'язково повернусь","Я подумаю"),
                0,
                "Будемо вам раді :)",
                "Не зволікайте!"));
    }

}
