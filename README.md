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
Exercise 1 Click some things, then open the terminal

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
Exercise 2 Use your paper to follow the instructions to log onto the server
```
ssh # put here the log + -C
```

### Connectivity
Explainer: a screen can save your life

Exercise 3 Using a screen to maintain a program running on the server
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
Tip: you can use your TAB key again to finish the name of the screen

Now you can close this screen in two ways.
1. If you are in the screen:
```
exit
```

2. If you are detached from the screen:
```
screen -X -S testing_a_screen kill
```

Just one more thing; what if you don't know whether you are in a screen or not?
```
screen -ls
```
The response to this command will be a list of your active screen(s) with notes of (Detached) and (Attached). However, it will also show (Attached) if you are connected in another terminal. So then you can use ctrl + a + d to try and detach again in case you are still in your screen. And nothing will happen if you are not in the screen.

### Nodes, CPU's & Memory
Explainer:
Nodes
CPU's
Memory
Login node vs. computational node

This is an example of an interactive node
```
## do not run this as it does not work on our machines / server
srun -N 1 -c 4 --mem-per-cpu=4G -t 08:00:00 --pty bash 
```

### Files & folders
Explainer:
- moving files between local <> server
- what is the folder structure?
- the expences
- what can we do about that? (zip & remove)

The following exercises are done on the LOCAL machine!

Exercise 4 download the slides to your local machine
```
ssh ... # make correct command here
```
Tip: this has to be run on your local machine !

### Tricks
Explainer: Wildcards

Exercise 5.1 download all pdf files, by replacing the file name in the previous command with one of the discussed wildcards:
```
<same command as above>
```

Using keys:
Ctrl + C (cancel)
The magic "tab"
And the command "clear"

Exercise 5.2 download the slides to your local machine again, this time use the magic "tab"
```
<same command as above but without the path finished>
```

Exercise 5.3a if your connection to the server doesn't work for some reason; you can download the files to your computer directly:
```
wget https://github.com/IsoldevR/Linux_Intro_EVOP_2026/master.zip
unzip master.zip
```

Exercise 5.3b Just a check! Where were you when you downloaded these files? Run the following command, and it should return to you the file path where you are:
```
pwd
```
If that was not where you thought you were, try to correct your mistake or call a TA!

### Executing commands
Explainer:
- a command
- command structure
- where is the user manual?

Exercise 6 See if you can identify what the following command is doing:
```
<same command as above but to upload> ## need to check if allowed
```

### Lets' have a coffee break!

### The most used commands
Explainer pwd, cd, ls

The follwoing exercises we will do on the server!
Exercise 7 Go to the folder from which we downloaded the pdf with the slides using cd, and see what files are there
```
cd <file path>
ls
```

Exercise 7.2 which parameter can be used for ls to sort files by size?
```
man ls
ls -S
```
Tip: there are instructions to navigate the man page highlighted in the bottom of your terminal when the man page is open!

Exercise 7.3 We're going some places now! You can use cd to go to the home directory (~) and one level up (../) .. make sure to keep reading this exercise until you are on safe ground again!
```
cd ~
cd ../
```

Exercise 7.4 If you ran these commands you should be ... one folder up from your home directory? Where is that?
```
ls
pwd
```

Exercise 7.5 AAAAHHH!! We are now somewhere where we're not supposed to be ... We don't want to break into other peoples data! Where is our own data? ... How do we solve this? PANIC!!!!
```
cd ~
```
... now we're back in our home folder ! Saved ourselves! Go back into the folder you made with mkdir to find back the files that we need for the next exercise.


### More most used commands:
mv, cp (scp), rm, get

Exercise 8.1 Make a copy of a file and name it "<your name>_copy.txt" ## NOTE: Get may need to be installed, not in cheat sheet
```
cp copy_this_file.txt <your name>_copy.txt
```
Tip: if you see something like "/<your name/>" you are usually supposed to change that bit including the angle brackets to something else!

cat

Exercise 8.2 Find out what cat can do by summoning the user manual, and experiment with it a bit
```
man cat
cat copy_this_file.txt
cat copy_this_file.txt <your name>_copy.txt
```

### Even more "most used" commands:
tar, gzip, unzip
more, less, most

Exercise 9.1 Lets find out what happens when you look into the file for this exercise
```
less E9_fastp_wgs.out
```
Tip: you can scroll up and down using your arrow keys - the cat command doesn't allow this scrolling!

head, tail

Exercise 9.2 Modify the head command to print only the first five lines of the text
```
head E9_fastp_wgs.out

man head

head -n 5 E9_fastp_wgs.out
```

Exercise 9.3 Now check the tail of the file ... see if this .out report shows if this computation worked correctly!
```
tail E9_fastp_wgs.out
```
Q: Aww ... that is so sad ... there is an error! Any idea what happened to this poor scientist?

clear, exit

```
clear
```

### Searching in files
grep

Exercise 10 First, see what there actually is in this file by your tool of choice. Then find in this file, any mentions of the mitogenome (MH893761.1)
```
less E10_Sample_1_mosdepth_summary.txt
grep "MH893761.1" E10_Sample_1_mosdepth_summary.txt
```
Exercise 10+ If you are having a very easy time following this tutorial so far, try piping the output into "head" to display the first 20 occurences. We are going to discuss pipes soon! 

### Searching in files; advanced
awk

Exercise 11 Although grep allows to print the line where you found your mitogenome, sometimes you would like to only print a couple of columns, or do calculations with them. Try printing only the mean, max, and minimum depth of the reads from this sample to the mitogenome.
```
awk '$1 == "MH893761.1" {print $1, $4, $5, $6}' E10_Sample_1_mosdepth_summary.txt 
```
Exercise 11+ You may be interested in any contigs (chrom) that have a depth higher than ten reads. For example, when you are worried about duplicated regions in your genome. Use awk to filter the file!
```
awk '$4 > 10 {print $1, $4, $5, $6}' E10_Sample_1_mosdepth_summary.txt 
```
Exercise 11++ Hm, maybe we are worried about these regions which get a lot of reads aligned. Let's make a list of chromosomes to exclude from our next analysis. You will again need a pipe!
```
awk '$4 > 10 {print $1}' E10_Sample_1_mosdepth_summary.txt > contig_10_depth.txt
less contig_10_depth.txt
```

### Working on zipped files
zcat etc.

### Piping
pipes

Exercise 12.1 Get the depth statistics of the reads mapping to the mitogenome, and make a new file out of it.
```
grep "MH893761.1" E10_*.txt > mito_depth.txt
```
Tip: use a wildcard!

Exercise 12.2 See which contigs have a read depth below ten, and pipe the result into another program to be able to scroll through the results
```
awk '$4 < 10' E10_Sample_1_mosdepth_summary.txt | less
```

## Lunch break!


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
