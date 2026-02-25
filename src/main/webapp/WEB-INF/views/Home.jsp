<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta content="width=device-width, initial-scale=1.0" name="viewport" />
            <title>Ace Bank | Legacy Premier Dashboard</title>
            <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
            <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
            <link
                href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,400;0,700;1,400&amp;family=Noto+Sans:wght@400;500;600;700&amp;display=swap"
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
            class="bg-background-light dark:bg-background-dark font-sans text-slate-900 dark:text-slate-100 min-h-screen">
            <div class="flex h-screen overflow-hidden">
                <!-- Sidebar Navigation -->
                <aside
                    class="w-72 bg-white dark:bg-background-dark border-r parchment-border flex flex-col justify-between py-8 px-6">
                    <div class="flex flex-col gap-8">
                        <!-- Brand -->
                        <div class="flex items-center gap-3 px-2">
                            <div class="bg-primary text-background-dark p-2 rounded">
                                <span class="material-symbols-outlined text-2xl font-bold">account_balance</span>
                            </div>
                            <div>
                                <h1 class="text-xl font-display font-bold leading-none tracking-tight">Ace Bank</h1>
                                <p class="text-[10px] uppercase tracking-widest text-primary font-bold">Legacy Premier
                                </p>
                            </div>
                        </div>
                        <!-- Nav Links -->
                        <nav class="flex flex-col gap-2">
                            <a class="flex items-center gap-3 px-4 py-3 rounded bg-primary/10 text-primary border-r-2 border-primary"
                                href="${pageContext.request.contextPath}/home">
                                <span class="material-symbols-outlined fill-1">dashboard</span>
                                <span class="font-display font-medium">Dashboard</span>
                            </a>
                            <a class="flex items-center gap-3 px-4 py-3 rounded text-slate-600 dark:text-slate-400 hover:bg-slate-50 dark:hover:bg-white/5 transition-colors"
                                href="${pageContext.request.contextPath}/Loan">
                                <span class="material-symbols-outlined">payments</span>
                                <span class="font-display font-medium">Loans</span>
                            </a>
                            <a class="flex items-center gap-3 px-4 py-3 rounded text-slate-600 dark:text-slate-400 hover:bg-slate-50 dark:hover:bg-white/5 transition-colors"
                                href="${pageContext.request.contextPath}/ChangePassword">
                                <span class="material-symbols-outlined">settings</span>
                                <span class="font-display font-medium">Reset Password</span>
                            </a>
                        </nav>
                    </div>
                    <!-- Sidebar Bottom -->
                    <div class="flex flex-col gap-2 border-t parchment-border pt-6">
                        <a class="flex items-center gap-3 px-4 py-2 text-slate-500 hover:text-red-600 transition-colors"
                            href="${pageContext.request.contextPath}/Logout">
                            <span class="material-symbols-outlined text-xl">logout</span>
                            <span class="text-sm font-medium">Logout</span>
                        </a>
                    </div>
                </aside>
                <!-- Main Content Area -->
                <main class="flex-1 flex flex-col overflow-y-auto">
                    <!-- Header -->
                    <header
                        class="h-20 bg-white/50 dark:bg-background-dark/50 backdrop-blur-md border-b parchment-border flex items-center justify-between px-10 sticky top-0 z-10">
                        <div class="flex items-center gap-4">
                            <h2 class="text-xl font-display font-bold">Account Overview</h2>
                        </div>
                        <div class="flex items-center gap-6">
                            <button
                                class="p-2 rounded-full hover:bg-slate-100 dark:hover:bg-white/10 transition-colors flex items-center justify-center text-slate-400 dark:text-slate-300"
                                onclick="toggleTheme()">
                                <span class="material-symbols-outlined dark:hidden">dark_mode</span>
                                <span class="material-symbols-outlined hidden dark:block">light_mode</span>
                            </button>

                            <div class="flex items-center gap-3 border-l parchment-border pl-6">
                                <div class="text-right">
                                    <p class="text-sm font-bold leading-none">${sessionScope.firstName}</p>
                                    <p class="text-[10px] text-primary font-bold uppercase tracking-tighter">Acct:
                                        ${sessionScope.accountNumber}</p>
                                </div>
                                <div class="size-10 rounded-full bg-slate-200 overflow-hidden border parchment-border">
                                    <img class="w-full h-full object-cover"
                                        data-alt="Professional portrait of a bank member"
                                        src="https://lh3.googleusercontent.com/aida-public/AB6AXuDK4KEKTF8InSEqVyIpOGbOi6-pPNhFWKgrBVrYW21BLNjc2_6RNKJFp9YXctgBXgenjo0pG0WMfoWalTVvC0R7xDsnqrIUQOyXbDePKdQL2T9vIW-LmV83PWWVhgw6vke-JTJTfm5mfv-6HY4GF_GBLEK0OTne0dk7yLTBmH05qbt9EzkUoXb34Ea0fvCecXdxd7i_HV0FXggW6WkUycOrn5XBaLv_kNPTiWn3X6PUz_ZHdc_HcNBuH55sVQBpcHTIxMjzvZk_o5Q" />
                                </div>
                            </div>
                        </div>
                    </header>
                    <div class="p-10 max-w-7xl mx-auto w-full flex flex-col gap-8">
                        <!-- Welcome & Balance Section -->
                        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                            <div
                                class="lg:col-span-2 bg-white dark:bg-white/5 border parchment-border p-8 rounded-xl shadow-sm flex flex-col justify-between">
                                <div>
                                    <p class="text-slate-500 text-sm font-medium mb-1">Total Available Balance</p>
                                    <h3
                                        class="text-5xl font-display font-bold tracking-tight text-slate-900 dark:text-slate-100">
                                        ₹${sessionScope.balance}</h3>
                                </div>
                                <div class="mt-8 flex items-center gap-2">
                                    <span class="material-symbols-outlined text-green-600 text-sm">trending_up</span>
                                    <p class="text-sm text-green-600 font-bold">+2.4% <span
                                            class="text-slate-400 font-normal">from last month</span></p>
                                </div>
                            </div>
                            <!-- Quick Actions -->
                            <div
                                class="bg-white dark:bg-white/5 border parchment-border p-8 rounded-xl shadow-sm flex flex-col gap-4">
                                <h4 class="font-display font-bold text-lg mb-2">Activities</h4>
                                <div class="grid grid-cols-1 md:grid-cols-3 gap-3">
                                    <!-- Deposit -->
                                    <form action="${pageContext.request.contextPath}/home" method="post"
                                        class="flex flex-col gap-2">
                                        <input type="text" name="deposit" placeholder="Amount (₹)"
                                            pattern="[0-9]*\.?[0-9]+" inputmode="decimal" required
                                            class="bg-slate-100 dark:bg-white/10 border-0 rounded p-2 text-sm w-full dark:text-white" />
                                        <button type="submit"
                                            class="py-2.5 px-4 bg-green-600 hover:bg-green-700 text-white font-bold rounded flex items-center justify-center gap-2 transition-all text-xs uppercase tracking-widest shadow-md">
                                            Deposit
                                        </button>
                                    </form>

                                    <!-- Withdraw -->
                                    <form action="${pageContext.request.contextPath}/home" method="post"
                                        class="flex flex-col gap-2">
                                        <input type="text" name="withdraw" placeholder="Amount (₹)"
                                            pattern="[0-9]*\.?[0-9]+" inputmode="decimal" required
                                            class="bg-slate-100 dark:bg-white/10 border-0 rounded p-2 text-sm w-full dark:text-white" />
                                        <button type="submit"
                                            class="py-2.5 px-4 bg-red-600 hover:bg-red-700 text-white font-bold rounded flex items-center justify-center gap-2 transition-all text-xs uppercase tracking-widest shadow-md">
                                            Withdraw
                                        </button>
                                    </form>

                                    <!-- Transfer -->
                                    <form action="${pageContext.request.contextPath}/home" method="post"
                                        class="flex flex-col gap-2 md:col-span-3 lg:col-span-1 border-t md:border-t-0 md:border-l border-primary/20 pt-2 md:pt-0 md:pl-3">
                                        <input type="text" name="toAccount" placeholder="Recipient Acct" required
                                            class="bg-slate-100 dark:bg-white/10 border-0 rounded p-2 text-sm w-full dark:text-white" />
                                        <input type="text" name="toAmount" placeholder="Amount (₹)"
                                            pattern="[0-9]*\.?[0-9]+" inputmode="decimal" required
                                            class="bg-slate-100 dark:bg-white/10 border-0 rounded p-2 text-sm w-full dark:text-white" />
                                        <button type="submit"
                                            class="py-2.5 px-4 bg-primary text-background-dark hover:bg-primary/90 font-bold rounded flex items-center justify-center gap-2 transition-all text-xs uppercase tracking-widest shadow-md">
                                            Transfer
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Recent Transactions -->
                        <section class="flex flex-col gap-4">
                            <div class="flex items-center justify-between px-2">
                                <h3 class="text-xl font-display font-bold">Recent Transactions</h3>
                                <button type="button" class="text-primary text-sm font-bold hover:underline"
                                        onclick="document.getElementById('downloadModal').classList.remove('hidden')">Download Statement
                                </button>
                            </div>
                            <div
                                class="bg-white dark:bg-white/5 border parchment-border rounded-xl shadow-sm overflow-hidden">
                                <table class="w-full text-left border-collapse">
                                    <thead>
                                        <tr class="bg-slate-50 dark:bg-white/5 border-b parchment-border">
                                            <th
                                                class="px-6 py-4 text-xs font-bold text-slate-400 uppercase tracking-widest">
                                                Date</th>
                                            <th
                                                class="px-6 py-4 text-xs font-bold text-slate-400 uppercase tracking-widest">
                                                Description</th>
                                            <th
                                                class="px-6 py-4 text-xs font-bold text-slate-400 uppercase tracking-widest text-right">
                                                Amount</th>
                                            <th
                                                class="px-6 py-4 text-xs font-bold text-slate-400 uppercase tracking-widest text-center">
                                                Status</th>
                                        </tr>
                                    </thead>
                                    <tbody class="divide-y parchment-border">
                                        <c:forEach var="tx" items="${sessionScope.transactionDetailsList}">
                                            <tr class="hover:bg-slate-50/50 dark:hover:bg-white/5 transition-colors">
                                                <td class="px-6 py-4">
                                                    <p class="text-sm font-medium">${tx.createdAt()}</p>
                                                </td>
                                                <td class="px-6 py-4">
                                                    <div class="flex items-center gap-3">
                                                        <div
                                                            class="size-8 rounded bg-primary/10 flex items-center justify-center">
                                                            <span
                                                                class="text-[10px] font-bold text-primary">${tx.txType()}</span>
                                                        </div>
                                                        <p class="text-sm font-bold">
                                                            <c:choose>
                                                                <c:when test="${tx.txType() == 'TRANSFER'}">
                                                                    ${tx.senderAccount() == sessionScope.accountNumber ?
                                                                    'To' : 'From'}
                                                                    ${tx.senderAccount() == sessionScope.accountNumber ?
                                                                    tx.receiverAccount() : tx.senderAccount()}
                                                                </c:when>
                                                                <c:otherwise>
                                                                    ${tx.remark()}
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </p>
                                                    </div>
                                                </td>
                                                <td class="px-6 py-4 text-right">
                                                    <p
                                                        class="text-sm font-bold ${(tx.txType() == 'DEPOSIT' || (tx.txType() == 'TRANSFER' && tx.receiverAccount() == sessionScope.accountNumber)) ? 'text-green-600' : 'text-red-600'}">
                                                        ₹${tx.amount()}
                                                    </p>
                                                </td>
                                                <td class="px-6 py-4 text-center">
                                                    <span
                                                        class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-bold bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-400">Completed</span>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </section>
                    </div>
                </main>
            </div>
            <!-- Download CSV Modal -->
            <div id="downloadModal" class="fixed inset-0 z-50 hidden flex items-center justify-center">
                <div class="fixed inset-0 bg-slate-900/50 backdrop-blur-sm"
                     onclick="document.getElementById('downloadModal').classList.add('hidden')"></div>
                <div
                        class="bg-white dark:bg-background-dark border parchment-border p-8 rounded-xl shadow-xl z-10 w-full max-w-md relative">
                    <div class="flex items-center justify-between mb-6">
                        <h3 class="text-xl font-display font-bold">Download History</h3>
                        <button type="button" onclick="document.getElementById('downloadModal').classList.add('hidden')"
                                class="text-slate-400 hover:text-slate-900 dark:hover:text-white transition-colors flex items-center justify-center">
                            <span class="material-symbols-outlined">close</span>
                        </button>
                    </div>
                    <form action="${pageContext.request.contextPath}/download-transactions" method="get"
                          class="flex flex-col gap-4">
                        <p class="text-sm text-slate-500 dark:text-slate-400 mb-2">Select a date range to download your
                            transactions. Leave blank to download all.</p>
                        <div class="flex flex-col gap-2">
                            <label for="fromDate" class="text-sm font-bold text-slate-700 dark:text-slate-300">From
                                Date</label>
                            <input type="date" id="fromDate" name="fromDate"
                                   class="bg-slate-100 dark:bg-white/10 border-0 rounded p-2 text-sm w-full dark:text-white" />
                        </div>
                        <div class="flex flex-col gap-2">
                            <label for="toDate" class="text-sm font-bold text-slate-700 dark:text-slate-300">To
                                Date</label>
                            <input type="date" id="toDate" name="toDate"
                                   class="bg-slate-100 dark:bg-white/10 border-0 rounded p-2 text-sm w-full dark:text-white" />
                        </div>
                        <div class="mt-4 flex justify-end gap-3">
                            <button type="button"
                                    onclick="document.getElementById('downloadModal').classList.add('hidden')"
                                    class="px-4 py-2 rounded text-sm font-bold text-slate-500 hover:text-slate-900 dark:hover:text-white transition-colors">Cancel</button>
                            <button type="submit"
                                    class="px-4 py-2 bg-primary text-background-dark hover:bg-primary/90 font-bold rounded flex items-center justify-center gap-2 transition-all text-sm shadow-md"
                                    onclick="setTimeout(() => document.getElementById('downloadModal').classList.add('hidden'), 100);">
                                <span class="material-symbols-outlined text-[18px]">download</span>
                                Download
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- ChatBot Button & Window -->
            <button onclick="toggleChatBot()"
                    class="fixed bottom-6 right-6 border border-white/20 hover:scale-105 active:scale-95 transition-transform size-14 rounded-full bg-primary text-background-dark shadow-xl flex items-center justify-center z-40">
                <span class="material-symbols-outlined text-[32px] font-bold">chat_bubble</span>
            </button>

            <div id="chatbot-container"
                 class="fixed bottom-24 right-6 w-80 sm:w-96 h-[32rem] bg-white dark:bg-background-dark border parchment-border rounded-xl shadow-2xl z-40 hidden flex flex-col overflow-hidden">
                <!-- Header -->
                <div class="bg-primary p-4 flex items-center justify-between text-background-dark flex-shrink-0">
                    <div class="flex items-center gap-2">
                        <span class="material-symbols-outlined font-bold">support_agent</span>
                        <h4 class="font-display font-bold">Virtual Assistant</h4>
                    </div>
                    <button onclick="toggleChatBot()"
                            class="hover:bg-black/10 p-1 rounded transition-colors flex items-center justify-center">
                        <span class="material-symbols-outlined">close</span>
                    </button>
                </div>
                <!-- Body -->
                <div id="chatbot-body" class="p-4 flex-1 overflow-y-auto bg-slate-50 dark:bg-white/5 space-y-4">
                    <div class="flex justify-start mb-3">
                        <div
                                class="bg-white dark:bg-white/10 text-slate-900 dark:text-slate-100 p-3 rounded-lg max-w-[90%] text-sm shadow-sm border parchment-border">
                            Hello ${sessionScope.firstName != null ? sessionScope.firstName : 'there'}! I'm your Ace
                            Bank virtual assistant. How can I help you today?
                        </div>
                    </div>
                </div>
                <!-- Input -->
                <div
                        class="p-3 border-t parchment-border bg-white dark:bg-background-dark flex items-center gap-2 flex-shrink-0">
                    <form onsubmit="sendChatMessage(event)" class="w-full flex items-center gap-2 m-0 relative h-10">
                        <input id="chatbot-input" type="text" placeholder="Type a message..."
                               class="flex-1 bg-slate-100 dark:bg-white/10 dark:text-slate-100 border-0 rounded-full py-2 px-4 text-sm focus:ring-primary h-full"
                               autocomplete="off" />
                        <button type="submit"
                                class="bg-primary hover:bg-primary/90 text-background-dark rounded-full size-10 flex flex-shrink-0 items-center justify-center shadow-md transition-colors h-full">
                            <span class="material-symbols-outlined text-lg">send</span>
                        </button>
                    </form>
                </div>
            </div>
        </body>

        </html>