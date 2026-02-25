<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <% if (session==null || session.getAttribute("accountNumber")==null) {
            response.sendRedirect(request.getContextPath() + "/login.jsp" ); return; } %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta content="width=device-width, initial-scale=1.0" name="viewport" />
                <title>Ace Bank | Update Security Credentials</title>
                <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
                <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
                <link
                    href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@400;700&amp;family=Noto+Sans:wght@400;500;700&amp;display=swap"
                    rel="stylesheet" />
                <link
                    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@100..700,0..1&amp;display=swap"
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
                                    "sans": ["Noto Sans", "sans-serif"]
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
                class="bg-background-light dark:bg-background-dark font-sans text-slate-900 dark:text-slate-100 min-h-screen">
                <div class="relative flex min-h-screen flex-col overflow-x-hidden">
                    <!-- Header / TopNavBar -->
                    <header
                        class="flex items-center justify-between whitespace-nowrap border-b border-solid border-primary/20 px-6 py-4 lg:px-20 bg-white dark:bg-background-dark/50 backdrop-blur-md sticky top-0 z-50">
                        <div class="flex items-center gap-4 text-slate-900 dark:text-slate-100">
                            <div class="size-8 text-primary">
                                <svg fill="currentColor" viewbox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
                                    <path clip-rule="evenodd"
                                        d="M24 18.4228L42 11.475V34.3663C42 34.7796 41.7457 35.1504 41.3601 35.2992L24 42V18.4228Z"
                                        fill-rule="evenodd"></path>
                                    <path clip-rule="evenodd"
                                        d="M24 8.18819L33.4123 11.574L24 15.2071L14.5877 11.574L24 8.18819ZM9 15.8487L21 20.4805V37.6263L9 32.9945V15.8487ZM27 37.6263V20.4805L39 15.8487V32.9945L27 37.6263ZM25.354 2.29885C24.4788 1.98402 23.5212 1.98402 22.646 2.29885L4.98454 8.65208C3.7939 9.08038 3 10.2097 3 11.475V34.3663C3 36.0196 4.01719 37.5026 5.55962 38.098L22.9197 44.7987C23.6149 45.0671 24.3851 45.0671 25.0803 44.7987L42.4404 38.098C43.9828 37.5026 45 36.0196 45 34.3663V11.475C45 10.2097 44.2061 9.08038 43.0155 8.65208L25.354 2.29885Z"
                                        fill-rule="evenodd"></path>
                                </svg>
                            </div>
                            <h2 class="text-xl font-bold font-display tracking-tight uppercase tracking-widest">Ace Bank
                            </h2>
                        </div>
                        <div class="hidden md:flex flex-1 justify-center gap-10">
                            <a class="text-slate-600 dark:text-slate-400 hover:text-primary transition-colors text-sm font-medium"
                                href="${pageContext.request.contextPath}/home">Dashboard</a>
                            <a class="text-primary text-sm font-bold border-b-2 border-primary pb-1" href="#">Secure
                                Settings</a>
                        </div>
                        <div class="flex items-center gap-4">
                            <button onclick="toggleTheme()"
                                class="flex items-center justify-center rounded-lg h-10 w-10 hover:bg-primary/10 transition-colors text-primary">
                                <span class="material-symbols-outlined dark:hidden">dark_mode</span>
                                <span class="material-symbols-outlined hidden dark:block">light_mode</span>
                            </button>
                            <button
                                class="flex items-center justify-center rounded-lg h-10 w-10 hover:bg-primary/10 transition-colors">
                                <span
                                    class="material-symbols-outlined text-slate-600 dark:text-slate-300">notifications</span>
                            </button>
                            <div
                                class="h-10 w-10 rounded-full bg-primary/20 flex items-center justify-center border border-primary/30">
                                <span class="material-symbols-outlined text-primary">person</span>
                            </div>
                        </div>
                    </header>
                    <main class="flex-1 flex flex-col items-center px-4 py-8 lg:py-16">
                        <div class="w-full max-w-[960px]">
                            <!-- Breadcrumbs -->
                            <nav class="flex items-center gap-2 mb-8 text-sm font-medium text-slate-500">
                                <a class="hover:text-primary" href="#">Secure Settings</a>
                                <span class="material-symbols-outlined text-xs">chevron_right</span>
                                <span class="text-slate-900 dark:text-slate-200">Change Password</span>
                            </nav>
                            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                                <!-- Left Column: Form -->
                                <div
                                    class="lg:col-span-2 bg-white dark:bg-background-dark p-8 rounded-lg border border-slate-200 dark:border-primary/20 shadow-sm">
                                    <h1
                                        class="text-3xl font-black font-display text-slate-900 dark:text-slate-100 mb-2">
                                        Update Security Credentials</h1>
                                    <p class="text-slate-600 dark:text-slate-400 mb-8 leading-relaxed">
                                        For your security, changing your password will terminate all other active
                                        sessions across your devices. Please choose a strong, unique password.
                                    </p>

                                    <c:if test="${param.error == 'invalid_current_password'}">
                                        <div
                                            style="color: #e57373; text-align: center; margin-bottom: 15px; font-weight: 500;">
                                            Invalid current password! Please try again.
                                        </div>
                                    </c:if>
                                    <div id="error-msg"
                                        style="color: #ef4444; background: #fee2e2; border: 1px solid #fca5a5; padding: 10px; border-radius: 4px; display: none; margin-bottom: 10px; text-align: center; font-weight: bold;">
                                    </div>

                                    <form action="${pageContext.request.contextPath}/ChangePassword" method="POST"
                                        id="pass-form" class="space-y-6">
                                        <!-- Current Password -->
                                        <div>
                                            <div class="flex justify-between items-center mb-2">
                                                <label
                                                    class="text-sm font-bold text-slate-700 dark:text-slate-300 uppercase tracking-wider">Current
                                                    Password</label>
                                            </div>
                                            <div class="relative flex items-stretch">
                                                <input name="currentPassword" id="currentPassword" required
                                                    minlength="10" title="Password must be at least 10 characters long"
                                                    class="w-full h-12 px-4 rounded-l border border-slate-300 dark:border-slate-700 bg-white dark:bg-slate-900 focus:ring-1 focus:ring-primary focus:border-primary outline-none transition-all pr-12"
                                                    placeholder="••••••••" type="password" />
                                                <button
                                                    class="absolute right-0 top-0 h-full px-4 text-slate-400 hover:text-primary"
                                                    type="button">
                                                    <span class="material-symbols-outlined">visibility</span>
                                                </button>
                                            </div>
                                        </div>
                                        <hr class="border-slate-100 dark:border-slate-800" />
                                        <!-- New Password -->
                                        <div>
                                            <label
                                                class="block text-sm font-bold text-slate-700 dark:text-slate-300 mb-2 uppercase tracking-wider">New
                                                Password</label>
                                            <div class="relative flex items-stretch">
                                                <input name="newPassword" id="newPassword" required minlength="10"
                                                    title="Password must be at least 10 characters long"
                                                    class="w-full h-12 px-4 rounded-l border border-slate-300 dark:border-slate-700 bg-white dark:bg-slate-900 focus:ring-1 focus:ring-primary focus:border-primary outline-none transition-all pr-12"
                                                    placeholder="Enter new password" type="password" />
                                                <button
                                                    class="absolute right-0 top-0 h-full px-4 text-slate-400 hover:text-primary"
                                                    type="button">
                                                    <span class="material-symbols-outlined">visibility</span>
                                                </button>
                                            </div>
                                            <!-- Password Strength Indicator -->
                                            <div class="mt-3 flex gap-1 items-center">
                                                <div class="h-1.5 flex-1 bg-primary rounded-full"></div>
                                                <div class="h-1.5 flex-1 bg-primary rounded-full"></div>
                                                <div class="h-1.5 flex-1 bg-primary/20 rounded-full"></div>
                                                <div class="h-1.5 flex-1 bg-primary/20 rounded-full"></div>
                                                <span class="ml-2 text-xs font-bold text-primary italic uppercase">Fair
                                                    Strength</span>
                                            </div>
                                        </div>
                                        <!-- Confirm New Password -->
                                        <div>
                                            <label
                                                class="block text-sm font-bold text-slate-700 dark:text-slate-300 mb-2 uppercase tracking-wider">Confirm
                                                New Password</label>
                                            <div class="relative flex items-stretch">
                                                <input name="confirmPassword" id="confirmPassword" required
                                                    minlength="10" title="Password must be at least 10 characters long"
                                                    class="w-full h-12 px-4 rounded-l border border-slate-300 dark:border-slate-700 bg-white dark:bg-slate-900 focus:ring-1 focus:ring-primary focus:border-primary outline-none transition-all pr-12"
                                                    placeholder="Confirm new password" type="password" />
                                                <button
                                                    class="absolute right-0 top-0 h-full px-4 text-slate-400 hover:text-primary"
                                                    type="button">
                                                    <span class="material-symbols-outlined">visibility</span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="pt-6 flex flex-col sm:flex-row gap-4">
                                            <button
                                                class="flex-1 bg-primary hover:bg-primary/90 text-slate-900 font-bold h-12 rounded transition-all uppercase tracking-widest shadow-md"
                                                type="submit">
                                                Update Password
                                            </button>
                                            <a href="${pageContext.request.contextPath}/home"
                                                class="flex-1 flex justify-center items-center border border-slate-300 dark:border-slate-700 text-slate-600 dark:text-slate-400 font-bold h-12 rounded hover:bg-slate-50 dark:hover:bg-slate-800 transition-all uppercase tracking-widest text-center">
                                                Cancel
                                            </a>
                                        </div>
                                    </form>
                                </div>
                                <!-- Right Column: Sidebar -->
                                <div class="space-y-6">
                                    <!-- Password Requirements -->
                                    <div
                                        class="bg-primary/5 dark:bg-primary/10 border border-primary/20 p-6 rounded-lg">
                                        <div class="flex items-center gap-2 mb-4 text-primary">
                                            <span class="material-symbols-outlined">shield</span>
                                            <h3 class="font-bold text-lg font-display">Security Guidelines</h3>
                                        </div>
                                        <ul class="space-y-3 text-sm text-slate-700 dark:text-slate-300">
                                            <li class="flex items-start gap-2">
                                                <span
                                                    class="material-symbols-outlined text-primary text-base">check_circle</span>
                                                <span>Minimum 12 characters long</span>
                                            </li>
                                            <li class="flex items-start gap-2">
                                                <span
                                                    class="material-symbols-outlined text-primary text-base">check_circle</span>
                                                <span>Include at least one uppercase letter</span>
                                            </li>
                                            <li class="flex items-start gap-2">
                                                <span
                                                    class="material-symbols-outlined text-primary text-base">check_circle</span>
                                                <span>Include at least one number</span>
                                            </li>
                                            <li class="flex items-start gap-2">
                                                <span
                                                    class="material-symbols-outlined text-primary text-base">check_circle</span>
                                                <span>Include at least one special character</span>
                                            </li>
                                            <li class="flex items-start gap-2">
                                                <span
                                                    class="material-symbols-outlined text-slate-400 text-base">radio_button_unchecked</span>
                                                <span>Avoid using personal information</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- Promotion/Info -->
                                    <div class="bg-slate-900 text-white p-6 rounded-lg relative overflow-hidden">
                                        <div class="relative z-10">
                                            <h3 class="font-display font-bold text-xl mb-2 text-primary">Premier
                                                Security</h3>
                                            <p class="text-sm text-slate-300 mb-4 leading-relaxed">Ace Bank uses 256-bit
                                                AES encryption to protect your sensitive credentials.</p>
                                            <div
                                                class="h-24 w-full bg-primary/10 rounded flex items-center justify-center border border-primary/20">
                                                <span
                                                    class="material-symbols-outlined text-4xl text-primary">lock_person</span>
                                            </div>
                                        </div>
                                        <div class="absolute -right-4 -bottom-4 opacity-10">
                                            <span class="material-symbols-outlined text-9xl">security</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                    <!-- Footer -->
                    <footer
                        class="mt-auto border-t border-slate-200 dark:border-primary/20 px-6 py-8 lg:px-20 bg-white dark:bg-background-dark/50">
                        <div class="max-w-[960px] mx-auto flex flex-col md:flex-row justify-between items-center gap-4">
                            <div
                                class="flex items-center gap-2 text-slate-400 text-xs font-medium uppercase tracking-widest">
                                <span class="material-symbols-outlined text-sm">verified_user</span>
                                © 2024 Ace Bank Legacy Premier
                            </div>
                            <div class="flex gap-6">
                                <a class="text-xs font-bold text-slate-500 hover:text-primary transition-colors uppercase tracking-wider"
                                    href="#">Privacy Policy</a>
                                <a class="text-xs font-bold text-slate-500 hover:text-primary transition-colors uppercase tracking-wider"
                                    href="#">Security Statement</a>
                                <a class="text-xs font-bold text-slate-500 hover:text-primary transition-colors uppercase tracking-wider"
                                    href="#">Contact Us</a>
                            </div>
                        </div>
                    </footer>
                </div>

                <script>
                    document.getElementById("pass-form").addEventListener("submit", function (event) {
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
                    // Theme toggle handled by script.js
                </script>
            </body>

            </html>