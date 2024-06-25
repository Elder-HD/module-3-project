package com.example.quest.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class Quest {
    private String question;
    private List<String> options;
    private int correctOption;
}
