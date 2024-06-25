<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html data-bs-theme="dark">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="static/css/main.css" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<div class="header-section">
    <h1>ТРОХИ ІСТОРІЇ</h1>
    <a href="${pageContext.request.contextPath}/quest" class="btn btn-primary fixed-width-btn">Читати</a>
</div>

<div class="container mt-4">
    <div class="row align-items-center">
        <div class="col-md-2 order-md-1 text-center">
            <img src="static/img/hello.img" alt="hello.img" class="img-fluid mb-3 mb-md-0"/>
        </div>
        <div class="col-md-8 order-md-2">
            <h3>Lorem ipsum</h3>
            <p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                incididunt ut labore et dolore
                magna aliqua. Nisl pretium fusce id velit ut. </b></p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                incididunt ut labore et dolore
                magna aliqua. Facilisis sed odio morbi quis commodo odio aenean. Tellus elementum sagittis vitae et leo duis
                ut
                diam quam. Viverra vitae congue eu consequat ac felis donec et. In metus vulputate eu scelerisque felis
                imperdiet. Ut placerat orci nulla pellentesque dignissim. Eget est lorem ipsum dolor sit amet consectetur
                adipiscing elit. Eu non diam phasellus vestibulum lorem sed. Facilisis volutpat est velit egestas dui. Sed
                velit
                dignissim sodales ut. Sed adipiscing diam donec adipiscing tristique risus nec feugiat. Purus viverra
                accumsan
                in nisl nisi scelerisque. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Enim nec dui
                nunc
                mattis enim. Lacus viverra vitae congue eu consequat ac felis donec et. Mauris a diam maecenas sed enim ut
                sem
                viverra. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim.</p>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>