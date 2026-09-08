<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmed</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>✅ Booking Confirmed!</h1>
    </header>
    <main>
        <p>Thank you, <strong>${booking.customerName}</strong>!</p>
        <p>Booking ID: <strong>${booking.bookingId}</strong></p>
        <p>Movie: ${booking.movie.title} (${booking.movie.showTime})</p>
        <p>Seats Booked: ${booking.numberOfSeats}</p>
        <p>Total Amount: ₹${booking.totalAmount}</p>
        <a class="btn" href="movies">Book Another Movie</a>
        <a class="btn" href="index.jsp">Back to Home</a>
    </main>
</body>
</html>
