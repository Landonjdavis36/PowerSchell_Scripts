# Define the path to the PS2EXE script (adjust this to where you've saved the script)
$ps2exePath = "C:\path\to\ps2exe.ps1"

# Ask the user for the input PS1 script and the output EXE path
$sourceScript = Read-Host "Enter the path to the .ps1 script you want to convert"
$outputExe = Read-Host "Enter the path where the .exe should be saved (include the .exe in the path)"

# Use PS2EXE to convert the script
& $ps2exePath -inputFile $sourceScript -outputFile $outputExe

Write-Host "Conversion completed!"
