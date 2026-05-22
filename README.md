# Sistema de Currículum Vítae Segmentado: Víctor Alonso

Este repositorio contiene un sistema modular y profesional de generación de currículums en PDF utilizando **LaTeX (XeLaTeX)**, la familia tipográfica **Fira Sans** y un flujo de integración continua con **GitHub Actions**.

El currículum se segmenta estratégicamente en tres versiones en dos idiomas (**Español** e **Inglés**) junto con formatos optimizados para Lectores de Pantalla/IAs, permitiendo optimizar el impacto y la tasa de conversión según el canal de candidatura y el tipo de cliente u oferta.

---

## 🚀 Enlaces Directos de Descarga (PDFs Compilados)

Si estás visitando este repositorio, puedes ver o descargar los PDFs compilados directamente haciendo clic en los siguientes enlaces:

### 📱 1. Perfil Android (Visual Premium)
*   **Español:** [cv-victor-android-es.pdf](./dist/cv-victor-android-es.pdf)
*   **Inglés:** [cv-victor-android-en.pdf](./dist/cv-victor-android-en.pdf)

### 🌐 2. Perfil FullStack & Consultor SEO Técnico (Visual Premium)
*   **Español:** [cv-victor-fullstack-seo-es.pdf](./dist/cv-victor-fullstack-seo-es.pdf)
*   **Inglés:** [cv-victor-fullstack-seo-en.pdf](./dist/cv-victor-fullstack-seo-en.pdf)

### 🤖 3. Perfil Unificado ATS-Friendly (Una sola columna)
*   **Español:** [cv-victor-ats-es.pdf](./dist/cv-victor-ats-es.pdf)
*   **Inglés:** [cv-victor-ats-en.pdf](./dist/cv-victor-ats-en.pdf)

### 🧠 4. Versiones Optimizadas para Modelos de IA (LLMs)
*   **Español:** [cv-victor-llm-es.md](./src/cv-victor-llm-es.md)
*   **Inglés:** [cv-victor-llm-en.md](./src/cv-victor-llm-en.md)

---

## 🎯 Guía Estratégica: ¿Qué versión usar en cada caso?

### 1. Perfil Android (Visual Premium)
*   **Enfoque:** Especialista sénior con 15 años de experiencia en arquitectura móvil y Android nativo. Diseñado bajo la premisa de ingeniería de alto nivel y consultor técnico móvil.
*   **Título:** `Senior Android Engineer · Kotlin/Java · Firebase · Mobile Architecture`
*   **Diseño:** Premium a dos columnas, con foto de perfil circular integrada.
*   **Cuándo usarlo:** Envío directo (por correo, LinkedIn o marca personal) a recruiters técnicos, directores de tecnología (CTO), fundadores de Startups móviles o vacantes específicas de desarrollo Android nativo de alta especialización.

### 2. Perfil FullStack & SEO Técnico (Visual Premium)
*   **Enfoque:** Desarrollador web FullStack y consultor de SEO técnico avanzado + WPO. Enfocado en optimización de rendimiento web, indexabilidad, logs, infraestructura de servidores y desarrollo a medida en WordPress y Laravel.
*   **Título:** `Senior Android Engineer · FullStack Developer · Technical SEO Consultant`
*   **Diseño:** Premium a dos columnas, con foto de perfil circular integrada.
*   **Cuándo usarlo:** Clientes directos de desarrollo web, agencias de marketing digital, consultorías de posicionamiento orgánico, e-commerce managers o vacantes FullStack con fuerte peso en PHP/WordPress/Laravel.

### 3. Perfil Unificado ATS-Friendly (Una sola columna)
*   **Enfoque:** Currículum técnico sénior unificado y completo (Android + FullStack Web + SEO Técnico).
*   **Título:** `Senior Software Engineer · Android, FullStack & Technical SEO`
*   **Diseño:** Estilo lineal a **una sola columna, sin fotos, sin tablas complejas y sin iconos gráficos**.
*   **Cuándo usarlo:** Candidaturas automáticas en portales de empleo masivos (InfoJobs, LinkedIn Jobs, Workday, Taleo, Greenhouse, etc.). Los sistemas de filtrado automático (ATS) pueden leer y parsear este archivo con una fiabilidad del 100% sin confundir columnas o cortar caracteres.

