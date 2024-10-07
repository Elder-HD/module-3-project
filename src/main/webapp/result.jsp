<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html data-bs-theme="dark">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${quest.getQuestName()}</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body class="d-flex align-items-center bg-body-tertiary">

<div class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-12 col-md-10 col-lg-8">
            <div class="card">
                <div class="text-center card-body">
                    <c:if test="${!isWrongAnswer}">
                        <div class="text-center mb-2">
                            <i class="far fa-face-smile-wink fa-6x mb-3 text-primary"></i>
                            <h1>YOU WIN</h1>
                            <p> ${question.getRightAnswerText()}</p>
                        </div>
                    </c:if>
                    <c:if test="${isWrongAnswer}">
                        <div class="text-center mb-2">
                            <i class="far fa-face-frown fa-6x mb-3 text-primary"></i>
                            <h1>YOU LOSE</h1>
                        </div>
                        <p> ${question.getWrongAnswerText()}</p>
                    </c:if>

                    <a class="btn btn-success m-2 " href="/quests/${quest.getClass().getSimpleName()}">Почати з початку</a>
                    <a class="btn btn-secondary m-2" href="/quests">До списку квестів</a>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
