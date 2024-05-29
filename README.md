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
