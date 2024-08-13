package com.example.quest.controller;
import com.example.quest.entity.Question;
import com.example.quest.repository.BaseQuest;
import com.example.quest.repository.EmptyQuest;
import com.example.quest.repository.PrisonQuest;
import com.example.quest.repository.UFOQuest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
    private static final Logger LOGGER = LoggerFactory.getLogger(QuestServlet.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        LOGGER.debug("Path = {}",req.getRequestURI());

        BaseQuest quest = switch (req.getPathInfo()) {
            case "/UFOQuest" ->  new UFOQuest();
            case "/PrisonQuest" ->  new PrisonQuest();
            case "/EmptyQuest" ->  new EmptyQuest();
            default -> null;
        };

        try {
            quest.initQuest();
            LOGGER.info("Quest [{}] initialized", quest.getClass().getSimpleName());
        } catch (Exception e) {
            LOGGER.error("Error during Quest initialization. link={}, quest={}", req.getRequestURI(), quest);
            throw new RuntimeException("Quest isn't initialized");
        }
        session.setAttribute("quest",quest);

        int currentQuestionIndex = 0;
        Question question = quest.getQuestions().get(currentQuestionIndex);

        req.setAttribute("question",question);
        req.setAttribute("currentQuestionIndex",currentQuestionIndex);

        getServletContext().getRequestDispatcher("/quest_page.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        int optradio = Integer.parseInt(req.getParameter("optradio"));
        int currentQuestionIndex = Integer.parseInt(req.getParameter("currentQuestionIndex"));
        BaseQuest quest = (BaseQuest) session.getAttribute("quest");
        Question question = quest.getQuestions().get(currentQuestionIndex);
        LOGGER.debug("Question #{}: User answer={}, right answer={}", currentQuestionIndex, optradio, question.getCorrectOption());

        currentQuestionIndex++;

        boolean isWrongAnswer = checkIfWrongAnswer(optradio, question);
        boolean isLastQuestion = checkIfLastQuestion(currentQuestionIndex, quest);


        if (isWrongAnswer || isLastQuestion) {
            req.setAttribute("isWrongAnswer", isWrongAnswer);
            req.setAttribute("question",question);
            LOGGER.debug("Redirect to result page: isWrongAnswer={}, isLastQuestion={}", isWrongAnswer, isLastQuestion);
            getServletContext().getRequestDispatcher("/result.jsp").forward(req,resp);
            return;
        }

        req.setAttribute("question", quest.getQuestions().get(currentQuestionIndex));
        req.setAttribute("currentQuestionIndex", currentQuestionIndex);

        getServletContext().getRequestDispatcher("/quest_page.jsp").forward(req,resp);

    }
}
