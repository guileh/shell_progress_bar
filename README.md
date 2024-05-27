# ShellScript Progress Bar

This ShellScript provides a simple way to display a progress bar in the terminal while executing a task. It allows users to visualize the completion status of a process, particularly useful for tasks with multiple steps or iterations.
## Usage
1. Clone the Repository

Clone the repository containing the ShellScript progress bar.

```bash

git clone https://github.com/guileh/shell_progress_bar.git
```
2. Execute the Script

Run the ShellScript in your terminal, passing the necessary parameters as arguments.

```bash

./progress_bar.sh
```
3. Customize as Needed

Modify the script according to your specific use case. You can adjust parameters such as the total number of iterations or the characters used to represent progress and empty spaces.
Functionality

The script consists of a progress function that calculates the progress percentage and displays it as a visual progress bar in the terminal. It takes the following parameters:
```
    CURRENT: The current progress value (default is 1).
    TOTAL: The total progress value (default is 100).
    EMPTY_CHAR: The character representing empty space in the progress bar (default is "_").
    DONE_CHAR: The character representing completed progress in the progress bar (default is "|").
```
## Sample Usage

```bash

# Define an array of files to process
FILES=( "myfile1.txt" "myfile2.txt" "myfile3.txt" "myfile4.txt" )
TOTAL_FILES=${#FILES[@]}

# Display a message indicating processing has begun
echo "Processing files ..."

# Iterate over each file and simulate processing
i=0
for f in "${FILES[@]}"
do
   i=$((i + 1))
   # Call the progress function to update the progress bar
   progress $i $TOTAL_FILES
   # Simulate processing time (e.g., replace with actual processing commands)
   sleep 2
done

# Display a message indicating processing has completed
printf "\n%s\n" "Files Processed"
```
> Note
>Adjust the processing logic within the loop according to your specific task. This example includes a simple sleep command to simulate processing time. Replace this with the actual commands required to process your files.
