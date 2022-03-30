# This PowerShell script helps you rename files in the current folder in bulk
# 
# I wrote this command to strip a big number of image files off a "Size=" prefix.
# For example, I had a file named "Size=48.svg" and wanted to rename it to "48.svg".
# That's how the example command works as well.
# 
# The first command is "Get-ChildItem" which finds all files in the current directory.
# "-Recurse" tells the command to recursively files in subfolders.
# "-Filter" tells the command to filter the files by name using asterisks for wildcards.
#
# The results are piped into the Rename-Item command.
# "-NewName" tells the command to use the following as the new file name, replacing any occurence of
# "Size=" with "" (empty string).
Get-ChildItem -Recurse -Filter "*Size=*" | Rename-Item -NewName {$_.name -replace 'Size=',''}
