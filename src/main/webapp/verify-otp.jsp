<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% if (session==null || session.getAttribute("resetEmail")==null) {
    response.sendRedirect(request.getContextPath() + "/forgot-password.jsp" ); return; } %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Verify OTP | AceBank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Lora:wght@400;500&display=swap"
            rel="stylesheet">
    <!-- External CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/auth.css">
</head>

<body>
<header class="navbar">
    <h1 class="logo">Ace<span>Bank</span></h1>
    <nav>
        <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
        <a href="${pageContext.request.contextPath}/login.jsp">Login</a>
        <button id="theme-toggle" class="toggle">
            <span class="circle"></span>
        </button>
    </nav>
</header>

<div class="auth-wrapper">
    <main class="auth-card">
        <div class="auth-header">
            <h2>Verify OTP</h2>
            <p>We've sent a 6-digit code to <strong>${sessionScope.resetEmail}</strong>. Enter it below
                to reset your password.</p>
        </div>

        <c:if test="${param.error == 'invalid_otp'}">
            <div style="color: #e57373; text-align: center; margin-bottom: 15px; font-weight: 500;">
                Invalid OTP! Please check your email and try again.
            </div>
        </c:if>
        <c:if test="${param.error == 'password_mismatch'}">
            <div style="color: #e57373; text-align: center; margin-bottom: 15px; font-weight: 500;">
                Passwords do not match!
            </div>
        </c:if>
        <c:if test="${param.error == 'update_failed'}">
            <div style="color: #e57373; text-align: center; margin-bottom: 15px; font-weight: 500;">
                Failed to update password. Please try again later.
            </div>
        </c:if>

        <form action="${pageContext.request.contextPath}/Forgot" method="POST" id="otp-form">
            <input type="hidden" name="action" value="verifyOTP">

            <div class="form-control">
                <label for="otp">One-Time Password (OTP)</label>
                <input type="text" id="otp" name="otp" required placeholder="Enter 6-digit OTP"
                       maxlength="6" autocomplete="off">
            </div>

            <div class="form-control">
                <label for="newPassword">New Password</label>
                <input type="password" id="newPassword" name="newPassword" required minlength="10"
                       title="Password must be at least 10 characters long"
                       placeholder="Enter new password">
            </div>

            <div class="form-control">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required
                       minlength="10" title="Password must be at least 10 characters long"
                       placeholder="Confirm new password">
            </div>

            <div id="error-msg"
                 style="color: #e57373; text-align: center; display: none; margin-bottom: 10px;"></div>

            <button type="submit">Verify and Reset Password</button>
        </form>

        <div class="extra-links">
            Didn't receive code? <a href="${pageContext.request.contextPath}/forgot-password.jsp">Resend
            Email</a>
        </div>
    </main>
</div>

<!-- External JS -->
<script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
<script>
    document.getElementById("otp-form").addEventListener("submit", function (event) {
        var newPass = document.getElementById("newPassword").value;
        var confPass = document.getElementById("confirmPassword").value;
        var errorMsg = document.getElementById("error-msg");

        if (newPass !== confPass) {
            event.preventDefault();
            errorMsg.style.display = "block";
            errorMsg.innerHTML = "New Passwords do not match!";
        } else {
            errorMsg.style.display = "none";
        }
    });
</script>
</body>

</html>