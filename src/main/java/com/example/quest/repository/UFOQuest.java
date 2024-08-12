package com.example.quest.repository;

import com.example.quest.entity.Question;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;


public class UFOQuest extends BaseQuest {

    @Override
    public void initQuest() {
        questName = "UFO Quest";

        questions.add(new Question(
                "Ви втрачаєте пам'ять. Прийняти виклик?",
                List.of("Прийняти виклик", "Відхилити виклик"),
                0,
                "Ви відхилили виклик. Поразка!",
                ""));
        questions.add(new Question(
                "Ви прийняли виклик. Піднятись на капітанський місток?",
                List.of("Піднятися на місток", "Відмовитись"),
                0,
                "Ви не пішли на переговори. Поразка!",
                ""));
        questions.add(new Question(
                "Ви піднялися на місток. Хто ви?",
                List.of("Розповісти правду", "Збрехати про себе"),
                0,
                "Ваша брехня була викрита. Поразка!",
                "Вас повернули додому. Перемога!"));

    }

}
