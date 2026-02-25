<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% if (session==null || session.getAttribute("resetEmail")==null) {
    response.sendRedirect(request.getContextPath() + "/forgot-password.jsp" ); return; } %>
<!DOCTYPE html>
<html class="light" lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Verify OTP | Ace Bank</title>
    <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
    <link
            href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@400;700&amp;family=Playfair+Display:wght@700&amp;display=swap"
            rel="stylesheet" />
    <link
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
            rel="stylesheet" />
    <script id="tailwind-config">
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    colors: {
                        "primary": "#ecb913",
                        "background-light": "#f8f8f6",
                        "background-dark": "#221e10",
                    },
                    fontFamily: {
                        "display": ["Noto Serif", "serif"],
                        "heading": ["Playfair Display", "serif"]
                    },
                    borderRadius: {
                        "DEFAULT": "0.125rem",
                        "lg": "0.25rem",
                        "xl": "0.5rem",
                        "full": "0.75rem"
                    },
                },
            },
        }
    </script>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
</head>

<body
        class="bg-background-light dark:bg-background-dark font-display text-slate-900 dark:text-slate-100 min-h-screen flex flex-col">
<!-- Top Navigation Bar -->
<header
        class="w-full px-6 py-4 flex items-center justify-between border-b border-primary/20 bg-background-light dark:bg-background-dark">
    <div class="flex items-center gap-3">
        <div class="text-primary">
            <span class="material-symbols-outlined text-3xl">account_balance</span>
        </div>
        <h2 class="text-xl font-bold tracking-tight font-heading">Ace Bank</h2>
    </div>
    <div class="flex items-center gap-4">
        <button onclick="toggleTheme()"
                class="flex items-center justify-center rounded-lg bg-primary/10 hover:bg-primary/20 text-primary p-2 transition-colors">
            <span class="material-symbols-outlined dark:hidden">dark_mode</span>
            <span class="material-symbols-outlined hidden dark:block">light_mode</span>
        </button>
        <a href="${pageContext.request.contextPath}/login.jsp"
           class="flex items-center justify-center rounded-lg bg-primary/10 hover:bg-primary/20 text-primary p-2 transition-colors">
            <span class="material-symbols-outlined">shield_lock</span>
        </a>
    </div>
