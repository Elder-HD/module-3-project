package com.example.quest.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

@Data
@AllArgsConstructor
@EqualsAndHashCode
public class Question {
    private String name;
    private List<String> options;
    private int correctOption;
    private String wrongAnswerText;
    private String rightAnswerText;

}
