<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html data-bs-theme="dark">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quest</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="static/css/quest.css" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body class="d-flex align-items-center bg-body-tertiary">

<div class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-12 col-md-10 col-lg-8">
            <div class="card">
                <div class="card-body">
                    <div class="text-center mb-2">
                        <i class="far fa-file-alt fa-4x mb-3 text-primary"></i>
                        <p><strong>Question 1:</strong></p>
                    </div>
                    <p>На ваш мобільний телефон надходить новий виклик?</p>

                    <hr/>

                    <form class="px-3" method="post">
                        <div class="form-check mb-2">
                            <input class="form-check-input" type="radio" name="optradio" id="radio1" value="yes"/>Прийняти виклик
                            <label class="form-check-label" for="radio1"></label>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="radio" name="optradio" id="radio2" value="no"/>Відхилити виклик
                            <label class="form-check-label" for="radio2"></label>
                        </div>
                        <input class="btn btn-primary fixed-width-btn" type="submit" value="Далі">
                    </form>

                    <div class="mt-5 mb-3">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100">1 of 3</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
