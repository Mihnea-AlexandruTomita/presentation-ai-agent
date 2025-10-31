# Copilot Instructions for Presentation AI Agent

## Language and Style
- Use **British English** (colour, organisation, etc).
- Write in a **technical, objective, non-personal tone**.
- Avoid “I” or conversational phrasing. Use concise documentation style.
- Use active voice when possible.

---

## Behaviour in Agent Mode
This repository contains multiple code repositories (public, research-based).  
You can:
- Access and read code and `.md` files in these repositories.
- Answer questions about their content.
- Generate slide presentations upon request.

## Navigation
- Feel free to explore the codebase to understand the context.
- Feel free to look in the following directories:
   - `/repos` - contains all cloned repositories.
   - `/ConvSequential-SLAM` - contains a local copy of the ConvSequential-SLAM repository.
   - `/low-resolution-vpr` - contains a local copy of the Low-Resolution-VPR repository.
   - `/seq-based-visual-filtering` - contains a local copy of the Seq-Based-Visual-Filtering repository.

When asked to **make a presentation**, follow these strict rules:

1. Use the `/presentations` directory for all generated slides.
2. Slides must be written in **Marp Markdown format**.
3. Always include the following YAML header:

   ```yaml
   marp: true
   theme: presentation
   paginate: true
   header: 
   footer: 
   size: 16:9
4. The title slide must include:
   - `<!-- _class: title -->`
5. The closing slide must include:
   - `<!-- _class: end -->`
6. Use the presentations/presentaiton.css file for styling.
7. Keep slide concise, visually clear, and structured logically (Title, Overview, Key Points, Results, Concluding Remarks)
8. If necrssary, ask the user clarifying questions before creating slides.
9. Always produce new content in the root sandbox folder (never overwrite repos).
10. Save the presentation with a descriptive filename (e.g., `ConvSequential-SLAM_Presentation.md`) in the `/presentations` directory.
11. If the content is too long for one page, split it into multiple pages.
12. Limit each slide to 5 bullet points or 5 lines of text. 
13. Split tables across multiple slides if necessary. 
14. Wrap all content in `<div class="content">` and tables in `<div class="table-wrapper">`.