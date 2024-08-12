<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html data-bs-theme="dark">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quests</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="/static/css/quest.css" rel="stylesheet">
<%--    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
</head>
<body class="d-flex align-items-center bg-body-tertiary">
<div class="container">
    <div class="row row-cols-lg-3 row-cols-md-2 row-cols-1  align-middle">
        <div class="col py-4">
            <div class="row row-cols-1 overflow-hidden" style="height: 200px;">
                <img class="img-fluid w-100 h-100" style="object-fit: cover;" src="/static/img/UFO.jpg" alt="Quest_image.png">
            </div>
            <h2>UFO Quest</h2>
            <p>Ви отримуєте загадкове повідомлення з космосу і несподівано втрачаєте пам'ять. Прийнявши виклик, ви стаєте частиною небезпечної космічної пригоди. Кожне ваше рішення може призвести до провалу або доємності. Зможете ви розгадати таємницю та повернутися додому, або ваша місія завершиться поразкою? Ваше виживання залежить від вашої інтуїції і вміння приймати правильні рішення.</p>
            <a class="btn btn-primary" href="/quests/UFOQuest">Start Quest</a>
        </div>
        <div class="col py-4">
            <div class="row row-cols-1 overflow-hidden" style="height: 200px;">
                <img class="img-fluid w-100 h-100" style="object-fit: cover;" src="/static/img/prison.jpg" alt="Quest_image.png">
            </div>
            <h2>Prison Escape</h2>
            <p>Ви прокидаєтесь у темній в'язничній камері без жодної надії на порятунок. Проте, випадкове відкриття прихованого тунелю дає вам шанс на втечу. Ваші рішення будуть визначати вашу долю: чи зможете ви пройти через усі труднощі, уникнути пасток і гвардійців, щоб здобути свободу? Один неправильний крок — і ви опинитеся знову за ґратами або, ще гірше, будете покарані за спробу втечі.</p>
            <a class="btn btn-primary" href="/quests/PrisonQuest">Start Quest</a>
        </div>
        <div class="col py-4">
            <div class="row row-cols-1 overflow-hidden" style="height: 200px;">
                <img class="img-fluid w-100 h-100" style="object-fit: cover;" src="/static/img/QUEST.jpg" alt="Quest_image.png">
            </div>
            <h2>QUEST 3</h2>
            <p>This is a quest description. This quest about bla bla bla bla bla bla. This is a quest description. This quest about bla bla bla bla bla bla</p>
            <a class="btn btn-primary" href="/quests/EmptyQuest">Start Quest</a>
        </div>
    </div>

</div>
</body>
</html>
