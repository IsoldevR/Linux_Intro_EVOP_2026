# Introduction to Linux systems
*This repository has all the exercises and materials for the Introduction to Linux systems session on day 1 of the EVOP 2026 course. All exercises are in the README.md.
You can copy-paste any commands that you don't want to type out to your terminal. However, please realise that it will be good practise to type out commands yourself, as getting used to them will make you more flexible troubleshooting your errors over the next days, and it will make you more swift in your future coding efforts!
Please find the slides /<placeholder/>*

**Remember, being able to code is a super power!**

## Welcome
*Explainer*:
Please set up your work station such that you are comfortable - and make sure to keep it tidy!!

## Logistics of the course
*Explainer*:
- Introducing the TA's
- We use: Post-Its!!
- Set up and log into the desktop (you have a paper?)

## Introduction of Unix & Terminal
### Philosophy of Unix
*Explainer*: 
Scientific programmers - we need heavy computation to work as efficiently as possible.
The output of one command gets used in the next.

### Logging in to the computer
**Exercise 0** Use the paper you received to follow the instructions to log into your local computer. This exercise is done when you read something about a sticky note. If you get in trouble before, use a sticky note to get help.

**PLEASE USE YOUR STICKY NOTES TO SHOW US WHEN YOU ARE DONE!**

### Explore the local computer
**Exercise 1** Click some things like you do when you first have a new computer, then open the terminal. This exercise is done when you read something about a sticky note. If you get in trouble before, use a sticky note to get help.

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

And go into the directory
```
cd Intro_Unix
```

**PLEASE USE YOUR STICKY NOTES TO SHOW US WHEN YOU ARE DONE!**

### Several types of server
*Explainer*:
- Cloud server
- Server/cluster manager
- A server manager

### Nodes, CPU's & Memory
*Explainer*:
- what are nodes?
- what are CPU's?
- what is "the memory"?
- login node vs. computational node

### Logging in to the server (remote)
**Exercise 2** Use your paper to follow the instructions to log onto the server
```
ssh # put here the log + -C
```

### Connectivity
*Explainer*: a screen can save your life

**Exercise 3** Try using a screen to maintain a program running on the server. Please continue until you reach the next section on Nodes, CPU's & Memory
Start the screen as follows:
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
Tip: You can use your TAB key to finish the name of the screen.

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
*Explainer*:
Nodes
CPU's
Memory
Login node vs. computational node

This is an example of an interactive session
```
## do not run this as it does not work on our machines / server
srun -N 1 -c 4 --mem-per-cpu=4G -t 08:00:00 --pty bash 
```
It may take a while before an interactive session has started, it is best practise to do this in a screen, and it is nice to close it after you are done, so that others can use the resources again. Do so by typing executing:
```
exit
```

### Files & folders
*Explainer*:
- moving files between local <> server
- what is the folder structure?
- the expences
- what can we do about that? (zip & remove)

The following exercises are done on the **LOCAL machine**!

**Exercise 4** Download the slides to your **local machine**
```
ssh ... # make correct command here
```
Tip: this has to be run on your local machine !

### Tricks
*Explainer*: Wildcards

**Exercise 5.1** Download all pdf files, by replacing the file name in the previous command with one of the discussed wildcards:
<details>
<summary>Show answer</summary>
```
<same command as above>
```

*Explainer*: Using keys
- Ctrl + C (cancel)
- The magic "tab"
- The command "history"
- The command "clear"

**Exercise 5.2** Download the slides to your local machine again, this time use the magic "tab"
```
<same command as above but without the path finished>
```

**Exercise 5.3** If your connection to the server doesn't work for some reason; you can download the files to your computer directly:
```
wget https://github.com/IsoldevR/Linux_Intro_EVOP_2026/master.zip
unzip master.zip
```

**Exercise 5.4** Just a check! Where were you when you downloaded these files? Run the following command, and it should return to you the file path where you are:
```
pwd
```
If that was not where you thought you were, try to correct your mistake or call a TA!

### Executing commands
*Explainer*:
- a command
- command structure
- where is the user manual?

**Exercise 6** See if you can identify what the following command is doing:
```
<same command as above but to upload> ## need to check if allowed
```

