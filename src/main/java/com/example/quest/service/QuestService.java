package com.example.quest.service;

import com.example.quest.entity.Quest;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class QuestService {
    private List<Quest> quests = new ArrayList<>();

    public QuestService() {
        // Додаємо квести вручну
        quests.add(new Quest("На ваш мобільний телефон надходить новий виклик?", Arrays.asList("Прийняти виклик", "Відхилити виклик"), 0));
        // Додаємо інші квести
    }

    public Quest getQuest(int index) {
        return quests.get(index);
    }

    public int getQuestCount() {
        return quests.size();
    }
}
