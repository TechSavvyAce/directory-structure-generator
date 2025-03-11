# Directory Structure Generator

## Description
The **Directory Structure Generator** is a shell script that automates the creation of a nested directory structure for a range of years (2020 through 2025). Each year contains directories for each month (01 to 12) and each month contains directories for valid days. In addition, the script generates random Git commits within daily directories to simulate a realistic version control history. The updated version now **excludes weekends (Saturday and Sunday)** and—for the year 2025—creates directories and commits only up to **March 10**.

This project is perfect for testing, demonstrating Git features, or organizing files by date in a simulated environment.

## Features
- **Directory Hierarchy:** Creates a structured directory layout for the years 2020 through 2025.
- **Date Validity:** Automatically handles valid dates for each month (skips invalid dates like February 30).
- **Weekday Commits:** Excludes weekends (Saturday and Sunday) from directory and commit generation.
- **Limited Generation for 2025:** For the year 2025, only dates up to March 10 are processed.
- **Random Git Commits:** Generates random Git commits in each daily directory with ISO 8601 formatted timestamps.
- **Cleanup Routine:** Includes cleanup commands to remove older directories (if present) for a fresh start.

## Installation
To install and run the Directory Structure Generator, follow these steps:

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/TechSavvyAce/directory-structure-generator.git
    ```
2. **Navigate to the Cloned Directory:**
    ```bash
    cd directory-structure-generator
    ```
3. **Ensure Git is Installed:**  
   Verify that Git is installed on your system before proceeding.

## Usage
To execute the script, run the following command in your terminal:

```bash
bash scratch.sh
