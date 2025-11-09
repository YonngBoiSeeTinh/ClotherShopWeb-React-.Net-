import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

export default defineConfig({
    plugins: [react()],
    server: {
        port: 5173,
        host: true,
        watch: {
            usePolling: true,
        },
        proxy: {
            '/api': {
                target: 'http://gosyapi.runasp.net',
                changeOrigin: true,
                rewrite: (path) => path.replace(/^\/api/, '/api'),
            },
        },
    },
});