### Lets' have a coffee break!

### The most used commands
*Explainer*: pwd, cd, ls

The follwoing exercises we will do on the server!
**Exercise 7.1** Go to the folder from which we downloaded the pdf with the slides using cd, and see what files are there
```
cd <file path>
ls
```

**Exercise 7.2** Which parameter can be used for ls to sort files by size?
```
man ls
ls -S
```
Tip: there are instructions to navigate the man page highlighted in the bottom of your terminal when the man page is open!

**Exercise 7.3** We're going some places now! You can use cd to go to the home directory (~) and one level up (../) .. make sure to keep reading this exercise until you are on safe ground again!
```
cd ~
cd ../
```

**Exercise 7.4** If you ran these commands you should be ... one folder up from your home directory? Where is that?
```
ls
pwd
```

**Exercise 7.5** AAAAHHH!! We are now somewhere where we're not supposed to be ... We don't want to break into other peoples data! Where is our own data? ... How do we solve this? PANIC!!!!
```
cd ~
```
... now we're back in our home folder ! Saved ourselves! Go back into the folder you made with mkdir to find back the files that we need for the next exercise.


### More most used commands:
*Explainer*: mv, cp (scp), rm, get

**Exercise 8.1** Make a copy of a file and name it "/<your name/>_copy.txt" 
```
cp E8_copy_this_file.txt <your name>_copy.txt
```
Tip: if you see something like "/<your name/>" you are usually supposed to change that bit including the angle brackets to something else!

*Explainer*: cat

**Exercise 8.2** Find out what cat can do by summoning the user manual, and experiment with it a bit
```
man cat
cat copy_this_file.txt
cat copy_this_file.txt <your name>_copy.txt
```

### Even more "most used" commands:
*Explainer*: tar, gzip, unzip
*Explainer*: more, less, most

**Exercise 9.1** Lets find out what happens when you look into the file for this exercise
```
less E9_fastp_wgs.out
```
Tip: you can scroll up and down using your arrow keys - the cat command doesn't allow this scrolling!

head, tail

**Exercise 9.2** Modify the head command to print only the first five lines of the text
```
head E9_fastp_wgs.out

man head

head -n 5 E9_fastp_wgs.out
```

**Exercise 9.3** Now check the tail of the file ... see if this .out report shows if this computation worked correctly!
```
tail E9_fastp_wgs.out
```
Aww ... that is so sad ... there is an error! 
Q: Any idea what happened to this poor scientist?

*Explainer*: clear, exit

```
clear
```

### Searching in files
*Explainer*: grep

**Exercise 10** First, see what there actually is in this file by your tool of choice. Then find in this file, any mentions of the mitogenome (MH893761.1)
```
less E10_Sample_1_mosdepth_summary.txt
grep "MH893761.1" E10_Sample_1_mosdepth_summary.txt
```

**Exercise 10+** If you are having a very easy time following this tutorial so far, try piping the output into "head" to display the first 20 occurences. We are going to discuss pipes soon! 

### Searching in files; advanced
*Explainer*: awk

**Exercise 11** Although grep allows to print the line where you found your mitogenome, sometimes you would like to only print a couple of columns, or do calculations with them. Try printing only the mean, max, and minimum depth of the reads from this sample to the mitogenome.
```
awk '$1 == "MH893761.1" {print $1, $4, $5, $6}' E10_Sample_1_mosdepth_summary.txt 
```

**Exercise 11+** You may be interested in any contigs (chrom) that have a depth higher than ten reads. For example, when you are worried about duplicated regions in your genome. Use awk to filter the file!
```
awk '$4 > 10 {print $1, $4, $5, $6}' E10_Sample_1_mosdepth_summary.txt 
```

**Exercise 11++** Hm, maybe we are worried about these regions which get a lot of reads aligned. Let's make a list of chromosomes to exclude from our next analysis. You will again need a pipe!
```
awk '$4 > 10 {print $1}' E10_Sample_1_mosdepth_summary.txt > contig_10_depth.txt
less contig_10_depth.txt
```

### Working on zipped files
*Explainer*: zcat etc.

### Piping
*Explainer*: pipes

