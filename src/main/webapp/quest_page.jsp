<%@ page import="com.example.quest.repository.BaseQuest" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html data-bs-theme="dark">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${quest.getQuestName()}</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <link href="/static/css/quest.css" rel="stylesheet"/>
</head>
<body class="d-flex align-items-center bg-body-tertiary">

<div class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-12 col-md-10 col-lg-8">
            <div class="card">
                <div class="card-body">
                    <div class="text-center mb-2">
                        <i class="far fa-file-alt fa-4x mb-3 text-primary"></i>
                        <p><strong>Question ${currentQuestion + 1}</strong></p>
                    </div>

                    <p> ${question.getName()}</p>

                    <hr/>

                    <form class="px-3" method="post" action="/quests/${quest.getClass().getSimpleName()}">
                        <div class="form-check mb-2">
                            <input class="form-check-input" type="radio" name="optradio" id="radio1" value="0"/>${question.getOptions().get(0)}
                            <label class="form-check-label" for="radio1"></label>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="radio" name="optradio" id="radio2" value="1"/>${question.getOptions().get(1)}
                            <label class="form-check-label" for="radio2"></label>
                        </div>
                        <input id="submitBtn" class="btn btn-primary fixed-width-btn" type="submit" value="Далі" disabled>
                        <input type="hidden" name="currentQuestion" value="${currentQuestion}"/>
                    </form>
                    <%
                        BaseQuest quest = (BaseQuest) session.getAttribute("quest");
                        int currentQuestion = (int) request.getAttribute("currentQuestion");
                        int questionsCount = quest.getQuestions().size();
                    %>
                    <div class="mt-5 mb-3">
                        <div class="progress">
                            <div id="progress-bar" class="progress-bar" style="width: <%=100 / questionsCount * currentQuestion%>%">
                                <%=currentQuestion + 1%> of <%=questionsCount%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<script>
    window.onload = function () {
        const progressBar = document.getElementsByClassName('progress-bar')[0];
        const targetWidth = <%=100 / questionsCount * (currentQuestion + 1)%>;

        setTimeout(() => {
            progressBar.style.width = targetWidth + '%';
            progressBar.style.transition = 'width 1s';
        }, 50);
    };


    document.querySelectorAll('.form-check-input').forEach((radio) => {
        radio.addEventListener('change', function () {
            document.getElementById('submitBtn').disabled = false;
        });
    });

</script>

</body>
</html>
