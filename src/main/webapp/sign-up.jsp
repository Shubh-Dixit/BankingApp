<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <title>Ace Bank | Join the Legacy</title>
        <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@400;700;900&amp;family=Noto+Sans:wght@400;500;700&amp;display=swap"
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
        class="bg-background-light dark:bg-background-dark font-display text-slate-900 dark:text-slate-100 min-h-screen selection:bg-primary/30">
        <div class="relative flex min-h-screen w-full flex-col overflow-x-hidden parchment-texture-radial">
            <div class="layout-container flex h-full grow flex-col">
                <!-- Navigation Header -->
                <header
                    class="flex items-center justify-between whitespace-nowrap border-b border-solid border-primary/20 px-6 lg:px-20 py-4 bg-background-light/80 backdrop-blur-md sticky top-0 z-50">
                    <div class="flex items-center gap-3">
                        <div class="size-8 text-primary">
                            <svg fill="none" viewbox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
                                <path clip-rule="evenodd"
                                    d="M24 18.4228L42 11.475V34.3663C42 34.7796 41.7457 35.1504 41.3601 35.2992L24 42V18.4228Z"
                                    fill="currentColor" fill-rule="evenodd"></path>
                                <path clip-rule="evenodd"
                                    d="M24 8.18819L33.4123 11.574L24 15.2071L14.5877 11.574L24 8.18819ZM9 15.8487L21 20.4805V37.6263L9 32.9945V15.8487ZM27 37.6263V20.4805L39 15.8487V32.9945L27 37.6263ZM25.354 2.29885C24.4788 1.98402 23.5212 1.98402 22.646 2.29885L4.98454 8.65208C3.7939 9.08038 3 10.2097 3 11.475V34.3663C3 36.0196 4.01719 37.5026 5.55962 38.098L22.9197 44.7987C23.6149 45.0671 24.3851 45.0671 25.0803 44.7987L42.4404 38.098C43.9828 37.5026 45 36.0196 45 34.3663V11.475C45 10.2097 44.2061 9.08038 43.0155 8.65208L25.354 2.29885Z"
                                    fill="currentColor" fill-rule="evenodd"></path>
                            </svg>
                        </div>
                        <h2
                            class="text-slate-900 dark:text-slate-100 text-xl font-black leading-tight tracking-tight font-display italic">
                            Ace Bank</h2>
                    </div>
                    <div class="flex flex-1 justify-end items-center gap-6">
                        <button onclick="toggleTheme()"
                            class="p-2 rounded-full hover:bg-primary/10 text-primary transition-all flex items-center justify-center">
                            <span class="material-symbols-outlined dark:hidden">dark_mode</span>
                            <span class="material-symbols-outlined hidden dark:block">light_mode</span>
                        </button>
                        <span class="hidden md:inline text-slate-600 dark:text-slate-400 text-sm font-medium">Legacy
                            Support: 1-800-ACE-PREM</span>
                        <button onclick="window.location.href='${pageContext.request.contextPath}/login.jsp'"
                            type="button"
                            class="flex min-w-[120px] cursor-pointer items-center justify-center rounded border border-primary text-primary hover:bg-primary hover:text-white transition-all duration-300 h-10 px-4 text-sm font-bold leading-normal tracking-wide">
                            Sign In
                        </button>
                    </div>
                </header>
                <main class="flex-1 flex items-center justify-center p-6 lg:p-12">
                    <div
                        class="w-full max-w-[560px] bg-white dark:bg-stone-900 p-8 md:p-12 rounded shadow-2xl gold-border gold-shadow relative overflow-hidden">
                        <!-- Decorative corner accents -->
                        <div class="absolute top-0 left-0 w-16 h-16 border-t-2 border-l-2 border-primary/30"></div>
                        <div class="absolute bottom-0 right-0 w-16 h-16 border-b-2 border-r-2 border-primary/30"></div>
                        <div class="flex flex-col gap-2 mb-10 text-center">
                            <h1
                                class="text-slate-900 dark:text-slate-100 text-4xl font-black leading-tight tracking-tight font-display">
                                Join the Legacy</h1>
                            <p class="text-primary/80 text-base font-normal italic">Begin your journey with Ace Bank’s
                                premier financial services.</p>
                        </div>
                        <form action="signup" method="POST" id="signup-form" class="flex flex-col gap-6">
                            <!-- Full Name -->
                            <div class="flex flex-col gap-2">
                                <label
                                    class="text-slate-800 dark:text-slate-200 text-sm font-bold uppercase tracking-widest font-sans">Full
                                    Name</label>
                                <div class="relative group" style="display:flex; gap:10px;">
                                    <input name="firstName" required
                                        class="form-input flex w-full rounded text-slate-900 focus:outline-0 focus:ring-1 focus:ring-primary border border-slate-200 dark:border-stone-700 bg-stone-50/50 dark:bg-stone-800 h-14 placeholder:text-slate-400 p-[15px] text-base font-normal transition-all"
                                        placeholder="First Name" type="text" style="width: 48%;" />
                                    <input name="lastName" required
                                        class="form-input flex w-full rounded text-slate-900 focus:outline-0 focus:ring-1 focus:ring-primary border border-slate-200 dark:border-stone-700 bg-stone-50/50 dark:bg-stone-800 h-14 placeholder:text-slate-400 p-[15px] text-base font-normal transition-all"
                                        placeholder="Last Name" type="text" style="width: 48%;" />
                                </div>
                            </div>
                            <!-- Email Address -->
                            <div class="flex flex-col gap-2">
                                <label
                                    class="text-slate-800 dark:text-slate-200 text-sm font-bold uppercase tracking-widest font-sans">Email
                                    Address</label>
                                <div class="relative group">
                                    <input name="email" required
                                        class="form-input flex w-full rounded text-slate-900 focus:outline-0 focus:ring-1 focus:ring-primary border border-slate-200 dark:border-stone-700 bg-stone-50/50 dark:bg-stone-800 h-14 placeholder:text-slate-400 p-[15px] text-base font-normal transition-all"
                                        placeholder="email@example.com" type="email" />
                                    <span
                                        class="material-symbols-outlined absolute right-4 top-4 text-slate-300 group-focus-within:text-primary transition-colors">mail</span>
                                </div>
                            </div>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <!-- SSN/ID -->
                                <div class="flex flex-col gap-2">
                                    <label
                                        class="text-slate-800 dark:text-slate-200 text-sm font-bold uppercase tracking-widest font-sans">Aadhar
                                        Number</label>
                                    <div class="flex w-full items-stretch rounded group">
                                        <input name="aadharNumber" required pattern="\d{12}" minlength="12"
                                            maxlength="12" title="Aadhaar number must be exactly 12 digits"
                                            class="form-input flex w-full min-w-0 flex-1 rounded-l text-slate-900 focus:outline-0 focus:ring-1 focus:ring-primary border border-slate-200 dark:border-stone-700 bg-stone-50/50 dark:bg-stone-800 h-14 placeholder:text-slate-400 p-[15px] border-r-0 pr-2 text-base font-normal transition-all"
                                            placeholder="Aadhar Number (12 digits)" type="text" />
                                        <div
                                            class="text-slate-400 flex border border-slate-200 dark:border-stone-700 bg-stone-50/50 dark:bg-stone-800 items-center justify-center pr-[15px] rounded-r border-l-0 cursor-pointer hover:text-primary transition-colors">
                                            <span class="material-symbols-outlined">badge</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Password -->
                                <div class="flex flex-col gap-2">
                                    <label
                                        class="text-slate-800 dark:text-slate-200 text-sm font-bold uppercase tracking-widest font-sans">Password</label>
                                    <div class="relative group">
                                        <input name="password" required minlength="10"
                                            title="Password must be at least 10 characters long"
                                            class="form-input flex w-full rounded text-slate-900 focus:outline-0 focus:ring-1 focus:ring-primary border border-slate-200 dark:border-stone-700 bg-stone-50/50 dark:bg-stone-800 h-14 placeholder:text-slate-400 p-[15px] text-base font-normal transition-all"
                                            placeholder="••••••••" type="password" />
                                        <span
                                            class="material-symbols-outlined absolute right-4 top-4 text-slate-300 group-focus-within:text-primary transition-colors">lock</span>
                                    </div>
                                </div>
                            </div>
                            <!-- Terms -->
                            <div class="flex items-start gap-3 py-2">
                                <input class="mt-1 rounded border-slate-300 text-primary focus:ring-primary h-4 w-4"
                                    required type="checkbox" />
                                <label class="text-xs text-slate-500 leading-relaxed font-sans">
                                    I certify that I am at least 18 years of age and agree to the <a
                                        class="text-primary hover:underline" href="#">Legacy Premier Terms of
                                        Service</a> and <a class="text-primary hover:underline" href="#">Privacy
                                        Policy</a>.
                                </label>
                            </div>
                            <!-- Submit Button -->
                            <button
                                class="flex w-full cursor-pointer items-center justify-center rounded-lg bg-primary hover:bg-amber-500 text-white dark:text-stone-900 text-lg font-black leading-normal tracking-wider h-16 shadow-lg shadow-primary/20 transition-all active:scale-[0.98]"
                                type="submit">
                                ESTABLISH ACCOUNT
                            </button>
                            <!-- Back to Login -->
                            <div class="text-center pt-4">
                                <p class="text-slate-600 dark:text-slate-400 text-sm font-sans">
                                    Already a member?
                                    <a class="text-primary font-bold hover:underline ml-1"
                                        href="${pageContext.request.contextPath}/login.jsp">Sign in here.</a>
                                </p>
                            </div>
                        </form>
                    </div>
                </main>
                <!-- Footer Trust Badge -->
                <footer class="p-10 text-center flex flex-col items-center gap-4">
                    <div
                        class="flex items-center gap-6 opacity-40 grayscale hover:grayscale-0 transition-all duration-500">
                        <img alt="FDIC Logo" class="h-6" data-alt="FDIC Insured logo in gold"
                            src="https://lh3.googleusercontent.com/aida-public/AB6AXuAJSYO2KjMxCNyWwP1MIeiry_w3Kkxj5vJe5GR-oRb6tzv3m5trYYKWJvS9QsfmaJYqQke7C58KGHvXUgeMnoIZiiC1fHnvfmlTeS_tfJM1Aq6ka0KHkrhDX2wOU8BYecpjYe4AfxQdl8dLIzidkTs7oHDgXXy9Couj4xm0KNCQtnE7rEKcIW5nFrLQGaj6BUkNUvI_DsvGPGCPLHHld7BZvXwsx7aQjostftBitgXPsud4lpSGd569vG2Myu8K_o1kvm5scyAkR64" />
                        <img alt="Equal Housing Lender" class="h-6" data-alt="Equal Housing Lender icon"
                            src="https://lh3.googleusercontent.com/aida-public/AB6AXuCT72TpgW1R1lzT07M0S80VMnOjR_K8ba_icn5OoO0es6r8qmRjn0SDmz7J_jkLdwjb2XhWf5RQY-N3vF_8mFn0t84mg8m9ZpriUHxHhc8z9rkUBs4x8Rj2ficUSvAosMaNtdGO80ldSBmSPe21bS5uQSTot8hYQDOW_SdDA0bLOsYXRfX_XWQtf1ezKVHBUEPvV1BzpUfHxTXQLlC39Xl_oxEr-kIXpbtrK-B-_21aEbtEFH7JgaqR2vqF6hy5SQXauY1QNXS0J48" />
                    </div>
                    <div class="flex items-center justify-center gap-2 text-slate-400 text-xs font-sans tracking-wide">
                        <span class="material-symbols-outlined text-[16px]">verified_user</span>
                        <span>Your data is protected by industry-leading 256-bit encryption.</span>
                    </div>
                    <p class="text-slate-400 text-[10px] font-sans uppercase tracking-[0.2em]">© 2024 ACE BANKING GROUP.
                        ALL RIGHTS RESERVED.</p>
                </footer>
            </div>
        </div>
    </body>

    </html>