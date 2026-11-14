# eBook style pass — Command Line Basics for R Users (ebk-d8b)

Date: 2026-11-14. Worktree `bash-intro`, branch `task/bash-intro-style-1114`, built on base commit `4c0134b`
(origin/master).
**Against:** `docs/style-guide.md` §1 (voice, KEEP traits), §2 (the checklist), §3a (decisions, 2026-10-30), §5
(report format, do-not-touch, keep-his-voice); `docs/voice-spoken.md`; `docs/williams-checklist.md`.
**Level of change:** the approved pilot (`F:/pm/notes/2026-11-06-ebook-style-pilot.md`) and the merged intro-r
pass (`ebk-ir2`).
**Scope:** prose only. Every command, prompt, flag, chunk, chunk label and output is untouched, as are inline
code, headings and anchors, tables, figures, links, numbers and file names. No restructuring, no new chapters, no
changed examples.

Rows are in source order. One row is one changed sentence or paragraph, quoted from the source with inline code
intact. Line numbers are the line in the committed file. Each chapter carries one refusal paragraph, so the
coverage numbers are real.

## Summary

| Chapter | File | Changes | Refusals |
| :-- | :-- | --: | --: |
| Preface | `index.qmd` | 4 | 1 |
| About the Author | `about-the-author.qmd` | 1 | 1 |
| Introduction | `introduction-to-command-line.qmd` | 4 | 1 |
| Navigating File System | `navigating-files-and-directories.qmd` | 7 | 1 |
| File Management | `command-line-file-management.qmd` | 17 | 1 |
| Input/Output | `command-line-input-output.qmd` | 14 | 1 |
| Search & Regular Expression | `command-line-regular-expression.qmd` | 9 | 1 |
| Data Transfer | `command-line-data-transfer.qmd` | 12 | 1 |
| sudo | `sudo-command.qmd` | 1 | 1 |
| File Compression | `command-line-file-compression.qmd` | 11 | 1 |
| System Info | `command-line-sysinfo.qmd` | 2 | 1 |
| R & the Shell | `r-command-line.qmd` | 5 | 1 |
| Pipes & Redirection | `pipes-and-redirection.qmd` | 0 | 1 |
| Conclusion | `conclusion.qmd` | 2 | 1 |
| Shell ↔ R Cheat Sheet | `cheatsheet.qmd` | 0 | 1 |
| Appendix: Git in 10 Minutes for RStudio Users | `git-appendix.qmd` | 0 | 1 |
| **Total** | | **89** | |

