# Download-Sorter
Automatically sort downloads to custom locations on macOS  

Using Automator in macOS, this script will sort your downloads based on given file name keywords and patterns.  

## Setup
In your home directory, clone this repository. Then execute the following.  
```
mv Download-Sorter .download_sorter  
cd .download_sorter  
touch key  
```
Within the key file, add your criteria for sorting.  
On a single line you must have:  
- one or more keywords or patterns
- the full path (including the final "/") of the directory to move files to

If a file name has one of the keywords or patterns in it, it will automatically be moved to the folder from that line.

Finally, open `Download-Sorter.workflow` with Automator Installer, and follow the prompts. 

## Examples  
I found myself wanting to automatically put all of my lectures for classes in their corresponding folders. 
Below you can see all files with the keyword "CS3003" in the name will be moved to the listed folder. 
```
CS3003 /Users/bstarcheus/UC/2020-Summer/ProgramLang/
```
I could also sort all .zip files and files that have the word "report" to my desktop.
```
*.zip report /Users/bstarcheus/Desktop/
```