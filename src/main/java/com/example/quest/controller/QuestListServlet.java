package com.example.quest.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/quests")
public class QuestListServlet extends HttpServlet {
    private static final Logger LOGGER = LoggerFactory.getLogger(QuestListServlet.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info("Generating quest list");
        getServletContext().getRequestDispatcher("/quest_list.jsp").forward(req, resp);
    }
}
