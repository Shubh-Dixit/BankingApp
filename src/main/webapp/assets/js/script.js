function toggleTheme() {
    if (document.documentElement.classList.contains('dark')) {
        document.documentElement.classList.remove('dark');
        localStorage.setItem('theme', 'light');
    } else {
        document.documentElement.classList.add('dark');
        localStorage.setItem('theme', 'dark');
    }
}

document.addEventListener('DOMContentLoaded', () => {
    if (localStorage.getItem('theme') === 'dark' || (!('theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
        document.documentElement.classList.add('dark');
    } else {
        document.documentElement.classList.remove('dark');
    }
});

function toggleChatBot() {
    const chatContainer = document.getElementById('chatbot-container');
    chatContainer.classList.toggle('hidden');
    if (!chatContainer.classList.contains('hidden')) {
        document.getElementById('chatbot-input').focus();
    }
}

async function sendChatMessage(event) {
    if (event && event.preventDefault) event.preventDefault();

    const inputField = document.getElementById('chatbot-input');
    const message = inputField.value.trim();
    if (!message) return;

    const chatBody = document.getElementById('chatbot-body');

    // Add user message to UI
    const userMessageHtml = `
        <div class="flex justify-end mb-3">
            <div class="bg-primary/20 text-slate-900 dark:text-slate-100 dark:bg-primary/30 p-3 rounded-lg max-w-[80%] text-sm shadow-sm border parchment-border">
                ${message}
            </div>
        </div>
    `;
    chatBody.insertAdjacentHTML('beforeend', userMessageHtml);
    inputField.value = '';

    // Scroll to bottom
    chatBody.scrollTop = chatBody.scrollHeight;

    // Add bot loading animation
    const typingHtml = `
        <div id="bot-typing" class="flex justify-start mb-3">
            <div class="bg-slate-100 dark:bg-white/5 p-3 rounded-lg max-w-[80%] text-sm shadow-sm border parchment-border text-slate-500">
                <span class="animate-pulse">... typing ...</span>
            </div>
        </div>
    `;
    chatBody.insertAdjacentHTML('beforeend', typingHtml);
    chatBody.scrollTop = chatBody.scrollHeight;

    try {
        const response = await fetch('/api/chatbot', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: new URLSearchParams({ message: message })
        });

        const data = await response.json();

        // Remove typing indicator
        document.getElementById('bot-typing').remove();

        // Add bot reply to UI
        const botReplyHtml = `
            <div class="flex justify-start mb-3">
                <div class="bg-slate-100 dark:bg-white/5 text-slate-900 dark:text-slate-100 p-3 rounded-lg max-w-[90%] text-sm shadow-sm border parchment-border">
                    ${data.reply}
                </div>
            </div>
        `;
        chatBody.insertAdjacentHTML('beforeend', botReplyHtml);
        chatBody.scrollTop = chatBody.scrollHeight;

    } catch (error) {
        console.error('Error with chatbot:', error);
        document.getElementById('bot-typing').remove();
    }
}
