<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html class="light" lang="en">

    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <title>Legacy Premier | Ace Bank</title>
        <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,400;0,700;1,400&amp;family=Noto+Sans:wght@400;700&amp;display=swap"
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
                            "background-light": "#f9f7f2", // Warm parchment
                            "background-dark": "#1a1814",  // Deep obsidian
                        },
                        fontFamily: {
                            "display": ["Noto Serif", "serif"],
                            "body": ["Noto Sans", "sans-serif"]
                        },
                        borderRadius: {
                            "DEFAULT": "0.125rem",
                            "lg": "0.25rem",
                            "xl": "0.5rem",
                            "full": "9999px"
                        },
                    },
                },
            }
        </script>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
    </head>

    <body
        class="bg-background-light dark:bg-background-dark font-display text-slate-900 dark:text-slate-100 transition-colors duration-300">
        <!-- Top Navigation -->
        <header
            class="sticky top-0 z-50 w-full border-b border-primary/20 bg-background-light/80 dark:bg-background-dark/80 backdrop-blur-md">
            <div class="max-w-7xl mx-auto px-6 h-20 flex items-center justify-between">
                <div class="flex items-center gap-3">
                    <div class="text-primary">
                        <span class="material-symbols-outlined text-4xl">account_balance</span>
                    </div>
                    <h2 class="text-xl font-bold tracking-tighter uppercase dark:text-primary">Ace Bank</h2>
                </div>
                <nav class="hidden md:flex items-center gap-10">
                    <a class="text-sm font-medium hover:text-primary transition-colors uppercase tracking-widest"
                        href="#">Private Counsel</a>
                    <a class="text-sm font-medium hover:text-primary transition-colors uppercase tracking-widest"
                        href="#">Global Reach</a>
                    <a class="text-sm font-medium hover:text-primary transition-colors uppercase tracking-widest"
                        href="#">Sovereign Security</a>
                </nav>
                <div class="flex items-center gap-6">
                    <!-- Theme Toggle -->
                    <button
                        class="p-2 rounded-full hover:bg-primary/10 text-primary transition-all flex items-center justify-center"
                        onclick="toggleTheme()"><span
                            class="material-symbols-outlined dark:hidden">dark_mode</span><span
                            class="material-symbols-outlined hidden dark:block">light_mode</span></button>
                    <a href="${pageContext.request.contextPath}/login.jsp"
                        class="bg-primary text-background-dark px-6 py-2 text-sm font-bold uppercase tracking-widest hover:brightness-110 transition-all rounded inline-block">Private
                        Login</a>
                </div>
            </div>
        </header>
        <main class="parchment-texture-img">
            <!-- Hero Section -->
            <section class="relative overflow-hidden pt-20 pb-32">
                <div class="max-w-7xl mx-auto px-6 grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
                    <div class="flex flex-col gap-8 order-2 lg:order-1">
                        <div
                            class="inline-flex items-center gap-2 text-primary font-bold tracking-widest text-xs uppercase">
                            <span class="h-px w-8 bg-primary"></span>
                            Legacy Premier Member
                        </div>
                        <h1 class="text-6xl md:text-8xl font-bold leading-[1.1] tracking-tight">
                            Legacy.<br />
                            <span class="italic font-normal text-primary">Preserved.</span>
                        </h1>
                        <p
                            class="text-xl md:text-2xl font-light leading-relaxed text-slate-700 dark:text-slate-300 max-w-xl">
                            Empowering the next generation with bespoke financial stewardship and unyielding security.
                            Your family's future, minted in excellence.
                        </p>
                        <div class="flex flex-col sm:flex-row gap-4 pt-4">
                            <a href="${pageContext.request.contextPath}/login.jsp"
                                class="bg-primary text-background-dark px-10 py-5 text-lg font-bold uppercase tracking-widest hover:scale-[1.02] transition-transform rounded flex items-center justify-center gap-3 shadow-xl shadow-primary/20">
                                Access Vault
                                <span class="material-symbols-outlined">shield_with_heart</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/sign-up.jsp"
                                class="border flex items-center justify-center border-primary/40 dark:border-primary/20 hover:border-primary px-10 py-5 text-lg font-bold uppercase tracking-widest transition-all rounded text-slate-800 dark:text-slate-200 inline-block">Sign
                                Up</a>
                        </div>
                    </div>
                    <div class="order-1 lg:order-2 flex justify-center lg:justify-end">
                        <div
                            class="gilded-frame w-full max-w-[500px] aspect-square bg-white dark:bg-black/40 overflow-hidden shadow-2xl flex items-center justify-center">
                            <!-- Money Animation Container -->
                            <video autoplay="" class="w-full h-full object-cover grayscale-[0.5] dark:grayscale-0"
                                data-alt="Animation of golden coins falling into a vault" loop="" muted=""
                                playsinline="">
                                <source
                                    src="https://cdnl.iconscout.com/lottie/premium/thumb/money-in-bank-animation-gif-download-4885122.mp4"
                                    type="video/mp4" />
                            </video>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Pillars Section -->
            <section class="py-24 bg-primary/5 dark:bg-primary/5 border-y border-primary/10">
                <div class="max-w-7xl mx-auto px-6">
                    <div class="flex flex-col items-center text-center mb-20">
                        <h2 class="text-4xl md:text-5xl font-bold mb-6 italic">Our Pillars of Wealth</h2>
                        <div class="h-1 w-24 bg-primary mb-6"></div>
                        <p class="max-w-2xl text-slate-600 dark:text-slate-400 text-lg">Excellence in every interaction,
                            preservation in every decision. Our legacy is built on three unbreakable foundations.</p>
                    </div>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                        <!-- Sovereign Security -->
                        <div
                            class="p-10 border border-primary/20 bg-background-light dark:bg-background-dark hover:border-primary transition-colors group">
                            <div class="text-primary mb-8 group-hover:scale-110 transition-transform inline-block">
                                <span class="material-symbols-outlined text-5xl">verified_user</span>
                            </div>
                            <h3 class="text-2xl font-bold mb-4 uppercase tracking-tighter">Sovereign Security</h3>
                            <p class="text-slate-600 dark:text-slate-400 leading-relaxed font-body">
                                Advanced cold-storage assets and unyielding privacy protocols. We treat your data with
                                the same reverence as your gold.
                            </p>
                        </div>
                        <!-- Global Reach -->
                        <div
                            class="p-10 border border-primary/20 bg-background-light dark:bg-background-dark hover:border-primary transition-colors group">
                            <div class="text-primary mb-8 group-hover:scale-110 transition-transform inline-block">
                                <span class="material-symbols-outlined text-5xl">public</span>
                            </div>
                            <h3 class="text-2xl font-bold mb-4 uppercase tracking-tighter">Global Reach</h3>
                            <p class="text-slate-600 dark:text-slate-400 leading-relaxed font-body">
                                Seamless international estate management and liquid access across all major financial
                                hubs from London to Singapore.
                            </p>
                        </div>
                        <!-- Private Counsel -->
                        <div
                            class="p-10 border border-primary/20 bg-background-light dark:bg-background-dark hover:border-primary transition-colors group">
                            <div class="text-primary mb-8 group-hover:scale-110 transition-transform inline-block">
                                <span class="material-symbols-outlined text-5xl">handshake</span>
                            </div>
                            <h3 class="text-2xl font-bold mb-4 uppercase tracking-tighter">Private Counsel</h3>
                            <p class="text-slate-600 dark:text-slate-400 leading-relaxed font-body">
                                Dedicated 1-on-1 concierge wealth management tailored specifically to your family's
                                unique financial trajectory.
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Stats Section -->
            <section class="py-20 border-b border-primary/10">
                <div class="max-w-7xl mx-auto px-6">
                    <div class="grid grid-cols-2 lg:grid-cols-4 gap-12 text-center">
                        <div class="flex flex-col gap-2">
                            <span class="text-primary text-4xl font-bold">₹42B+</span>
                            <span class="text-xs uppercase tracking-widest font-bold opacity-60">Assets Protected</span>
                        </div>
                        <div class="flex flex-col gap-2">
                            <span class="text-primary text-4xl font-bold">24</span>
                            <span class="text-xs uppercase tracking-widest font-bold opacity-60">Global Offices</span>
                        </div>
                        <div class="flex flex-col gap-2">
                            <span class="text-primary text-4xl font-bold">150+</span>
                            <span class="text-xs uppercase tracking-widest font-bold opacity-60">Years of
                                Heritage</span>
                        </div>
                        <div class="flex flex-col gap-2">
                            <span class="text-primary text-4xl font-bold">Zero</span>
                            <span class="text-xs uppercase tracking-widest font-bold opacity-60">Breach History</span>
                        </div>
                    </div>
                </div>
            </section>
            <!-- CTA Section -->
            <section class="py-32 relative overflow-hidden">
                <div class="max-w-4xl mx-auto px-6 text-center">
                    <div class="mb-12">
                        <span class="material-symbols-outlined text-primary text-6xl mb-6">lock_open</span>
                        <h2 class="text-4xl md:text-6xl font-bold mb-6 italic">Secure Your Future Today</h2>
                        <p class="text-xl text-slate-600 dark:text-slate-400 leading-relaxed">
                            Experience the pinnacle of private banking. Request a confidential consultation with our
                            lead partners and enter the vault of legacy.
                        </p>
                    </div>
                    <a href="${pageContext.request.contextPath}/sign-up.jsp"
                        class="bg-primary text-background-dark px-16 py-6 text-xl font-bold uppercase tracking-widest hover:brightness-110 hover:scale-105 transition-all rounded shadow-2xl shadow-primary/30 inline-block">Sign
                        Up Now</a>
                </div>
            </section>
        </main>
        <footer class="bg-background-dark text-slate-400 py-16 border-t border-primary/30">
            <div class="max-w-7xl mx-auto px-6">
                <div class="flex flex-col md:flex-row justify-between items-center gap-10">
                    <div class="flex items-center gap-3 text-primary">
                        <span class="material-symbols-outlined text-3xl">account_balance</span>
                        <h2 class="text-lg font-bold tracking-widest uppercase">Ace Bank</h2>
                    </div>
                    <div class="flex flex-wrap justify-center gap-8">
                        <a class="text-xs uppercase tracking-widest hover:text-primary transition-colors"
                            href="#">Discretionary Agreements</a>
                        <a class="text-xs uppercase tracking-widest hover:text-primary transition-colors" href="#">Terms
                            of Wealth</a>
                        <a class="text-xs uppercase tracking-widest hover:text-primary transition-colors"
                            href="#">Global Offices</a>
                        <a class="text-xs uppercase tracking-widest hover:text-primary transition-colors"
                            href="#">Privacy Policy</a>
                    </div>
                </div>
                <div
                    class="mt-12 pt-8 border-t border-white/5 text-center text-[10px] uppercase tracking-widest opacity-40">
                    © 2024 Ace Bank International. All Sovereign Rights Reserved. Members of the Legacy Premier Guild.
                </div>
            </div>
        </footer>
    </body>

    </html>