---

## 📂 Estructura del Proyecto

La arquitectura del repositorio está diseñada para ser modular, limpia y altamente mantenible:

```text
├── assets/
│   └── victor-profile.png           # Foto de perfil recortada y optimizada para LaTeX
├── src/
│   ├── common/
│   │   ├── data-victor.tex          # Variables comunes de contacto, teléfono, webs y redes
│   │   ├── style-premium.tex        # Hoja de estilos premium (dos columnas, TikZ, colores)
│   │   └── style-ats.tex            # Hoja de estilos ATS (línea única, alto contraste, básica)
│   ├── cv-victor-android-es.tex     # Origen especializado para Mobile (Español)
│   ├── cv-victor-android-en.tex     # Origen especializado para Mobile (Inglés)
│   ├── cv-victor-fullstack-seo-es.tex # Origen FullStack & SEO (Español)
│   ├── cv-victor-fullstack-seo-en.tex # Origen FullStack & SEO (Inglés)
│   ├── cv-victor-ats-es.tex         # Origen lineal ATS (Español)
│   ├── cv-victor-ats-en.tex         # Origen lineal ATS (Inglés)
│   ├── cv-victor-llm-es.md          # Versión optimizada para IAs (Español)
│   └── cv-victor-llm-en.md          # Versión optimizada para IAs (Inglés)
├── dist/
│   ├── cv-victor-android-es.pdf     # PDF generado para Android (Español)
│   ├── cv-victor-android-en.pdf     # PDF generado para Android (Inglés)
│   ├── cv-victor-fullstack-seo-es.pdf # PDF generado para FullStack/SEO (Español)
│   ├── cv-victor-fullstack-seo-en.pdf # PDF generado para FullStack/SEO (Inglés)
│   ├── cv-victor-ats-es.pdf         # PDF generado para ATS (Español)
│   └── cv-victor-ats-en.pdf         # PDF generado para ATS (Inglés)
├── Makefile                         # Automatización de tareas locales (make)
├── .latexmkrc                       # Configuración predeterminada de latexmk
├── .gitignore                       # Filtro para excluir archivos temporales de LaTeX
└── .github/
    └── workflows/
        └── build.yml                # CI/CD: Compilación y validación en GitHub Actions
```

---

## 🛠️ Compilación y Mantenimiento

### Requisitos Locales
Asegúrate de tener instalado en tu sistema un motor LaTeX compatible con fuentes locales (recomendado **XeLaTeX**), `latexmk` y la familia de fuentes **Fira Sans** instalada en tu sistema operativo:

*   En sistemas Debian/Ubuntu:
    ```bash
    sudo apt-get update
    sudo apt-get install texlive-xetex texlive-fonts-recommended texlive-latex-extra latexmk fonts-fira-sans
    ```

### Comandos de Compilación (Makefile)
Hemos automatizado todo el flujo local. Ejecuta los siguientes comandos desde la raíz del proyecto:

*   **Compilar todos los CVs a la vez:**
    ```bash
    make all
    ```
*   **Limpiar el directorio (eliminar archivos temporales de LaTeX):**
    ```bash
    make clean
    ```

---

## 🚀 Integración Continua (CI/CD)

Cada vez que realizas un `git push` a la rama `main`, la **GitHub Action** configurada:
1. Inicializa un contenedor virtual Ubuntu.
2. Descarga la suite completa de XeLaTeX y la tipografía Fira Sans.
3. Compila todos los archivos `.tex` de forma limpia.
4. Genera todos los PDFs finales en el directorio `./dist` y los sube como artefactos descargables, además de validar que todo compila a la perfección.
