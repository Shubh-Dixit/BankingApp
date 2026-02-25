<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <!DOCTYPE html>
    <html class="light" lang="en">

    <head>
      <meta charset="utf-8" />
      <meta content="width=device-width, initial-scale=1.0" name="viewport" />
      <meta content="width=device-width, initial-scale=1.0" name="viewport" />
      <title>Credentials Recovery | Ace Bank</title>
      <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
      <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
      <link
        href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@400;700&amp;family=Playfair+Display:wght@700&amp;display=swap"
        rel="stylesheet" />
      <link
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
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
        <div class="w-full max-w-[450px] bg-white dark:bg-slate-900/50 p-8 rounded shadow-xl border border-primary/10">
          <!-- Branding/Icon -->
          <div class="flex flex-col items-center mb-8">
            <div class="size-16 bg-primary/10 rounded-full flex items-center justify-center mb-6">
              <span class="material-symbols-outlined text-primary text-4xl">lock_reset</span>
            </div>
            <h1 class="font-heading text-3xl font-bold text-center mb-3">Credentials Recovery</h1>
            <p class="text-slate-600 dark:text-slate-400 text-center text-sm leading-relaxed max-w-[320px]">
              Enter your registered email address below. We will send you a secure link to reset your password.
            </p>
          </div>
          <c:if test="${param.error == 'not_found'}">
            <div style="color: #e57373; text-align: center; margin-bottom: 15px; font-weight: 500;">
              Email not found! Please check and try again.
            </div>
          </c:if>
          <!-- Recovery Form -->
          <form action="${pageContext.request.contextPath}/Forgot" method="POST" class="space-y-6">
            <div class="space-y-2">
              <label class="text-sm font-medium text-slate-700 dark:text-slate-300 ml-1" for="email">
                Registered Email Address
              </label>
              <div class="relative">
                <span class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-slate-400 text-xl">
                  mail
                </span>
                <input
                  class="w-full pl-10 pr-4 py-3 bg-background-light dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded focus:ring-2 focus:ring-primary focus:border-primary outline-none transition-all placeholder:text-slate-400"
                  id="email" name="email" placeholder="e.g. name@email.com" required="" type="email" />
              </div>
            </div>
            <button
              class="w-full bg-primary hover:bg-primary/90 text-slate-900 font-bold py-4 rounded transition-colors shadow-lg shadow-primary/20 flex items-center justify-center gap-2"
              type="submit">
              <span>Request Reset Link</span>
              <span class="material-symbols-outlined text-lg">arrow_forward</span>
            </button>
          </form>
          <!-- Footer Links -->
          <div class="mt-10 pt-6 border-t border-slate-100 dark:border-slate-800 flex flex-col items-center gap-4">
            <a class="text-primary hover:underline text-sm font-medium flex items-center gap-1"
              href="${pageContext.request.contextPath}/login.jsp">
              <span class="material-symbols-outlined text-base">arrow_back</span>
              Back to Secure Login
            </a>
            <div class="flex items-center gap-4 text-xs text-slate-400">
              <a class="hover:text-primary transition-colors" href="#">Privacy Policy</a>
              <span class="w-1 h-1 bg-slate-300 rounded-full"></span>
              <a class="hover:text-primary transition-colors" href="#">Contact Support</a>
            </div>
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
    </body>

    </html>