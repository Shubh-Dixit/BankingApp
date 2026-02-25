<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>

        <html class="light" lang="en">

        <head>
            <meta charset="utf-8" />
            <meta content="width=device-width, initial-scale=1.0" name="viewport" />
            <title>Ace Bank | Legacy Premier Access</title>
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
                                "navy-ink": "#0f172a",
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
            class="bg-background-light dark:bg-background-dark font-display text-navy-ink dark:text-slate-100 min-h-screen flex flex-col">
            <!-- Top Navigation Bar -->
            <header
                class="w-full px-6 py-6 flex items-center justify-between border-b border-navy-ink/10 dark:border-primary/10">
                <div class="flex items-center gap-3">
                    <div class="text-primary">
                        <span class="material-symbols-outlined text-4xl">account_balance</span>
                    </div>
                    <div>
                        <h2 class="text-xl font-bold tracking-tight uppercase">Ace Bank</h2>
                        <p
                            class="text-[10px] tracking-[0.2em] font-sans uppercase text-navy-ink/60 dark:text-primary/60">
                            Established 1892</p>
                    </div>
                </div>
                <div class="hidden md:flex items-center gap-6 font-sans text-xs uppercase tracking-widest font-medium">
                    <button onclick="toggleTheme()"
                        class="p-2 rounded-full hover:bg-primary/10 text-primary transition-all flex items-center justify-center">
                        <span class="material-symbols-outlined dark:hidden">dark_mode</span>
                        <span class="material-symbols-outlined hidden dark:block">light_mode</span>
                    </button>
                    <a class="hover:text-primary transition-colors" href="#">Wealth Management</a>
                    <a class="hover:text-primary transition-colors" href="#">Global Markets</a>
                    <a class="hover:text-primary transition-colors" href="#">Concierge</a>
                </div>
            </header>
            <!-- Main Content Area -->
            <main class="flex-1 flex items-center justify-center p-6 parchment-bg dark:bg-background-dark">
                <!-- Central Access Card -->
                <div
                    class="w-full max-w-md bg-white/40 dark:bg-white/5 backdrop-blur-sm p-10 border border-navy-ink/5 dark:border-primary/20 shadow-2xl relative overflow-hidden rounded-sm">
                    <!-- Security Watermark -->
                    <div class="absolute -top-10 -right-10 opacity-[0.03] dark:opacity-[0.05] pointer-events-none">
                        <span class="material-symbols-outlined text-[200px]">security</span>
                    </div>
                    <!-- Header Section -->
                    <div class="text-center mb-12">
                        <span class="material-symbols-outlined text-primary text-5xl mb-4">encrypted</span>
                        <h1 class="text-3xl font-bold mb-2">Private Client Access</h1>
                        <p class="text-primary font-sans text-xs tracking-[0.3em] uppercase font-bold">Legacy Premier
                        </p>
                    </div>
                    <!-- Login Form -->
                    <form action="Login" method="POST" class="space-y-8">
                        <!-- Identity Field -->
                        <div class="relative group">
                            <label
                                class="block text-[10px] uppercase tracking-widest font-sans font-bold text-navy-ink/50 dark:text-primary/70 mb-1 transition-colors group-focus-within:text-primary">
                                Identity
                            </label>
                            <input name="accountNumber" id="accNo" value="${savedAccount}" required
                                class="w-full bg-transparent border-0 border-b-2 border-navy-ink/20 dark:border-primary/20 focus:ring-0 focus:border-primary px-0 py-3 text-lg font-sans tracking-wide placeholder:text-navy-ink/20"
                                placeholder="Enter Account Number" type="text" />
                        </div>
                        <!-- Security Key Field -->
                        <div class="relative group">
                            <label
                                class="block text-[10px] uppercase tracking-widest font-sans font-bold text-navy-ink/50 dark:text-primary/70 mb-1 transition-colors group-focus-within:text-primary">
                                Security Key
                            </label>
                            <div class="relative flex items-center">
                                <input name="password" id="pass" required minlength="10"
                                    title="Password must be at least 10 characters long"
                                    class="w-full bg-transparent border-0 border-b-2 border-navy-ink/20 dark:border-primary/20 focus:ring-0 focus:border-primary px-0 py-3 text-lg font-sans tracking-wide placeholder:text-navy-ink/20"
                                    placeholder="••••••••" type="password" />
                                <button
                                    class="absolute right-0 text-navy-ink/40 dark:text-primary/40 hover:text-primary"
                                    type="button">
                                </button>
                            </div>
                        </div>
                        <!-- Actions -->
                        <div class="pt-4 space-y-6">
                            <button type="submit"
                                class="w-full bg-primary hover:bg-primary/90 text-navy-ink font-sans font-bold py-4 uppercase tracking-[0.2em] transition-all flex items-center justify-center gap-3 shadow-lg hover:shadow-primary/20 rounded-sm">
                                <span class="material-symbols-outlined">lock_open</span>
                                Unlock Vault
                            </button>
                            <div class="flex flex-col gap-4 text-center">
                                <div
                                    class="flex items-center justify-center gap-4 text-[11px] uppercase tracking-widest font-sans font-bold opacity-60">
                                    <a class="hover:text-primary transition-colors decoration-primary underline-offset-4"
                                        href="${pageContext.request.contextPath}/forgot-password.jsp">Credential
                                        Recovery</a>
                                    <span class="w-1 h-1 bg-navy-ink/20 rounded-full"></span>
                                    <a class="hover:text-primary transition-colors decoration-primary underline-offset-4"
                                        href="${pageContext.request.contextPath}/sign-up.jsp">Apply for Access</a>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- Card Footer -->
                    <div class="mt-16 text-center border-t border-navy-ink/5 pt-6">
                        <p class="text-[9px] font-sans uppercase tracking-[0.2em] opacity-40">
                            Encrypted Session • TLS 1.3 Active
                        </p>
                    </div>
                </div>
            </main>
            <!-- Page Footer -->
            <footer
                class="w-full px-6 py-8 flex flex-col md:flex-row items-center justify-between border-t border-navy-ink/10 dark:border-primary/10 text-[10px] font-sans uppercase tracking-[0.15em] opacity-60">
                <div class="mb-4 md:mb-0">
                    © 2024 Ace Bank Financial Group. All Rights Reserved.
                </div>
                <div class="flex gap-8">
                    <a class="hover:text-primary transition-colors" href="#">Privacy Policy</a>
                    <a class="hover:text-primary transition-colors" href="#">Terms of Service</a>
                    <a class="hover:text-primary transition-colors" href="#">Security Guarantee</a>
                </div>
            </footer>
            <!-- Aesthetic Decorative Corner elements -->
            <div class="fixed top-0 left-0 w-32 h-32 pointer-events-none opacity-10 dark:opacity-20">
                <div class="absolute top-8 left-8 border-t-2 border-l-2 border-navy-ink dark:border-primary w-8 h-8">
                </div>
            </div>
            <div class="fixed bottom-0 right-0 w-32 h-32 pointer-events-none opacity-10 dark:opacity-20">
                <div
                    class="absolute bottom-8 right-8 border-b-2 border-r-2 border-navy-ink dark:border-primary w-8 h-8">
                </div>
            </div>
        </body>

        </html>