**Exercise 12.1** Get the depth statistics of the reads mapping to the mitogenome, and make a new file out of it.
```
grep "MH893761.1" E10_*.txt > mito_depth.txt
```
Tip: use a wildcard!

**Exercise 12.2** See which contigs have a read depth below ten, and pipe the result into another program to be able to scroll through the results
```
awk '$4 < 10' E10_Sample_1_mosdepth_summary.txt | less
```

## Lunch break!


## Moving from commands to scripts

### Regular expressions & some repeating
*Explainer*: 
- what can you use them for?

**Exercise 13.1** Find out which contigs have a read depth between 1 and 5 in Sample 1.
```
awk '$4 > 1 && $4 < 5 {print $1}' E10_Sample_1_mosdepth_summary.txt 
```

**Exercise 13.2** Find out which of the above contigs have a length longer than 10 million bp.
```
awk '$4 > 1 && $4 < 5 && $2 > 10000000 {print $1}' E10_Sample_1_mosdepth_summary.txt 
```

**Exercise 13.3** Filter out only the completely assembled "chromosomes" (they are at the top of the file and their names start with "NC"), and mitogenome (that "chromosome" name we saw before; it is MH893761.1)
Tips: 
1. It is nice to see the other columns now too
2. There are multiple ways to solve this so go ahead and experiment!

```
awk '$1 ~ /NC/ || $1 ~ /MH/ {print}' E10_Sample_1_mosdepth_summary.txt
```

### Editing a file
*Explainer*:
- nano
- vim
- vi
- emacs

### A script
*Explainer*:
- basic elements
- annotation of a script
- good practices

We are ready to write our first script, lets' make a new file on the server!

**Exercise 14.1** Go to the folder you made for today "Intro_Unix", and in that directory, make a new file named "my_first_script.sh"
```
nano my_first_script.sh
```

**Exercise 14.2** now type in the first bash line that is needed, a comment to let your future self know what this script is going to do, and use the "echo" command to let the script return a message to the terminal.
```
#!/bin/bash
#This is a comment to remind myself that echo is a command to print something to the terminal
echo "WOW! You start looking like a super hero!"
```
And of course: execute the script!!
```
bash my_first_script.sh
```

**Exercise 14.3** Make a new script that concatenates the output of searching for the gene "MH893761" in two files into one, and it should let you know when it is done. 


```
nano find_MH893761.sh

#!/bin/bash
# this is to find MH893761 in multiple lines and save it into a new file, mito_depth.txt
grep "MH893761.1" E10_*.txt > mito_depth.txt
echo "done!"
```

**Exercise 14.3+** Adapt your script find_MH893761.sh to calculate and output the percentage covered by deviding the number of bases by the length of the contig for each sample.


```
nano find_MH893761.sh

#!/bin/bash
# this is to find MH893761 in multiple lines and save it into a new file, mito_depth.txt
grep "MH893761.1" E10_*.txt | awk '{print $3/$2}'
echo "done!"
```

## Let's have a coffee break!

### More concepts
*Explainer*:
- a loop
- an array

**Exercise 15** Write a new script that loops through all files in the directory mosdepth_files to grep for the mitogenome "MH893761" and concatenate the results in a new file.


Tips:
1. Make sure the script knows where to find the files
2. Make use of a wildcard, but be specific enough that you don't incorporate any other files in the loop than the summaries
3. Make sure to not overwrite the output for each file in the loop (you should have a line in the output file for each of your input files)


```
#!/bin/bash
#This script loops through the files and concatenates the output of searching for the mitogenome "MH893761" into one file
for file in *_summary.txt;
do
grep "MH893761.1" $file >> mito_depth_all.txt
done
echo "Hurray! I see a new super hero has joined the coding forces!"
```


## Let's have a coffee break!

## The Advanced Stuff (just so you know)
*Explainer*:
- add managing environments/conda?
- pipelines / snakemake / ?
- add containers / images / etc.?

# Extra exercises !
**Exercise x** Working on the server, can you dissect this command, and find out what it will do? You can also try and execute it! Or change it ...!
```
bcftools query -i'QUAL>20 && DP>10 && F_MISSING<0.5 && MAF>0.01' -f'%CHROM %POS %QUAL %DP\n' calls_10.bcf | head
```