</header>
<!-- Main Content Area -->
<main class="flex-grow flex items-center justify-center px-4 py-12">
    <div
            class="w-full max-w-[450px] bg-white dark:bg-slate-900/50 p-8 rounded shadow-xl border border-primary/10">
        <!-- Branding/Icon -->
        <div class="flex flex-col items-center mb-8">
            <div class="size-16 bg-primary/10 rounded-full flex items-center justify-center mb-6">
                <span class="material-symbols-outlined text-primary text-4xl">password</span>
            </div>
            <h1 class="font-heading text-3xl font-bold text-center mb-3">Verify OTP</h1>
            <p
                    class="text-slate-600 dark:text-slate-400 text-center text-sm leading-relaxed max-w-[320px]">
                We've sent a 6-digit code to <strong>${sessionScope.resetEmail}</strong>. Enter it below
                to reset your password.
            </p>
        </div>

        <c:if test="${param.error == 'invalid_otp'}">
            <div
                    class="bg-red-500/10 text-red-500 text-center p-3 rounded mb-6 text-sm font-medium border border-red-500/20">
                Invalid OTP! Please check your email and try again.
            </div>
        </c:if>
        <c:if test="${param.error == 'password_mismatch'}">
            <div
                    class="bg-red-500/10 text-red-500 text-center p-3 rounded mb-6 text-sm font-medium border border-red-500/20">
                Passwords do not match!
            </div>
        </c:if>
        <c:if test="${param.error == 'update_failed'}">
            <div
                    class="bg-red-500/10 text-red-500 text-center p-3 rounded mb-6 text-sm font-medium border border-red-500/20">
                Failed to update password. Please try again later.
            </div>
        </c:if>
        <c:if test="${param.error == 'otp_expired'}">
            <div
                    class="bg-red-500/10 text-red-500 text-center p-3 rounded mb-6 text-sm font-medium border border-red-500/20">
                Your OTP has expired. Please request a new one.
            </div>
        </c:if>

        <div id="error-msg"
             class="bg-red-500/10 text-red-500 text-center p-3 rounded mb-6 text-sm font-medium border border-red-500/20 hidden">
        </div>

        <!-- Verification Form -->
        <form action="${pageContext.request.contextPath}/Forgot" method="POST" id="otp-form"
              class="space-y-6">
            <input type="hidden" name="action" value="verifyOTP">
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-700 dark:text-slate-300 ml-1" for="otp">
                    One-Time Password (OTP)
                </label>
                <div class="relative">
                                    <span
                                            class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-slate-400 text-xl">
                                        dialpad
                                    </span>
                    <input
                            class="w-full pl-10 pr-4 py-3 bg-background-light dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded focus:ring-2 focus:ring-primary focus:border-primary outline-none transition-all placeholder:text-slate-400"
                            id="otp" name="otp" required placeholder="Enter 6-digit OTP" maxlength="6"
                            autocomplete="off" type="text" />
                </div>
            </div>

            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-700 dark:text-slate-300 ml-1"
                       for="newPassword">
                    New Password
                </label>
                <div class="relative">
                                    <span
                                            class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-slate-400 text-xl">
                                        lock
                                    </span>
                    <input
                            class="w-full pl-10 pr-4 py-3 bg-background-light dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded focus:ring-2 focus:ring-primary focus:border-primary outline-none transition-all placeholder:text-slate-400"
                            id="newPassword" name="newPassword" required minlength="10"
                            title="Password must be at least 10 characters long"
                            placeholder="Enter new password" type="password" />
                </div>
            </div>

            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-700 dark:text-slate-300 ml-1"
                       for="confirmPassword">
                    Confirm Password
                </label>
                <div class="relative">
                                    <span
                                            class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-slate-400 text-xl">
                                        lock_reset
                                    </span>
                    <input
                            class="w-full pl-10 pr-4 py-3 bg-background-light dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded focus:ring-2 focus:ring-primary focus:border-primary outline-none transition-all placeholder:text-slate-400"
                            id="confirmPassword" name="confirmPassword" required minlength="10"
                            title="Password must be at least 10 characters long"
                            placeholder="Confirm new password" type="password" />
                </div>
            </div>

            <button
                    class="w-full bg-primary hover:bg-primary/90 text-slate-900 font-bold py-4 rounded transition-colors shadow-lg shadow-primary/20 flex items-center justify-center gap-2"
                    type="submit">
                <span>Verify & Reset Password</span>
                <span class="material-symbols-outlined text-lg">check_circle</span>
            </button>
        </form>
        <!-- Footer Links -->
        <div
                class="mt-10 pt-6 border-t border-slate-100 dark:border-slate-800 flex flex-col items-center gap-4">
            <a class="text-primary hover:underline text-sm font-medium flex items-center gap-1"
               href="${pageContext.request.contextPath}/forgot-password.jsp">
                Did not receive code? Request another.
            </a>
        </div>
    </div>
</main>
<!-- Page Footer -->
<footer class="w-full py-6 px-6 text-center">
    <div class="flex items-center justify-center gap-2 text-slate-500 text-xs mb-2">
        <span class="material-symbols-outlined text-sm">verified_user</span>
        <span>Secured by Ace Bank Encryption</span>
    </div>
    <p class="text-slate-400 text-[10px] uppercase tracking-widest">
        © 2024 Ace Bank International. Member FDIC.
    </p>
</footer>

<script>
    document.getElementById("otp-form").addEventListener("submit", function (event) {
        var newPass = document.getElementById("newPassword").value;
        var confPass = document.getElementById("confirmPassword").value;
        var errorMsg = document.getElementById("error-msg");

        if (newPass !== confPass) {
            event.preventDefault();
            errorMsg.classList.remove("hidden");
            errorMsg.innerHTML = "New Passwords do not match!";
        } else {
            errorMsg.classList.add("hidden");
        }
    });
</script>
</body>

</html>