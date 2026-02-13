# Introduction to Linux systems
This repository has all the exercises and materials for the Introduction to Linux systems session on day 1 of the EVOP 2026 course. All exercises are in the README.md.
You can copy-paste any commands that you don't want to type out to your terminal. However, please realise that it will be good practise to type out commands yourself, as getting used to them will make you more flexible troubleshooting your errors over the next days, and it will make you more swift in your future coding efforts!
Please find the slides <placeholder>

Remember, being able to code is a super power!

## Welcome
Please set up your work station such that you are comfortable - and make sure to keep it tidy!!

## Logistics of the course
- Introducing the TA's
- We use: Post-Its!!
- Set up and log into the desktop (you have a paper?)

## Introduction of Unix & Terminal
### Philosophy of Unix
The bare bones - we need heavy computation to work as efficiently as possible.
The output of one command gets used in the next.

### Logging in to the computer
Use your paper to follow the instructions to log into your local computer

USE YOUR STICKY NOTES TO SHOW WHEN YOU ARE DONE!

### Explore the local computer
Click some things, then open the terminal

In the open terminal, we are going to see the file structure by:
```
ls
```
Then go to the folder xxx
```
cd xxx
```
Then make a new directory
```
mkdir Intro_Unix
```
Go into the directory
```
cd Intro_Unix
```

USE YOUR STICKY NOTES TO SHOW WHEN YOU ARE DONE!


### Several types of server
- Cloud server
- Server/cluster manager
- A server manager

### Nodes, CPU's & Memory
- what are nodes?
- what are CPU's?
- what is "the memory"?
- login node vs. computational node

### Logging in to the server (remote)
Use your paper to follow the instructions to log onto the server
```
ssh # put here the log + -C
```

### Connectivity
Using a screen to maintain a program running on the server
```
screen -S testing_a_screen
```
Use ctrl + a + d to detach

See if you can list the screens you have available
```
screen -ls
```
Now you can re-attach to the screen:
```
screen -r testing_a_screen
```

Now you can close this screen in two ways.
1. If you are in the screen:
```
exit
```

2. If you are detached from the screen:
```
screen -X -S testing_a_screen kill
```

Tip: you can use your TAB key again to finish the name of the screen

### Nodes, CPU's & Memory
Login node vs. computational node

Interactive node
```
srun -N 1 -c 4 --mem-per-cpu=4G -t 08:00:00 --pty bash 
```

We will take a break now!

### Files & folders (+ Exercise)
- moving files between local <> server
- what is the folder structure?
- the expences
- what can we do about that? (zip & remove)

The following exercises are done on the LOCAL machine!

Exercise 1.1 download the slides to your local machine
```
ssh ... # make correct command here
```
Tip: this has to be run on your local machine !

### Tricks
Wildcards

Exercise 1.2 download all pdf files, by replacing the file name in the previous command with one of the discussed wildcards:
```
<same command as above>
```

Using keys:
Ctrl + C (cancel)
The magic "tab"
And the command "clear"

Exercise 1.3 download the slides to your local machine again, this time use the magic "tab"
```
<same command as above but without the path finished>
```

Exercise 1.4a if your connection to the server doesn't work for some reason; you can download the files to your computer directly:
```
wget https://github.com/IsoldevR/Linux_Intro_EVOP_2026/master.zip
unzip master.zip
```

Exercise 1.4b Just a check! Where were you when you downloaded these files? Run the following command, and it should return to you the file path where you are:
```
pwd
```
If that was not where you thought you were, try to correct your mistake or call a TA!

### Executing commands
- a command
- command structure
- where is the user manual?

Exercise 1.5 See if you can identify what the following command is doing:
```
<same command as above but to upload> ## need to check if allowed
```

### The most used commands
pwd, cd, ls

The follwoing exercises we will do on the server!

Exercise 2.1 go to the folder from which we downloaded the pdf with the slides using cd, and see what files are there
```
cd <file path>
ls
```

Exercise 2.2 which parameter can be used for ls to sort files by size?
```
man ls
ls -S
```
Tip: there are instructions to navigate the man page highlighted in the bottom of your terminal when the man page is open!

