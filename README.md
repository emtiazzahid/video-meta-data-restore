# Video Metadata Date Restoration Script

This repository contains a PowerShell script that updates the creation date metadata of video files based on their filenames. The script processes video files in a specified directory, extracts the date and time from their filenames, and updates both the file system creation date and the media creation date metadata.

## Purpose

When converting videos or transferring them between devices, the original creation date might be lost. This script helps restore the creation date using the date embedded in the filenames, ensuring that both the file system and the media metadata reflect the correct creation date.

## Prerequisites

- Windows operating system
- PowerShell
- [FFmpeg](https://ffmpeg.org/download.html) (Make sure FFmpeg is added to your system’s PATH)

## How to Use

1. **Download and Install FFmpeg**
   - Visit the [FFmpeg download page](https://ffmpeg.org/download.html).
   - Download the appropriate version for your system.
   - Follow the installation instructions and ensure FFmpeg is added to your system’s PATH.

2. **Clone the Repository**
   ```sh
   git clone https://github.com/yourusername/video-metadata-date-restoration.git
   cd video-metadata-date-restoration
3. **Open PowerShell as Administrator**
   - Press Win + X and select Windows PowerShell (Admin).
4. **Edit the Script Path**
   - Open UpdateMediaCreationDates.ps1 in a text editor.
   - Update the $directoryPath variable with the path to your video files directory.
5. **Run the Script**
   - In the PowerShell window, navigate to the script directory
   ```cd C:\path\to\your\script```
   - Execute the script:
   ```.\UpdateMediaCreationDates.ps1```

## Notes
   - Ensure your filenames are in the format YYYYMMDD HHMMSS.mp4 for the script to work correctly.
   - The script creates a temporary file with the prefix updated_ before renaming it back to the original filename.

## License
  - This project is licensed under the MIT License - see the LICENSE file for details.
