package com.example.quest.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@EqualsAndHashCode
@NoArgsConstructor
public class Question {
    private String name;
    private List<String> options;
    private int correctOption;
    private String wrongAnswerText;
    private String rightAnswerText;

}
