# Directory Structure Generator  

## Description  
The **Directory Structure Generator** is a shell script that automates the creation of a nested directory structure for the years 2018 and 2019. Each year contains directories for each month (01 to 12), and each month contains directories for days (01 to 30). Additionally, the script generates random Git commits within daily directories, simulating realistic version control scenarios.  

This project can be helpful for testing, demonstrating Git features, or organizing files by date.  

## Features  
- Creates a structured directory hierarchy for the years 2018 and 2019.  
- Monthly and daily directories contain random Git commits.  
- Each commit includes a timestamp formatted in ISO 8601.  
- Demonstrates basic Git usage in a scripted environment.  

## Installation  
To install and run the Directory Structure Generator, follow these steps:  

1. Clone the repository to your local machine:  

    ```bash  
    git clone https://github.com/TechSavvyAce/directory-structure-generator.git  
    ```  

2. Navigate to the cloned directory:  

    ```bash  
    cd directory-structure-generator  
    ```  

3. Ensure you have Git installed on your system.  

## Usage  
To execute the script, run the following command in your terminal:  

```bash  
bash create_directories.sh  
