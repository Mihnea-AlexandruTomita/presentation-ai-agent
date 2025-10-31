import pdfplumber
import os

pdf_folder = "papers"
output_folder = "papers/papers_md"
os.makedirs(output_folder, exist_ok=True)

for filename in os.listdir(pdf_folder):
    if filename.lower().endswith(".pdf"):
        pdf_path = os.path.join(pdf_folder, filename)
        md_filename = os.path.splitext(filename)[0] + ".md"
        md_path = os.path.join(output_folder, md_filename)

        with pdfplumber.open(pdf_path) as pdf:
            text = ""
            for page in pdf.pages:
                text += page.extract_text() + "\n\n"

        with open(md_path, "w", encoding="utf-8") as f:
            f.write(text)

        print(f"Extracted {filename} → {md_path}")