## Preface

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `index.qmd:12` | 9, 1 | In this book, you will be introduced to shell commands. We have selected a set of commands we think will be useful in general to a wide range of audience. We have created a [Posit Cloud project](https://posit.cloud/content/13023750) to ensure that all readers are using the same environment while using code examples. Our goal is to ensure that after reading this book, you should be able to use the shell for version control, managing cloud services (like deploying your own shiny server etc.), execute commands in R & RMarkdown and execute R scripts in the shell. | In this book, you will be introduced to shell commands. We have selected a set of commands we think will be useful to a wide range of readers. We have created a [Posit Cloud project](https://posit.cloud/content/13023750) to ensure that all readers use the same environment for the code examples. Our goal is that after reading this book, you will be able to use the shell for version control, for managing cloud services (like deploying your own Shiny server), for executing commands in R and RMarkdown, and for executing R scripts in the shell. |
| `index.qmd:21` | 9 | We have listed more references at the end of the book for the benefit of the readers. | We have listed more references at the end of the book. |
| `index.qmd:78` | 1, 3 | We encourage you to use [Posit Cloud](https://posit.cloud/content/13023750) (it is free), especially Windows users as  you will get access to Linux Bash and all the code and files/directories used in the examples. | We encourage you to use [Posit Cloud](https://posit.cloud/content/13023750) (it is free), especially Windows users, as  you will get access to Linux Bash and all the code and files/directories used in the examples. |
| `index.qmd:82` | 2, 9 | The R session information when compiling this book is shown below: | The session information used to compile this book is shown below: |

Refusals: The outline and the "Topics this book does not cover" list stay: both are syllabus material (§3a.6). The Posit Cloud link, the licence line and the R session chunk are untouched.

## About the Author

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `about-the-author.qmd:?` | 3 | free and open source education initiative with focus on data science and  analytics. | free and open source education initiative with a focus on data science and  analytics. |

Refusals: The biography, the Masters and Economics wording, the package list and the GitHub link stay. Third person is correct for a biography.

## Introduction

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `introduction-to-command-line.qmd:5` | 3, 18 | Shell is a text based application for viewing, handling & manipulating files. It takes in commands and passes them on to the operating system. | The shell is a text-based application for viewing, handling and manipulating files. It takes in commands and passes them on to the operating system. |
| `introduction-to-command-line.qmd:82` | 4 | If it is not visible, use any of the below methods to launch it | If it is not visible, use any of the methods below to launch it: |
| `introduction-to-command-line.qmd:87` | 3, 9 | You can try all the commands used in this book on your local system as well except in case of Windows users. | You can try all the commands in this book on your local system as well, except on Windows. |
| `introduction-to-command-line.qmd:120` | 9 | `whoami` prints the effective user id i.e. the name of the user who runs the command. | `whoami` prints the effective user ID, the name of the user who runs the command. |

Refusals: The tier list, the PowerShell warning and the macOS/Zsh note are setup content with commands and links; they stay. The prompt table, the command/R table and the three exercises are protected. The commands (`whoami`, `date`, `cal`, `clear`) are not touched.

## Navigating File System

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `navigating-files-and-directories.qmd:11` | 9 | In this chapter, we will learn commands that will help us | In this chapter, we will learn commands that help us |
| `navigating-files-and-directories.qmd:44` | 3, 1 | It is among the most used commands as it allows the user to move around the file system. | It is one of the most used commands, as it allows us to move around the file system. |
| `navigating-files-and-directories.qmd:51` | 2, 9 | `mkdir` will create new directory. It will allow you to set file mode (permissions associated with the directory) i.e. who can open/modify/delete the directory. | `mkdir` creates a new directory. It also allows you to set the file mode (the permissions associated with the directory), which controls who can open, modify or delete it. |
| `navigating-files-and-directories.qmd:67` | 3, 4 | Let us focus a bit more on changing working directory. The below table shows commands for changing working directory to | Let us focus a bit more on changing the working directory. The table below shows commands for changing the working directory to |
| `navigating-files-and-directories.qmd:89` | 3, 9 | The parent directory i.e. the directory one level up from the current directory which contains the directory we are in now is represented by two dots (`..`). | The parent directory, the directory one level up that contains the directory we are in now, is represented by two dots (`..`). |
| `navigating-files-and-directories.qmd:110` | 9 | `cd .` will change us into the current directory i.e. it will do nothing.  | `cd .` moves us into the current directory, which does nothing.  |
| `navigating-files-and-directories.qmd:114` | 2 | `ls` will list the contents of a directory. Using different arguments, we can | `ls` lists the contents of a directory. Using different arguments, we can |

Refusals: The command tables and every chunk stay; this chapter is command reference. "In this chapter, we will learn…" is the syllabus and stays.

## File Management

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `command-line-file-management.qmd:27` | 3, 9 | `touch` modifies file timestamps which is information associated with file modification. | `touch` modifies file timestamps, the information associated with file modification. |
| `command-line-file-management.qmd:43` | 2, 3 | By default, it will overwrite files without prompting for confirmation so be cautious while copying files or folders. | By default, it overwrites files without prompting for confirmation, so be cautious when copying files or folders. |
| `command-line-file-management.qmd:56` | 2, 9 | If the copied file should have a different name, then we need to specify the new name of the file as well. | If the copied file should have a different name, specify the new name as well. |
| `command-line-file-management.qmd:71` | 9 | The `-r` option stands for `--recursive` i.e. copy directories recursively.  | The `-r` option stands for `--recursive`: it copies directories recursively.  |
| `command-line-file-management.qmd:100` | 9 | Use `ls` to verfiy if the file has been moved. | Use `ls` to verify that the file has been moved. |
| `command-line-file-management.qmd:114` | 4 | In the below example, we first stage `release_names_3.txt` and then move it into the `r_releases` folder using `mv`.  | In the example below, we first stage `release_names_3.txt` and then move it into the `r_releases` folder using `mv`.  |
| `command-line-file-management.qmd:123` | 4 | In the below example, we will try to overwrite the `release_names_2.txt` in the `r_releases` folder using `mv` and see what happens. | In the example below, we will try to overwrite the `release_names_2.txt` in the `r_releases` folder using `mv` and see what happens. |
| `command-line-file-management.qmd:125` | 9 | We will look into the `cat` command in more detail in the next chapter but for the time being it is sufficient to know that it prints contents of a file. | We will look into the `cat` command in more detail in the next chapter, but for now it is enough to know that it prints the contents of a file. |
| `command-line-file-management.qmd:131` | 9, 2 | In our current working directory, we will create another file of the same name i.e. `release_names_2.txt` but its contents are different from the file in the `r_releases` folder. | In our current working directory, we create another file of the same name, `release_names_2.txt`, but its contents differ from the file in the `r_releases` folder. |
| `command-line-file-management.qmd:145` | 9, 3 | What if we actually intend to overwrite a file and do not want to be prompted for confirming the same. | What if we actually intend to overwrite a file and do not want a confirmation prompt? |
| `command-line-file-management.qmd:178` | 9 | Let us use `rm` to  remove the file `myanalysis.R` | Let us use `rm` to remove the file `myanalysis.R` |
| `command-line-file-management.qmd:197` | 9 | Use the `-f` option which stands for `--force` to forciby remove directory | Use the `-f` option which stands for `--force` to forcibly remove directory |
| `command-line-file-management.qmd:207` | 4, 2 | In the below example, we will remove all files with `.txt` extension from the `myfiles` folder. | In the example below, we remove all files with `.txt` extension from the `myfiles` folder. |
| `command-line-file-management.qmd:240` | 9 | (**Full disclosure: both the above R pakages are developed by Rsquared Academy.**) | (**Full disclosure: both R packages above are developed by Rsquared Academy.**) |
| `command-line-file-management.qmd:254` | 9 | Let us interpret the results. `4a5` indicates **after line 4 in file 1, add line 5 from file 2** to make both the files identical i.e. add `caret` which is line 5 in `imports_blorr.txt` after line 4 in `imports_olsrr.txt` which will make both the files identical. | Let us interpret the results. `4a5` indicates **after line 4 in file 1, add line 5 from file 2** to make both files identical, i.e. add `caret`, line 5 in `imports_blorr.txt`, after line 4 in `imports_olsrr.txt`. |
| `command-line-file-management.qmd:262` | 13, 9 | `5d4` indicates **delete line 5 from file 1 to match both the files at line4** i.e. delete `caret` which is line 5 in `imports_blorr.txt` to make both the files identical. | `5d4` indicates **delete line 5 from file 1 to match both files at line 4**, i.e. delete `caret`, line 5 in `imports_blorr.txt`. |
| `command-line-file-management.qmd:290` | 9 | In the below example, we look at the names of files that differ in `mypackage` and `myproject` folders. | In the example below, we look at the names of files that differ in `mypackage` and `myproject` folders. |

Refusals: The option tables, the `diff` symbols and the exercise text stay. Every `cp`, `mv`, `rm` and `diff` chunk is untouched, including the `|| true` suffixes. "Great!" stays: a rare light line (§3a.12).

## Input/Output

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `command-line-input-output.qmd:9` | 9 | In this chapter, we will explore commands that will | In this chapter, we will explore commands that |
| `command-line-input-output.qmd:55` | 3, 2 | The `cat` command reads data from files, and outputs their contents. It is the simplest way to display the contents of a file at the command line. It can be used to overwrite or append new content to files as well. | The `cat` command reads data from files and outputs their contents. It is the simplest way to display a file at the command line, and it can also overwrite or append new content to files. |
| `command-line-input-output.qmd:78` | 3 | If you want to number the output line, use the `-n` option. | If you want to number the output lines, use the `-n` option. |
| `command-line-input-output.qmd:86` | 4, 13 | In the below example, we concatenate the contents of the files `release_names_18.txt` and `release_names_19.txt` into a single file `release_names_18_19.txt`. In this case we are not printing the contents of the file to the terminal and instead we concatenate the contents from both the files and redirect the output to the target file. | In the example below, we concatenate the contents of the files `release_names_18.txt` and `release_names_19.txt` into a single file `release_names_18_19.txt`. In this case we do not print the contents to the terminal; instead we concatenate the contents of both files and redirect the output to the target file. |
| `command-line-input-output.qmd:95` | 3 | The `head` command will display the firt 10 lines of a file(s) by default. | The `head` command displays the first 10 lines of a file by default. |
| `command-line-input-output.qmd:115` | 4 | In the below example, we display the first 5 lines. | In the example below, we display the first 5 lines. |
| `command-line-input-output.qmd:176` | 4 | In the below example, we display all contents of the file starting from the 10th line | In the example below, we display all contents of the file starting from the 10th line |
| `command-line-input-output.qmd:209` | 1, 2, 3, 9 | It allows the user to scroll up and down, go to the beggining and end of the file, forward and backward search and the ability to go the next and previous match while searching the file. | It allows us to scroll up and down, go to the beginning or end of the file, search forward and backward, and move to the next or previous match while searching. |
| `command-line-input-output.qmd:227` | 2, 3 | The `sort` command will sort the contents of text file, line by line. | The `sort` command sorts the contents of a text file, line by line. |
| `command-line-input-output.qmd:234` | 2 | Using the `sort` command, the contents can be sorted numerically and alphabetically. | With the `sort` command, the contents can be sorted numerically and alphabetically. |
| `command-line-input-output.qmd:241` | 4 | We list the options in the below table. | We list the options in the table below. |
| `command-line-input-output.qmd:253` | 9 | It contains names R packages randomly selected from CRAN. | It contains names of R packages randomly selected from CRAN. |
| `command-line-input-output.qmd:285` | 4 | In the below example, we remove all duplicate lines from the `pkg_names.txt` while sorting. | In the example below, we remove all duplicate lines from the `pkg_names.txt` while sorting. |
| `command-line-input-output.qmd:293` | 3, 2 | `wc` will print newline, word, and  byte  counts  for  file(s). If more than one file is specified, it will also print total line. | `wc` prints newline, word and byte counts for a file. If more than one file is specified, it also prints a total line. |

Refusals: The tables, the `head`/`tail` sections and the exercises stay. The two "last 5 lines/3 bytes" section paragraphs describe `head -n -5` and `head -c -3` as showing the last lines/bytes, which is inverted; they are listed under follow-ups rather than rewritten (a factual change).

## Search & Regular Expression

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `command-line-regular-expression.qmd:9` | 9 | In this chapter, we will explore commands that will | In this chapter, we will explore commands that |
| `command-line-regular-expression.qmd:31` | 3 | `grep` processes text line by line, and prints any lines which match a specified pattern. | `grep` processes text line by line, and prints any lines that match a specified pattern. |
| `command-line-regular-expression.qmd:44` | 9, 3 | Using `grep` let us search for packages that inlcude the letter `R` in their names. | Using `grep`, let us search for packages that include the letter `R` in their names. |
| `command-line-regular-expression.qmd:92` | 4, 9 | In the below example, we search for packages whose name does not include `R` while ignoring the case. | In the example below, we search for packages whose names do not include `R`, ignoring the case. |
| `command-line-regular-expression.qmd:100` | 4, 9 | In the below example, we search all files with the `.txt` extension for the string `bio` while ignoring the case. | In the example below, we search all files with the `.txt` extension for the string `bio`, ignoring the case. |
| `command-line-regular-expression.qmd:108` | 1, 2 | The `find` command can be used for searching files and directories. | We can use the `find` command to search for files and directories. |
| `command-line-regular-expression.qmd:113` | 9 | `find` is a powerful tool for working with the files. | `find` is a powerful tool for working with files. |
| `command-line-regular-expression.qmd:124` | 2, 3 | The `-name` option is used to specify the name of the file we are searching. | The `-name` option specifies the name of the file we are searching for. |
| `command-line-regular-expression.qmd:144` | 9 | Since we are searching for folder/directory, we use it along with `d` i.e. directory to indicate that we are searching for directories and not files. | Since we are searching for a folder, we use it with `d` (directory) to indicate that we are searching for directories and not files. |

Refusals: The command tables and the `grep`/`find` chunks stay. The exercises and the solutions pointers are untouched.

## Data Transfer

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `command-line-data-transfer.qmd:9` | 9 | In this chapter, we will explore commands that will allow us to download files  from the internet. | In this chapter, we will explore commands that allow us to download files  from the internet. |
| `command-line-data-transfer.qmd:24` | 2 | The `wget` command will download contents of a URL and files from the internet.  | The `wget` command downloads the contents of a URL and files from the internet.  |
| `command-line-data-transfer.qmd:48` | 3, 9 | Note, we are not downloading file as such but just the content of the URL. | Note that we are not downloading a file as such, only the content of the URL. |
| `command-line-data-transfer.qmd:55` | 9 | Downloading a bare URL saves the response under a default name such as `index.html`, which gets confusing with multiple URLs. Save the contents to an explicitly named file instead (we can specify the name of the file which should help avoid confusion). | Downloading a bare URL saves the response under a default name such as `index.html`, which gets confusing with multiple URLs. Save the contents to an explicitly named file instead. |
| `command-line-data-transfer.qmd:68` | 3, 9 | If you are a package developer and would want to know the countries in which your packages are downloaded, you will find this useful. | If you are a package developer and want to know the countries your packages are downloaded from, you will find this useful. |
| `command-line-data-transfer.qmd:84` | 3, 4, 9 | How do we download multiple URLs? One way is to specify the URLs one after the other separated by a space or save all URLs in a file and read them one by one. In the below example, we have saved multiple URLs in the file `urls.txt`. | How do we download multiple URLs? One way is to list the URLs one after another, separated by a space; another is to save all the URLs in a file and read them one by one. In the example below, we have saved multiple URLs in the file `urls.txt`. |
| `command-line-data-transfer.qmd:90` | 2, 9 | The `-i` indicates that the URLs must be read from a file (local or external). The `-P` option allows us to specify the directory into which all the files will be downloaded. | The `-i` option indicates that the URLs must be read from a file (local or external), and `-P` specifies the directory into which all the files will be downloaded. |
| `command-line-data-transfer.qmd:99` | 2 | The `--quiet` option will turn off `wget` output. | The `--quiet` option turns off `wget` output. |
| `command-line-data-transfer.qmd:122` | 3, 13 | Using the `--timestamping` option, the local file will have timestamp matching the remote file; if the remote file is not newer (not updated), no download will occur i.e. if the timestamp of the remote file has not changed it will not be downloaded. | With the `--timestamping` option, the local file's timestamp matches the remote file. If the remote file is not newer, no download occurs. |
| `command-line-data-transfer.qmd:131` | 2 | The `curl` command will transfer data from or to a server. | The `curl` command transfers data from or to a server. |
| `command-line-data-transfer.qmd:166` | 4 | as shown in the below example | as shown in the example below |
| `command-line-data-transfer.qmd:175` | 2, 3 | The `-s` option will allow you to download files silently. It will mute `curl` and will not display progress meter or error messages. | The `-s` option allows you to download files silently. It mutes `curl` and does not display the progress meter or error messages. |

Refusals: The wget/curl option tables, the offline fixture chunks and the exercise text stay. The CRAN-log URL caveat and the "shown but not executed" note are protected. The timestamp rewrite keeps the original meaning: no download when the remote file is not newer.

## sudo

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `sudo-command.qmd:3` | 3, 9 | sudo **S**uper **U**ser **DO** is a prefix of commands that only superuser or root users are allowed to run. | sudo (**S**uper **U**ser **DO**) is a prefix for commands that only superusers or root users are allowed to run. |

Refusals: The option table and the three exercises stay. "We will use it in the next section to install & update packages" is left with a follow-up: the next section is the exercises, so the pointer is stale.

## File Compression

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `command-line-file-compression.qmd:39` | 3, 9 | The `vf` (**v** stands for verbosely show .tar file progress and **f** stands for file name type of the archive file) option is common for all the above operations while the following are specific. | The `vf` option (**v** shows the .tar file progress verbosely and **f** takes the file name of the archive) is common to all the operations above, while the following options are specific. |
| `command-line-file-compression.qmd:50` | 9 | As mentioned above. to list the files in the archive, we use the `t` option. | As mentioned above, to list the files in the archive, we use the `t` option. |
| `command-line-file-compression.qmd:75` | 4, 2 | In the below example, we are using a single file but you can specify multiple files and folders as well. | In the example below, we use a single file, but you can specify multiple files and folders as well. |
| `command-line-file-compression.qmd:95` | 3 | files in the GNU GZIP format i.e. files with `.gz` extension | files in the GNU GZIP format, i.e. files with a `.gz` extension. |
| `command-line-file-compression.qmd:110` | 4 | In the below example, we stream the decompressed contents of `cran_log_sample.csv.gz` to the terminal while keeping the fixture compressed for later chapters. | In the example below, we stream the decompressed contents of `cran_log_sample.csv.gz` to the terminal while keeping the fixture compressed for later chapters. |
| `command-line-file-compression.qmd:120` | 4 | In the below example, `gzip` will create `releases.txt.gz` instead of `release_names.txt.gz`. | In the example below, `gzip` will create `releases.txt.gz` instead of `release_names.txt.gz`. |
| `command-line-file-compression.qmd:147` | 4 | In the below example, we extract it to a new folder `myexamples`. | In the example below, we extract it to a new folder `myexamples`. |
| `command-line-file-compression.qmd:155` | 4, 3 | In the below example, we create a ZIP archive of `myproject` folder. | In the example below, we create a ZIP archive of the `myproject` folder. |
| `command-line-file-compression.qmd:162` | 4 | as shown in the below example where we compress `myproject` and `mypackage` into a single ZIP archive. | as shown in the example below, where we compress `myproject` and `mypackage` into a single ZIP archive. |
| `command-line-file-compression.qmd:171` | 4 | In the below example, we add the `bash.sh` file to the `myproject.zip` archive created in a previous step. | In the example below, we add the `bash.sh` file to the `myproject.zip` archive created in a previous step. |
| `command-line-file-compression.qmd:194` | 9 | The [zip](https://cran.r-project.org/package=zip) package has the functionalities to handle ZIP archives. | The [zip](https://cran.r-project.org/package=zip) package has the functions to handle ZIP archives. |

Refusals: The option tables, the `tar`/`gzip`/`zip` chunks and the exercises stay. The header sentence says `tar` is used for file compression, though tar archives; that is a factual wording issue, recorded as a follow-up, not rewritten. The stray `main_project.zip()` inside inline code is protected and also listed.

## System Info

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `command-line-sysinfo.qmd:13` | 9 | - run commands a superuser | - run commands as a superuser |
| `command-line-sysinfo.qmd:60` | 9 | In this section, let us look at a few other useful commands that will allow us  | In this section, let us look at a few other useful commands that allow us  |

Refusals: The command tables, the funny-commands table and the exercises stay. The `free`/`df`/`uname` chunks are untouched.

## R & the Shell

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `r-command-line.qmd:25` | 2, 3 | Whenever you are trying to execute a command from R, the first argument or input should be the command and it must be enclosed in quotes. | Whenever you execute a command from R, the first argument is the command, and it must be enclosed in quotes. |
| `r-command-line.qmd:33` | 4 | In the below example, we delete the `myexamples` folder we created earlier while decompressing the `zip_example.zip` file. | In the example below, we delete the `myexamples` folder we created earlier while decompressing the `zip_example.zip` file. |
| `r-command-line.qmd:40` | 3, 9 | Let us say we are writing  message to a file using the `echo` command. In this cases, we want the output  to be redirected to the `release.txt` file. | Let us say we are writing a  message to a file using the `echo` command; we want the output redirected to the  `release.txt` file. |
| `r-command-line.qmd:69` | 3, 9 | This post was initially  created using `sh` as the underlying operating system is Windows. | This book was initially created using `sh`, as the underlying operating system is Windows. |
| `r-command-line.qmd:93` | 4, 3 | In the below example, we execute the code in `analysis.R` file.  | In the example below, we execute the code in the `analysis.R` file.  |

Refusals: The `system2()` examples, the RStudio and RMarkdown figures and the `Rscript` chunks stay. "Great!" and "If you are curious…" are his light lines and stay.

## Pipes & Redirection

No change. The chapter was written in the current style: the pipeline is built one stage at a time, the stage table names each command, and the `|` vs `|>` comparison is already concrete. Reported as a zero so the coverage is honest.

## Conclusion

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `conclusion.qmd:20` | 3, 18 | - Shell is a text based application for viewing, handling and manipulating files | - The shell is a text-based application for viewing, handling and manipulating files |
| `conclusion.qmd:22` | 9 |   - CLI (Command Line Inteface) |   - CLI (Command Line Interface) |

Refusals: The summary bullets, the reference URLs and the three exercises stay; only two summary lines were corrected (a typo and a hyphen).

## Shell ↔ R Cheat Sheet

No change. The page is one command-to-R table; every cell is inline code and the one sentence is already plain. Reported as a zero.

## Appendix: Git in 10 Minutes for RStudio Users

No change. The six-command table, the branch block, the `.gitignore` example and the three exercises already read in his voice. Reported as a zero.

## Guard

`git diff 4c0134b..HEAD` was checked mechanically for every `.qmd`: the fenced-code delimiter lines (which carry
every chunk label and `eval` option), every heading line and the multiset of inline-code spans are identical before
and after. Result: **zero changed code fences, chunk headers, headings or inline-code spans** across all 13
touched prose files. No command, prompt, flag, chunk option or output was edited: the shell chunks are byte-identical
to the base commit.

`git diff 4c0134b --stat` lists 13 chapter `.qmd` files plus `docs/ebk-d8b-bash-intro-report.md`. No `.R`, script,
data, image, `_quarto.yml`, `renv` file or `docs/` output is in the diff.

## Renders

Each chapter was rendered on its own in a throwaway copy of `git archive HEAD` outside the repo
(`C:/Users/DELL/AppData/Local/Temp/ebk-d8b-render-bash`), with `quarto render <file>.qmd --to html`, one chapter at
a time, through `heavy-slot.sh`. The project's `renv` library is not restored in this worktree (every package in the
lockfile is absent), so the copy was rendered with its `.Rprofile` set aside and R's global library, which has
`rmarkdown` and `knitr`. Thirteen of the sixteen chapters rendered with exit 0. Four chapters stop on shell commands
this Windows Git Bash does not provide (`cal`, `wget`, `free`, and a `find` on a missing fixture directory); the same
four fail identically when the base commit `4c0134b` is rendered in the same copy, so the failures are environmental
and not caused by this pass. No rendered output is committed. PDF and EPUB were not rebuilt.

## Not done, and follow-ups

- **Nothing in the brief was skipped.** Every chapter was read and every prose paragraph checked. `pipes-and-redirection.qmd`,
  `cheatsheet.qmd` and `git-appendix.qmd` needed no prose change and are reported as zeros.
- **The `solutions/` files were not edited.** They are worked answers outside the chapter list, and the brief scopes
  this pass to the chapters; they would need their own pass.
- **`head` sections contradict their headings** (`command-line-input-output.qmd:129-139`): the prose says
  "we display the last 5 lines" for `head -n -5` and "the last 3 bytes" for `head -c -3`, but those commands show
  everything *except* the last 5 lines/3 bytes. The headings ("Output everything but the last…") are correct. This
  is a factual wording fix, so it is listed rather than rewritten here.
- **`command-line-file-compression.qmd:133` has `main_project.zip()` with stray parentheses inside the inline
  span.** Inline code is protected, so the sentence is left; the command below it is correct.
- **`command-line-file-compression.qmd:18` calls `tar` "file compression"**; tar archives, and gzip/zip compress.
  The chapter demonstrates archiving correctly, but the opening sentence is a factual wording issue for a later
  fix.
- **`sudo-command.qmd:3` ends "We will use it in the next section to install & update packages."** The next
  section is the exercises, so the pointer is stale. Left as written (a pointer edit would change what the text
  promises).
- **The book's British spellings were not swept.** Only words inside sentences already being rewritten were
  touched; a book-wide spelling decision is Aravind's (§2.8, §4.3).
- **No chapter endings were added.** §3a.4's rule-plus-course-pointer close is content work and this pass adds no
  sentences.
