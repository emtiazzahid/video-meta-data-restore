# Set the path to the directory containing your videos
$directoryPath = "C:\path\to\your\videos"

# Navigate to the directory
Set-Location -Path $directoryPath

# Get all MP4 files in the directory
$files = Get-ChildItem -Filter "*.mp4"

foreach ($file in $files) {
    # Extract the date and time from the filename using a regular expression
    if ($file.Name -match '(\d{4})(\d{2})(\d{2}) (\d{2})(\d{2})(\d{2})') {
        $year = $matches[1]
        $month = $matches[2]
        $day = $matches[3]
        $hour = $matches[4]
        $minute = $matches[5]
        $second = $matches[6]

        # Create a new DateTime object from the extracted values
        $creationDate = [datetime]::new($year, $month, $day, $hour, $minute, $second)

        # Set the file system creation time and last write time
        (Get-Item $file.FullName).CreationTime = $creationDate
        (Get-Item $file.FullName).LastWriteTime = $creationDate

        # Format the date for FFmpeg (ISO 8601)
        $ffmpegDate = $creationDate.ToString("yyyy-MM-ddTHH:mm:ss")

        # Use FFmpeg to set the media creation date
        $outputFile = [System.IO.Path]::Combine($directoryPath, "updated_" + $file.Name)
        $ffmpegCommand = "ffmpeg -i `"$($file.FullName)`" -metadata creation_time=`"$ffmpegDate`" -codec copy `"$outputFile`""
        Invoke-Expression $ffmpegCommand

        # Replace the original file with the updated one
        Remove-Item $file.FullName
        Rename-Item -Path $outputFile -NewName $file.Name
    } else {
        Write-Host "Filename $($file.Name) does not match the expected pattern."
    }
}

Write-Host "File and media creation dates updated successfully."
