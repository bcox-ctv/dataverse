import os
import pandas as pd
from tabula import read_pdf
from openpyxl import Workbook

# Function to convert PDF tables to Excel
def pdf_to_excel(pdf_path, excel_path):
    if not os.path.exists(pdf_path):
        print(f"Error: File {pdf_path} does not exist.")
        return

    # Read tables from the PDF
    try:
        tables = read_pdf(pdf_path, pages="all", multiple_tables=True, lattice=True)
    except Exception as e:
        print(f"Error reading PDF: {e}")
        return

    if not tables:
        print("No tables found in the PDF.")
        return

    # Create a new Excel workbook
    with pd.ExcelWriter(excel_path, engine="openpyxl") as writer:
        for i, table in enumerate(tables):
            sheet_name = f"Table_{i+1}"
            table.to_excel(writer, sheet_name=sheet_name, index=False)
    
    print(f"Excel file created at: {excel_path}")

# Example usage
pdf_path = "/Users/briancox/Downloads/WSHS Data Dictionary_892 2.pdf"  # Replace with your PDF file path
excel_path = "output.xlsx"  # Replace with your desired Excel file path
pdf_to_excel(pdf_path, excel_path)