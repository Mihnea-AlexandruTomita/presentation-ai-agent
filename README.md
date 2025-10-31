# presentation-ai-agent

**presentation-ai-agent** is a personal workspace that allows Claude Sonnet to read multiple repositories or Markdown files and generate Marp presentations based on user prompts. The AI can summarise code, research papers, or other documentation and produce structured slides following a consistent template.

This setup is ideal for quickly creating technical presentations from research papers, codebases, or Markdown documentation.

---

## Prerequisites

- **Git**: Required for cloning and updating repositories.  
- **Visual Studio Code**: Required to open the workspace, use the Marp extension, and interact with Claude Sonnet.  
- **Marp for VS Code extension**: Recommended for previewing presentations.  
- **Python**: Required if you plan to extract text from PDFs.

---

## Quick Setup

1. Clone this repository locally and open a PowerShell window in the `presentation-ai-agent` folder: <br>
    ```powershell
    git clone <your-repo-url>
    cd presentation-ai-agent

2. Run the setup script to clone all repositories defined in `setup.ps1`: <br>
    `.\setup.ps1`

   The script clones the following GitHub repositories:
- [ConvSequential-SLAM](https://github.com/Mihnea-AlexandruTomita/ConvSequential-SLAM)
- [low-resolution-vpr](https://github.com/Mihnea-AlexandruTomita/low-resolution-vpr)  
- [seq-based-visual-filtering](https://github.com/Mihnea-AlexandruTomita/seq-based-visual-filtering)  

3. Open the workspace in VS Code: <br>
    `code presentation.code-workspace`

4. Ensure the Marp extension is installed and your `presentation.css` theme is loaded.
5. If you plan to use PDFs, make sure Python is installed and required packages are available: <br>
`python -m pip install pdfplumber`


## Usage
### Generating presentations from repositories

Ask Claude Sonnet in the VS Code chat to generate a presentation. Example prompt:

```
Create a Marp presentation summarising the repository 'ConvSequential-SLAM'.
Follow the rules in copilot-instructions.md.
Split content across slides so text and tables never overlap the footer.
Wrap text in <div class="content"> and tables in <div class="table-wrapper">.
```
Copy Claude's Markdown output into the `presentations/` folder and preview with Marp.

### Generating presentations from PDFs:
1. Place PDF files in `papers/`.
2. Extract them from PDFs into Markdown using the Python script: <br>
    `python extract_pdf.py`
- This will create `.md` files in `papers/papers_md/`.
3. Ask Claude to generate a presentation based on the extracted Markdown:
```
Create a Marp presentation summarising 'papers/papers_md/example.md'.
Follow the rules in copilot-instructions.md.
Split content across slides so text and tables never overlap the footer.
Wrap text in <div class="content"> and tables in <div class="table-wrapper">.
```

4. Save output to `presentations/` and preview with Marp.

## Note: 
- All content generated should follow `copilot-instructions.md`.
- Adjust `presentation.css` for custom slide styling, footer spacing, and table handling.



