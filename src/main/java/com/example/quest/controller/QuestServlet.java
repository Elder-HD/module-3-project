package com.example.quest.controller;
import com.example.quest.entity.Question;
import com.example.quest.repository.BaseQuest;
import com.example.quest.repository.EmptyQuest;
import com.example.quest.repository.PrisonQuest;
import com.example.quest.repository.UFOQuest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static com.example.quest.service.QuestService.*;

@WebServlet(value ="/quests/*")
public class QuestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        BaseQuest quest = null;

        switch (req.getPathInfo()) {
            case "/UFOQuest" -> quest = new UFOQuest();
            case "/PrisonQuest" -> quest = new PrisonQuest();
            case "/EmptyQuest" -> quest = new EmptyQuest();
            default -> getServletContext().getRequestDispatcher("/quest_list.jsp").forward(req,resp);
        }

        quest.initQuest();
        session.setAttribute("quest",quest);

        int currentQuestion = quest.getCurrentQuestion();
        Question question = quest.getQuestions().get(currentQuestion);

        req.setAttribute("question",question);
        req.setAttribute("currentQuestion",currentQuestion);

        getServletContext().getRequestDispatcher("/quest_page.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        int optradio = Integer.parseInt(req.getParameter("optradio"));
        int currentQuestion = Integer.parseInt(req.getParameter("currentQuestion"));
        BaseQuest quest = (BaseQuest) session.getAttribute("quest");
        Question question = quest.getQuestions().get(currentQuestion);

        currentQuestion++;

        boolean isWrongAnswer = checkIfWrongAnswer(optradio, question);
        boolean isLastQuestion = checkIfLastQuestion(currentQuestion, quest);


        if (isWrongAnswer || isLastQuestion) {
            req.setAttribute("isWrongAnswer", isWrongAnswer);
            req.setAttribute("question",question);
            getServletContext().getRequestDispatcher("/result.jsp").forward(req,resp);
        }

        req.setAttribute("currentQuestion", currentQuestion);
        req.setAttribute("question", quest.getQuestions().get(currentQuestion));

        getServletContext().getRequestDispatcher("/quest_page.jsp").forward(req,resp);

    }
}
