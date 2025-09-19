import { fileURLToPath, URL } from 'node:url'

import vue from '@vitejs/plugin-vue'
import { defineConfig } from 'vite'
import vueDevTools from 'vite-plugin-vue-devtools'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueDevTools(),
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    },
  },
      server: {
    host: '0.0.0.0',      // Permite el acceso desde fuera del contenedor
    port: 5173,            // Define el puerto del servidor de desarrollo
    watch: {
      usePolling: true     // Habilita el polling para detectar cambios en contenedores
    }
  },
})
