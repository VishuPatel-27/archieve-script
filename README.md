# File Archiving Script

A versatile Bash script to archive and compress files in a specified directory based on user-defined criteria, such as file size and age. The script provides flexibility to customize these criteria according to specific requirements.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Configuration](#configuration)
- [Installation](#installation)
- [Customization](#customization)
- [Requirements](#requirements)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)

## Introduction

This Bash script automates the process of archiving and compressing files in a specified directory based on user-defined criteria. It utilizes the `find` command to locate qualifying files based on size and optionally age, then compresses and moves them to an 'archive' folder.

## Usage

To use the file archiving script, simply run the script in the terminal:

```bash
./archive_files.sh
```

## Configuration

Before running the script, you may want to configure the following variables in the script:

```bash
BASE_PATH=/home/imv27/Desktop/LargerFiles    # Path of the directory where files reside
AGE_OF_FILE=1                                # How old files should be (in days)
DEPTH=1                                      # Depth for the find command
```

Ensure that the specified directory exists, and the 'archive' folder will be created within it.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/file-archiving-script.git
   ```

2. Navigate to the project directory:

   ```bash
   cd file-archiving-script
   ```

3. Make the script executable:

   ```bash
   chmod +x archive_files.sh
   ```

4. Run the script:

   ```bash
   ./archive_files.sh
   ```

## Customization

- **File Size Criterion:**
  - You can customize the file size criterion by modifying the `-size` option in the `find` command. For example, to archive files larger than 1MB, change `-size +500k` to `-size +1M`.

- **Age of Files:**
  - Adjust the `AGE_OF_FILE` variable to define how old files should be, in days.

## Requirements

- Bash (Bourne Again SHell)
- `gzip` command (for compression)
- `find` command

## Contributing

Contributions are welcome! If you'd like to contribute to the project, please follow the [contribution guidelines](CONTRIBUTING.md).

## Acknowledgments

- The script leverages common Linux commands for file manipulation and archiving.