Exercise 2.3 We're going some places now! You can use cd to go to the home directory (~) and one level up (../) .. make sure to keep reading this one!
```
cd ~
cd ../
```
If you ran these commands you should be ... one folder up from your home directory? Where is that?
```
ls
pwd
```
AAAAHHH!! We are now somewhere where we're not supposed to be ... We don't want to break into other peoples data! Where is our own data? How do we solve this?
```
cd ~
```
... now we're back in our home folder ! Go back into the folder you made with mkdir to find back the files that we need for the next exercise.



mv, cp (scp), rm, get

Exercise 2.3 make a copy of a file and name it "<your name>_copy.txt" ## NOTE: Get may need to be installed, not in cheat sheet
```
cp copy_this_file.txt <your name>_copy.txt
```
Tip: if you see something like "<your name>" you are usually supposed to change that bit including the angle brackets to something else!

cat

Exercise 2.4 find out what cat can do by summoning the user manual, and experiment with it a bit
```
man cat
cat copy_this_file.txt
cat copy_this_file.txt <your name>_copy.txt
```

tar, gzip, unzip

more, less, most

Exercise 2.5 lets find out what happens when you look in some other files: feel free to also test with cat, more and most
```
less <file we copied>
```
Q: Why would it make sense to use "cat" for some files, and something like "less" for other files?

head, tail
Exercise 2.6 modify the head command to print only the first five lines of the text
```
head <file>
```

clear, exit
```
clear
exit
```

grep

Exercise 2.7 find in this file, any mentions of some gene
Exercise 2.7+ if you are bored by this tutorial so far, try piping the output into "head" to display the first 20 occurences (if you have no clue what "pipes" are; no worries, we're going to discuss pipes soon!) 
```
grep <pattern> <file>
```

awk
```
(+Exercise)
```

### Working on zipped files
zcat etc. (+ Exercise)

Exercise 3 do the above but with a zipped file:
```

```

### Piping
pipes

Exercise 4 make a command that takes the header of two <some #filetype> files and concatenates it into a new file named two_headers.txt, and see what is in the file. Tip: have a look at what defines the header in one of the file types first. 
```
head <file>
grep <pattern> <file 1> <file 2> > two_headers.txt
head two_headers.txt
```
Exercise 4+ can you do combine the last two commands into a oneliner?

## Moving from commands to scripts

### Editing a file
- nano
- vim
- vi
- emacs

### A script
- basic elements
- annotation of a script
- good practices

We are ready to write our first script, lets' make a new file in our favourite, own, home directory!

Exercise 5.1 go to your home directory, make a new directory named "intro_bash", and in that directory, make a new file named "my_first_script.sh"
```
cd ~
mkdir intro_bash
nano my_first_script.sh
```

Exercise 5.2 now type in the first bash line that is needed, a comment to let your future self know what this script is going to do, and use the "echo" command to let the script return a message to the terminal.
```
#!/bin/bash
# This is a comment to remind myself that echo is a command to print something to the terminal
echo "Hello, World!"
```
And of course: execute the script!!

Exercise 5.2+ now make a new script that concatenates the output of searching for the gene "xx" in two files into one 
```
#!/bin/bash
# This script concatenates the output of searching for the gene "xx" in two files into one
grep <pattern> <file1> <file2> > <pattern>.txt
echo "done!"
```

Exercise 5.2++ now make a new script that concatenates the output of searching for the gene "xx" in two files into one 
```
#!/bin/bash
# This script concatenates the output of searching for the gene "xx" in two files into one
grep <pattern> <file1> <file2> > <pattern>.txt
echo "done!"
```

### More concepts
- a loop
- an array

Exercise 6 write a script that loops through all files in the directory xx to grep for gene "xx" and concatenate the results in a new file
```
#!/bin/bash
# This script loops concatenates the output of searching for the gene "xx" in two files into one
for file in *_output.txt; do
grep <pattern> file | cat pattern.txt > pattern.txt
done
echo "done!"
```
  
## The Advanced Stuff (just so you know)
- add managing environments/conda?
- pipelines / snakemake / ?
- add containers / images / etc.?

#### More extra exercises !
Can you disect this command, and find out what it will do?
```
bcftools query -i'QUAL>20 && DP>10 && F_MISSING<0.5 && MAF>0.01' -f'%CHROM %POS %QUAL %DP\n' calls_60.bcf | head
```
