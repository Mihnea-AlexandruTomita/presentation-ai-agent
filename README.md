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

1. Clone this repository locally and open a PowerShell window in the `presentation-ai-agent` folder:

    ```powershell
    git clone <your-repo-url>
    cd presentation-ai-agent

2. Run the setup script to clone all repositories defined in setup.ps1:
    `.\setup.ps1`

3. Open the workspace in VS Code:
    `code presentation.code-workspace`

4. Ensure the Marp extension is installed and your `presentation.css` theme is loaded.

## Usage
### Generating presentations from repositories

Ask Claude Sonnet in the VS Code chat to generate a presentation. Example prompt:

```
Create a Marp presentation summarising the repository 'ConvSequential-SLAM'.
Follow the rules in copilot-instructions.md.
Split content across slides so text and tables never overlap the footer.
Wrap text in <div class="content"> and tables in <div class="table-wrapper">.
```
Copy Claude's Markdown output into the presentations/ folder and preview with Marp.


