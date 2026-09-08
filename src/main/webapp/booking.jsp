<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Tickets</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Book Tickets: ${movie.title}</h1>
        <a class="btn" href="movies">Back to Movies</a>
    </header>
    <main>
        <c:if test="${not empty errorMessage}">
            <p class="error">${errorMessage}</p>
        </c:if>
        <p>Show Time: ${movie.showTime}</p>
        <p>Price per seat: ₹${movie.ticketPrice}</p>
        <p>Seats available: ${movie.totalSeats}</p>

        <form action="book" method="post">
            <input type="hidden" name="movieId" value="${movie.id}">
            <label>Your Name: <input type="text" name="customerName" required></label><br>
            <label>Number of Seats: <input type="number" name="seats" min="1" max="${movie.totalSeats}" required></label><br>
            <button class="btn" type="submit">Confirm Booking</button>
        </form>
    </main>
</body>
</html>
