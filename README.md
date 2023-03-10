# Instructions for using the "findfls.sh" script

The "findfls" script is a Bash script that allows you to find all files of a specific type in a directory (and its subdirectories) and output the results to a file.

## Prerequisites

To use the script, you'll need:

- A Bash shell (e.g. Git Bash on Windows)
- Basic knowledge of Bash commands and syntax

## Usage

1. Download the "findfls.sh" script to your computer and save it to a directory of your choice. For example, you can save it to your home directory (`~/findfls.sh`).

2. Open a Bash shell and navigate to the directory containing the script:

```cd /path/to/script/directory```


3. Make the script executable by running the following command:

```chmod +x find_files.sh```


4. To find all files of a specific type in a directory (and its subdirectories), run the following command:

```./findflss.sh filetype directory output_file```


Replace "filetype" with the file extension you want to search for (e.g. "txt"), "directory" with the directory you want to search in (e.g. "~/Documents/"), and "output_file" with the name of the file you want to save the results to (e.g. "results.txt").

For example, to find all .txt files in your Documents directory and save the results to a file named "results.txt", you can run:

```./findfls.sh txt ~/Documents/ results.txt```


5. The script will search the specified directory (and its subdirectories) for all files of the specified type and save the full path names of the files to the specified output file. The output file will be created in the directory where the script is located.

6. Once the script has finished running, you can view the results by opening the output file in a text editor.

## Notes

- If you want to use the script from any directory (i.e. without specifying the full path), you can add the directory containing the script to your PATH environment variable in your Bash shell startup file (e.g. `~/.bashrc`). See the instructions above for more details. OR.

- the best way is to copy file in the home directory. For example home directory of Git Bash on Windows OS is in ```c/users/yourusername```. If you are using Windows Git Bash or Linux terminal, you can cd into that directory like this: ```cd ~```. If you are using Windows OS there is a big possibility there wont be ```.bashrc``` file created yet. You should create it by yourself. from your terminal: ```touch .bashrc```. then paste ```alias findfls="$HOME/findfls.sh"``` line into it and save. Now you can use ```findfls``` command from any directory.

- If you want to change the default search depth (i.e. the number of levels of subdirectories to search), you can modify the `maxdepth` variable in the script.

- If you want to search for files with multiple file extensions (e.g. ".txt" and ".md"), you can use a wildcard character ("*") in the `filetype` argument. For example, to search for all .txt and .md files, you can run:

```./findfls.sh "*.{txt,md}" ~/Documents/ results.txt```

