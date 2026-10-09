# GA3 answers - Noah Dameron

------------------------------------------------------------------------

## Part A: Your README, data, and Git repo

### 1: Create subdirs and copy files

### 2: Initialize a Git repository, and commit the README and `.gitignore`

### 3: Commit throughout the assignment

------------------------------------------------------------------------

## Part B: Basic shell scripts

### 4: Predict the output of `echo.sh`

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08`): 

- This command will run the script and output `Oct07` on the first line, then `Oct08` on second line. Since a third argument was not provided, the third line will remain blank. The fourth line will print `Finished`.

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10`): 

- This command will run the script and output `Oct07` on line 1, `Oct08` on line 2, `Oct09` on line 3, and `Finished` on line 4. The phrase `Oct10` will not print because only three variables were provided in the script. Even though we provided the script with 4 different arguments, it will just ignore the 4th argument.

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"`): 

- This command will run the script similar to the second command above, except with a change to the third line. It will output `Oct07` on line 1, `Oct08` on line 2, `Oct09 Oct10` on line 3, and `Finished` on line 4. The phrase `Oct09 Oct10` is printed on line 3 because the text is included within double quotes. The double quotes prevents bash from word splitting. This is when bash interprets spaces within a command as spaces between arguments, rather than spaces within an argument. Quoting forces bash to interpret the space as a literal space.

*Answer* (prediction and reasoning for `bash scripts/echo.sh results/fastqc/*.html`):

- This command will print the first three `.html` files within the `results/fastqc/` subdir for lines 1-3 of the output. Line 4 will print `Finished`. By using the wildcard command within the argument, you no longer need to type out specific harcoded arguments for each variable in the script. This helps make the process more automated and reproducible. Only the first three `.html` files will print because only three variables were defined in the script.

### 5: Run `echo.sh` and compare with your predictions

``` bash
bash scripts/echo.sh Oct07 Oct08
```

The output of the command was:

``` 
Oct07
Oct08
scripts/echo.sh: line 6: $3: unbound variable        
```

- My prediction for the first command was incorrect. I predicted that the command would run without error and line three would be printed blank. An error was given instead indicating that we did not include a third argument in the command which would be bounded to the `$3` variable. 

``` bash
bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10
```

The output of the command was:

```  
Oct07
Oct08
Oct09
Finished         
```

- My prediction was correct. Even though more than three arguments were provided, only the first three were printed. This is because only three variables were defined within the script.

``` bash
bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"
```

The output of the command was:

```
Oct07
Oct08
Oct09 Oct10
Finished       
```

- My prediction was correct. By using the double quotes, `Oct09 Oct10` was printed on line 3, rather than the command ignoring `Oct10`. The double quotes tells bash to ignore the word splitting and treat the space as a literal space. 

``` bash
bash scripts/echo.sh results/fastqc/*.html
```

The output of the command was:

```
results/fastqc/S63_R1_fastqc.html
results/fastqc/S63_R2_fastqc.html
results/fastqc/S64_R1_fastqc.html
Finished         
```

- My prediction was correct. By using the wildcard within the argument, you are able to bound the various `.html` files within the folder to each variable within the script. Only the first three `.html` files were printed becuase the script only contains three variables. 

*Answer*: Which output (if any) differed from your prediction, and why?

- The output for the first command differed from my prediction. I had predicted that the third line would be printed blank given only 2 arguments were given within the command. Rather, the third line printed an error showing no argument was bound to the third variable. When executing a script, it is important to ensure an argument is bounded to each variable or an error will be printed (especially because the script is told to do so using `set -euo pipefail`). 

### 6: Write the `printline.sh` script

<!-- No need to paste the script: we'll look at scripts/printline.sh directly. -->

### 7: Test `printline.sh` twice

Test 1:

``` bash
# Your command:
bash scripts/printline.sh data/metadata.tsv 1
```

The output of the command was:

``` 
Starting script printline.sh

File path:
data/metadata.tsv

Contents of line 1:
sample_id       time    treatment

Finished        
```

Test 2 (with redirection), and checking the contents of the output file:

``` bash
# Your command:
bash scripts/printline.sh data/metadata.tsv 2 > results/printline_output.txt
cat results/printline_output.txt
```

The output of the command that checks the file contents was:

```   
Starting script printline.sh

File path:
data/metadata.tsv

Contents of line 2:
S82     10dpi   cathemerium

Finished
```

------------------------------------------------------------------------

## Part C: A script to run MultiQC

### 8: Get a MultiQC container link

*Answer*: The container link (URI) is:

### 9: MultiQC's help info, and the MultiQC command

Code to run `multiqc --help` with the container:

``` bash
# Your command:
```

<!-- You don't need to paste the MultiQC help output -->

The MultiQC command to run MultiQC on `results/fastqc` with output in `results/multiqc`:

``` bash
# Your command:
```

### 10: Write the `multiqc.sh` script

<!-- No need to paste the script: we'll look at scripts/multiqc.sh directly. -->

### 11: Run `multiqc.sh`

Code to run the script:

``` bash
# Your command:
```

<!-- You don't need to paste the MultiQC logging output -->

*Answer*: Number of FastQC reports MultiQC found:

*Answer*: Does that match what you expected? Why/why not?

### 12: Make `multiqc.sh` accept arguments, and rerun it

<!-- No need to paste the script: we'll look at scripts/multiqc.sh and its Git history directly. -->

Code to rerun the script:

``` bash
# Your command:
```

<!-- No need to paste any output -->

### 13: Differences between the two MultiQC runs

*Answer*:

------------------------------------------------------------------------

## Part D: Pandoc to render Markdown

### 14: The structure of the Pandoc command

*Answer* (options and arguments, and what each does):

*Answer* (how does Pandoc know which output format to produce?):

### 15: Render your README to PDF and HTML

``` bash
pandoc -o README.pdf README.md
```

-   Command to render to HTML:

``` bash
# Your command:
```

### 16: Should the rendered files be committed?

*Answer*: Should the rendered files be committed to your Git repo? Why/why not?

### 17: Install the PDF Viewer extension and view the PDF

*Answer*: One observation about the rendered PDF file:

## Part E: Publish your repo on GitHub

### 18: Create a GitHub repository

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 19: Connect your local repo to GitHub, and push

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 20: Create an Issue to tag the instructors

<!-- No command/output needed here -- we check your GitHub repo directly. -->

------------------------------------------------------------------------

## Bonus

### 21: Explore the MultiQC report

*Answer* (one insight you gained):

*Answer* (one thing you're confused about):

### 22: Pandoc versions

``` bash
# Your command:
```

The output of the command(s) was:

```         
```

*Answer*: Is the Pandoc version available by default the most recent one?

*Answer*: Which Pandoc version are you using after loading the module?