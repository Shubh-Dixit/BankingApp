<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <% if (session==null || session.getAttribute("email")==null) { response.sendRedirect(request.getContextPath()
            + "/login.jsp" ); return; } %>
            <!DOCTYPE html>

            <html class="light" lang="en">

            <head>
                <meta charset="utf-8" />
                <meta content="width=device-width, initial-scale=1.0" name="viewport" />
                <title>Loans &amp; Credit | Ace Bank Legacy Premier</title>
                <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
                <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
                <link
                    href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,100..900;1,100..900&amp;family=Noto+Sans:ital,wght@0,100..900;1,100..900&amp;display=swap"
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
                class="bg-background-light dark:bg-background-dark font-display text-slate-900 dark:text-slate-100 min-h-screen">
                <!-- Top Navigation Bar -->
                <header
                    class="border-b border-primary/20 bg-background-light dark:bg-background-dark sticky top-0 z-50">
                    <div class="max-w-7xl mx-auto px-6 h-20 flex items-center justify-between">
                        <div class="flex items-center gap-12">
                            <div class="flex items-center gap-3">
                                <div class="text-primary">
                                    <svg class="size-8" fill="none" viewbox="0 0 48 48"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path clip-rule="evenodd"
                                            d="M24 18.4228L42 11.475V34.3663C42 34.7796 41.7457 35.1504 41.3601 35.2992L24 42V18.4228Z"
                                            fill="currentColor" fill-rule="evenodd"></path>
                                        <path clip-rule="evenodd"
                                            d="M24 8.18819L33.4123 11.574L24 15.2071L14.5877 11.574L24 8.18819ZM9 15.8487L21 20.4805V37.6263L9 32.9945V15.8487ZM27 37.6263V20.4805L39 15.8487V32.9945L27 37.6263ZM25.354 2.29885C24.4788 1.98402 23.5212 1.98402 22.646 2.29885L4.98454 8.65208C3.7939 9.08038 3 10.2097 3 11.475V34.3663C3 36.0196 4.01719 37.5026 5.55962 38.098L22.9197 44.7987C23.6149 45.0671 24.3851 45.0671 25.0803 44.7987L42.4404 38.098C43.9828 37.5026 45 36.0196 45 34.3663V11.475C45 10.2097 44.2061 9.08038 43.0155 8.65208L25.354 2.29885Z"
                                            fill="currentColor" fill-rule="evenodd"></path>
                                    </svg>
                                </div>
                                <h1 class="text-2xl font-bold tracking-tight uppercase">Ace Bank</h1>
                            </div>
                            <nav class="hidden md:flex items-center gap-8 sans-text text-sm font-medium tracking-wide">
                                <a class="hover:text-primary transition-colors"
                                    href="${pageContext.request.contextPath}/home">HOME</a>
                                <a class="text-primary border-b-2 border-primary pb-1" href="#">LOANS</a>
                            </nav>
                        </div>
                        <div class="flex items-center gap-6">
                            <button
                                class="p-2 rounded-full border border-primary/20 text-primary hover:bg-primary/10 transition-colors flex items-center justify-center"
                                onclick="toggleTheme()" title="Toggle Dark Mode">
                                <span class="material-symbols-outlined dark:hidden">dark_mode</span>
                                <span class="material-symbols-outlined hidden dark:block">light_mode</span>
                            </button><a href="${pageContext.request.contextPath}/Logout"
                                class="bg-primary text-background-dark px-6 py-2 rounded-full sans-text font-bold text-sm hover:bg-primary/90 transition-all uppercase tracking-wider">Logout</a>
                        </div>
                    </div>
                </header>
                <main class="max-w-7xl mx-auto px-6 py-12">
                    <!-- Hero Section -->
                    <section class="text-center mb-20">
                        <div class="inline-block px-4 py-1 border-y border-primary/40 mb-6">
                            <span class="sans-text text-xs font-bold tracking-[0.3em] uppercase text-primary">Legacy
                                Premier Suites</span>
                        </div>
                        <h2 class="text-5xl md:text-6xl font-display font-bold mb-6 text-slate-900 dark:text-slate-100">
                            Premier Financing Solutions</h2>
                        <p class="max-w-2xl mx-auto text-lg opacity-80 leading-relaxed font-display italic">
                            Tailored financial excellence to build your heritage and secure your future. You'll receive
                            an email at ${sessionScope.email} with the details.
                        </p>
                    </section>
                    <!-- Loan Grid -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-20">
                        <!-- Home Loan Card -->
                        <div
                            class="group border border-primary/20 bg-white dark:bg-slate-900/50 p-8 flex flex-col items-center text-center transition-all hover:border-primary hover:shadow-2xl hover:shadow-primary/10">
                            <div class="size-64 mb-8 overflow-hidden relative">
                                <img alt="Luxury Modern Home"
                                    class="w-full h-full object-cover grayscale group-hover:grayscale-0 transition-all duration-700 scale-110 group-hover:scale-100"
                                    data-alt="Modern luxury house with clean architecture"
                                    src="https://lh3.googleusercontent.com/aida-public/AB6AXuAzboZkgeDjguGFUeU84LwrQGpepI9-AK-dF0Xx6fZVzK3pZ3V0EzUIv0frn0H5jVwp2GCrg6yGBW9u9aZwqKtu3yTse5kC2NezNZznLVUk0oAQPVU2y7ChrHl8WMM3-dWkLS6pYQTYON4qVWI4XQ6g35clZJXwrl0SsT7pWX912_s3fOYyZXRunoEKzXsIInJnwxPCiRsn_QLmO8U93Nsh60Mt1WREftYhgjTwpcPvGv7bIKlUx3YKLSvzKF_yRskpahtcZa6NnRA" />
                                <div
                                    class="absolute inset-0 border border-primary/30 m-3 group-hover:m-0 transition-all duration-500">
                                </div>
                            </div>
                            <h3 class="text-3xl font-display font-bold mb-4">Home Loans</h3>
                            <p class="sans-text text-slate-600 dark:text-slate-400 mb-8 leading-relaxed max-w-sm">
                                Build your legacy in a home that matters. Precision mortgages designed for significant
                                estates and architectural gems.
                            </p>
                            <div class="mt-auto flex flex-col gap-4 w-full max-w-xs">
                                <form action="${pageContext.request.contextPath}/Loan" method="POST" class="w-full">
                                    <input type="hidden" name="loanType" value="home">
                                    <button type="submit"
                                        class="bg-primary text-background-dark w-full py-3 rounded sans-text font-bold uppercase tracking-widest hover:bg-primary/90 transition-colors">Apply
                                        Now</button>
                                </form>
                            </div>
                        </div>
                        <!-- Student Loan Card -->
                        <div
                            class="group border border-primary/20 bg-white dark:bg-slate-900/50 p-8 flex flex-col items-center text-center transition-all hover:border-primary hover:shadow-2xl hover:shadow-primary/10">
                            <div class="size-64 mb-8 overflow-hidden relative">
                                <img alt="University Library"
                                    class="w-full h-full object-cover grayscale group-hover:grayscale-0 transition-all duration-700 scale-110 group-hover:scale-100"
                                    data-alt="Grand library interior with historic atmosphere"
                                    src="https://lh3.googleusercontent.com/aida-public/AB6AXuC0daxnRM_gVbgyCpmJQE7Oe3-pJu-3rTZim22AVbzAehDMK7w21NAE-I-vOpHmhyB0G1iYywkqdGeKkqZLBnM20KE1N99UdIc8EXYqOyfGucbJpJtcaaUHoNA1EhfTjduRpZmvo59N-PUiHdnLyMi_KEnbatqW_GTAERQoXUOpA0O34WVls__EZFd_jvDNJF8MjTc-L6ZWBEW2ItxxuBB17kgu3QcEGpAYe61PSxKVIhx6Qil1NnGSktApw3_3RcQBD81645_8zz8" />
                                <div
                                    class="absolute inset-0 border border-primary/30 m-3 group-hover:m-0 transition-all duration-500">
                                </div>
                            </div>
                            <h3 class="text-3xl font-display font-bold mb-4">Student Loans</h3>
                            <p class="sans-text text-slate-600 dark:text-slate-400 mb-8 leading-relaxed max-w-sm">
                                Invest in the future leaders of tomorrow. Premium educational funding for ivy-tier
                                excellence and postgraduate specialization.
                            </p>
                            <div class="mt-auto flex flex-col gap-4 w-full max-w-xs">
                                <form action="${pageContext.request.contextPath}/Loan" method="POST" class="w-full">
                                    <input type="hidden" name="loanType" value="student">
                                    <button type="submit"
                                        class="bg-primary text-background-dark w-full py-3 rounded sans-text font-bold uppercase tracking-widest hover:bg-primary/90 transition-colors">Apply
                                        Now</button>
                                </form>
                            </div>
                        </div>
                        <!-- Car Loan Card -->
                        <div
                            class="group border border-primary/20 bg-white dark:bg-slate-900/50 p-8 flex flex-col items-center text-center transition-all hover:border-primary hover:shadow-2xl hover:shadow-primary/10">
                            <div class="size-64 mb-8 overflow-hidden relative">
                                <img alt="Luxury Sports Car"
                                    class="w-full h-full object-cover grayscale group-hover:grayscale-0 transition-all duration-700 scale-110 group-hover:scale-100"
                                    data-alt="Sleek luxury sports car on road"
                                    src="https://lh3.googleusercontent.com/aida-public/AB6AXuAYTbood1hMP1KqYS3exTYv19ahepjzJ0LmEARYsGxovlmWFs4nlsRUswZtYku4lG82XGn9F_RHyTJ-f4ZAP3BoHgWWgJ-ynqTu0nhZ8LCTy4eI9TR32Sxrby0dZ17uBV7B9IzkOiDyTi1TMpsIGWKvuty-Dpvd7N_BsiUI6RZBrYD3p7mhWamlNgSCI3TlmXsJA2Dc_ZmRM3iMInd2Q8hz8xxOWaJ2ez51upj28Gp8f6DsJwMwK0vmDOG_O-qz-ISuwIfHXjuNo9o" />
                                <div
                                    class="absolute inset-0 border border-primary/30 m-3 group-hover:m-0 transition-all duration-500">
                                </div>
                            </div>
                            <h3 class="text-3xl font-display font-bold mb-4">Car Loans</h3>
                            <p class="sans-text text-slate-600 dark:text-slate-400 mb-8 leading-relaxed max-w-sm">
                                Precision financing for your next journey. Bespoke automotive credit for luxury vehicles
                                and classic collector pieces.
                            </p>
                            <div class="mt-auto flex flex-col gap-4 w-full max-w-xs">
                                <form action="${pageContext.request.contextPath}/Loan" method="POST" class="w-full">
                                    <input type="hidden" name="loanType" value="car">
                                    <button type="submit"
                                        class="bg-primary text-background-dark w-full py-3 rounded sans-text font-bold uppercase tracking-widest hover:bg-primary/90 transition-colors">Apply
                                        Now</button>
                                </form>
                            </div>
                        </div>
                        <!-- Marriage Loan Card -->
                        <div
                            class="group border border-primary/20 bg-white dark:bg-slate-900/50 p-8 flex flex-col items-center text-center transition-all hover:border-primary hover:shadow-2xl hover:shadow-primary/10">
                            <div class="size-64 mb-8 overflow-hidden relative">
                                <img alt="Wedding Ceremony"
                                    class="w-full h-full object-cover grayscale group-hover:grayscale-0 transition-all duration-700 scale-110 group-hover:scale-100"
                                    data-alt="Elegant wedding setting with floral decor"
                                    src="https://lh3.googleusercontent.com/aida-public/AB6AXuDFqb5R3oigfCXZs3Gel1DVAbgxZ2tkVRBi6_GUtdqfVQrjVf1H7NwYKP6EMudMLZD1_jziJp_XpDN8Sh5y51c0tNvROWRQYbev968ewTGnj2KIUhRJQBM1Bs4tLOcFqJ1SPOchO6hsWcEW0o4GPEmkRi1qpN2nb8WDomcX_-D8A4572des1CuLFtdX1sgLqOs9gV71O8wSWa6iAIwjdSLg0W8CalF_uihhLiDAM1HTLtB5ImAZlUWV90DG2uq-T_2DgSOFQmg31Vo" />
                                <div
                                    class="absolute inset-0 border border-primary/30 m-3 group-hover:m-0 transition-all duration-500">
                                </div>
                            </div>
                            <h3 class="text-3xl font-display font-bold mb-4">Marriage Loans</h3>
                            <p class="sans-text text-slate-600 dark:text-slate-400 mb-8 leading-relaxed max-w-sm">
                                Celebrate your union with financial peace of mind. Flexible financing for destination
                                ceremonies and gala celebrations.
                            </p>
                            <div class="mt-auto flex flex-col gap-4 w-full max-w-xs">
                                <form action="${pageContext.request.contextPath}/Loan" method="POST" class="w-full">
                                    <input type="hidden" name="loanType" value="marriage">
                                    <button type="submit"
                                        class="bg-primary text-background-dark w-full py-3 rounded sans-text font-bold uppercase tracking-widest hover:bg-primary/90 transition-colors">Apply
                                        Now</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Support Footer / Concierge -->
                    <section class="bg-primary/5 border border-primary/10 rounded-xl p-12 text-center">
                        <h4 class="text-2xl font-display font-bold mb-4">Need Personalized Assistance?</h4>
                        <p class="sans-text text-slate-600 dark:text-slate-400 mb-8 max-w-xl mx-auto italic">
                            Our legacy premier concierge team is available 24/7 to guide you through complex financing
                            needs and bespoke credit structures.
                        </p>
                        <div class="flex flex-wrap justify-center gap-8">
                            <div class="flex items-center gap-2">
                                <span class="material-symbols-outlined text-primary">call</span>
                                <span class="sans-text font-bold tracking-widest">1-800-LEGACY-ACE</span>
                            </div>
                            <div class="flex items-center gap-2">
                                <span class="material-symbols-outlined text-primary">mail</span>
                                <span class="sans-text font-bold tracking-widest">CONCIERGE@ACEBANK.COM</span>
                            </div>
                        </div>
                    </section>
                </main>
                <footer class="border-t border-primary/10 py-12 mt-20">
                    <div class="max-w-7xl mx-auto px-6 flex flex-col md:flex-row justify-between items-center gap-8">
                        <div class="flex items-center gap-2 text-primary opacity-50 grayscale">
                            <svg class="size-6" fill="currentColor" viewbox="0 0 48 48">
                                <path
                                    d="M24 18.4228L42 11.475V34.3663C42 34.7796 41.7457 35.1504 41.3601 35.2992L24 42V18.4228Z">
                                </path>
                            </svg>
                            <span
                                class="font-bold tracking-widest text-xs uppercase text-slate-900 dark:text-slate-100">Ace
                                Bank © 2024</span>
                        </div>
                        <div class="flex gap-8 sans-text text-xs font-bold tracking-[0.2em] uppercase opacity-60">
                            <a class="hover:text-primary transition-colors" href="#">Privacy Policy</a>
                            <a class="hover:text-primary transition-colors" href="#">Terms of Service</a>
                            <a class="hover:text-primary transition-colors" href="#">Regulatory Disclosures</a>
                        </div>
                    </div>
                </footer>
            </body>

            </html>