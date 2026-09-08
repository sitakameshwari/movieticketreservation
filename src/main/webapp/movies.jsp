<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Now Showing</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Now Showing</h1>
        <a class="btn" href="index.jsp">Home</a>
    </header>
    <main>
        <div class="movie-grid">
            <c:forEach var="movie" items="${movies}">
                <div class="movie-card">
                    <h3><c:out value="${movie.title}"/></h3>
                    <p class="category"><c:out value="${movie.genre}"/> | <c:out value="${movie.language}"/></p>
                    <p>Show Time: <c:out value="${movie.showTime}"/></p>
                    <p class="price">₹<c:out value="${movie.ticketPrice}"/> / seat</p>
                    <p>
                        <c:choose>
                            <c:when test="${movie.totalSeats > 0}">
                                <c:out value="${movie.totalSeats}"/> seats available
                            </c:when>
                            <c:otherwise>
                                <span class="sold-out">Sold Out</span>
                            </c:otherwise>
                        </c:choose>
                    </p>
                    <c:if test="${movie.totalSeats > 0}">
                        <a class="btn" href="book?id=${movie.id}">Book Now</a>
                    </c:if>
                </div>
            </c:forEach>
        </div>
    </main>
</body>
</html>
