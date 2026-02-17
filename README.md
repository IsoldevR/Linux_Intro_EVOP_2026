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
**Exercise 1.1** Use the paper you received to follow the instructions to log into your local computer. If you get in trouble before, use a sticky note to get help.

**IF YOU ARE DONE: PLEASE USE YOUR STICKY NOTES TO SHOW US!**

### Explore the local computer
**Exercise 1.2** Click some things like you do when you first have a new computer, then open the terminal. This exercise is done when you read something about a sticky note. If you get in trouble before, use a sticky note to get help.

In the open terminal, we are going to see the file structure by:
```
ls
```

Then go to a folder you see there
```
cd /Linux_Intro_EVOP_2026
```

**PLEASE USE YOUR STICKY NOTES TO SHOW US WHEN YOU ARE DONE!**

### Several types of server
*Explainer*:
- Cloud server
- Server/cluster manager

### Nodes, CPU's & Memory
*Explainer*:
- what are nodes?
- what are CPU's?
- what is "the memory"?
- login node vs. computational node

This is an example of an interactive session
```
## do not run this as it does not work on our machines / server
srun -N 1 -c 4 --mem-per-cpu=4G -t 08:00:00 --pty bash 
```
It may take a while before an interactive session has started, it is best practise to do this in a screen, and it is nice to close it after you are done, so that others can use the resources again. Do so by typing executing:
```
exit
```

### Logging in to the server (remote)
**Exercise 2** Use your paper to follow the instructions to log onto the server - **Exercise cancelled: this is only to be able to access the computers remotely!**

Remember to use your own user name here!
```
ssh -C k00457149@andorra.imp.fu-berlin.de
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

### Files & folders
*Explainer*:
- moving files between local <> server
- what is the folder structure?
- the expences
- what can we do about that? (zip & remove)

The following exercises are done on the **LOCAL machine**!

**Exercise 4** Download the slides to your **local machine**
```
pwd
# this should give you the local directory
rsync -r -z -a /srv/evop/software/Workshop_material/Linux_Intro_EVOP_2026 .
```
Explanation:
-r tells the computer to download a complete directory
-z tells the computer to compress the files
-a preserves file permissions and time stamps

### Tricks
*Explainer*: Wildcards

**Exercise 5.1** Download all pdf files, by adapting the previous command, to reach into the Linux_Intro_EVOP_2026/ folder, and addressing only the .pdf files using the "*":

<details>
<summary>Show answer</summary>
  
  ```
  cd Linux_Intro_EVOP_2026/
  rsync -z -a /srv/evop/software/Workshop_material/Linux_Intro_EVOP_2026/Linux_Intro_EVOP_2026/*.pdf .
  ```

</details>
  
*Explainer*: Using keys
- Ctrl + C (cancel)
- The magic "tab"
- The command "history"
- The command "clear"

**Exercise 5.2** Move to your home directory, and move back into the folder which you just copied from the Workshop_material; this time use the magic "tab"

```
cd ~
cd Linux_<tab!>
```

**Exercise 5.3** Only if your connection to the data drive doesn't work for some reason; you can download the files from Isolde's GitHub to your computer directly:
```
git clone https://github.com/IsoldevR/Linux_Intro_EVOP_2026
```

**Exercise 5.4** Just a check! Where were you when you downloaded these files? Run the following command, and it should return to you the file path where you are, and with ls should give you a list of files that you expect too:
```
pwd
ls
```
If that was not where you thought you were, try to correct your mistake or call a TA!

### Executing commands
*Explainer*:
- a command
- command structure
- where is the user manual?

**Exercise 6** See if you can identify what the following command would do:
```
rsync -z -a *.pdf /srv/evop/software/Workshop_material/Linux_Intro_EVOP_2026/Linux_Intro_EVOP_2026/
```

### Lets' have a coffee break!

### The most used commands
*Explainer*: pwd, cd, ls

The follwoing exercises we will do on the server!

**Exercise 7.1** Go to the folder from which we downloaded the pdf with the slides using cd, and see what files are there

<details>
<summary>Show answer</summary>

  ```
  pwd
  cd /Linux_Intro_EVOP_2026
  ls
  ```

</details>

**Exercise 7.2** Which parameter can be used for ls to sort files by size?

<details>
<summary>Show Tip</summary>

  Tip: there are instructions to navigate the man page highlighted in the bottom of your terminal when the man page is open!
</details>

<details>
<summary>Show answer</summary>
  
  ```
  man ls
  ls -S
  ```

</details>

**Exercise 7.3** We're going some places now! You can use cd to go to the home directory (~) and one level up (../) .. make sure to keep reading this exercise until you are on safe ground again!

<details>
<summary>Show answer</summary>

  ```
  cd ~
  cd ../
  ```

</details>

**Exercise 7.4** If you ran these commands you should be ... one folder up from your home directory? Where is that?

<details>
<summary>Show answer</summary>
  
  ```
  ls
  pwd
  ```

</details>

**Exercise 7.5** AAAAHHH!! We are now somewhere where we're not supposed to be ... We don't want to break into other peoples data! Where is our own data? ... How do we solve this? PANIC!!!!

<details>
<summary>Show answer</summary>

  ```
  cd ~
  ```

</details>

... now we're back in our home folder ! Saved ourselves! Go back into the folder you made with mkdir to find back the files that we need for the next exercise.


### More most used commands:
*Explainer*: mv, cp (scp), rm, get

**Exercise 8.1** Make a copy of a file and name it "**your name**_copy.txt" 

<details>
<summary>Show answer</summary>

  ```
  cp E8_copy_this_file.txt <your name>_copy.txt
  ```

</details>

Tip: if you see something like "your name" between the angle brackets, you are usually supposed to change that bit including the angle brackets to something else!

*Explainer*: cat

**Exercise 8.2** Find out what cat can do by summoning the user manual, and experiment with it a bit

<details>
<summary>Show answer</summary>

  ```
  man cat
  cat copy_this_file.txt
  cat copy_this_file.txt <your name>_copy.txt
  ```

</details>

### Even more "most used" commands:
*Explainer*: tar, gzip, unzip

*Explainer*: more, less, most

**Exercise 9.1** Lets find out what happens when you look into the file for this exercise

<details>
<summary>Show answer</summary>

  ```
  less E9_fastp_wgs.out
  ```
</details>

Tip: you can scroll up and down using your arrow keys - the cat command doesn't allow this!

*Explainer*: head, tail

**Exercise 9.2** Modify the head command to print only the first five lines of the text

<details>
<summary>Show answer</summary>

  ```
  head E9_fastp_wgs.out
  man head 
  head -n 5 E9_fastp_wgs.out
  ```

</details>

**Exercise 9.3** Now check the end of the file ... see if this .out report shows if this computation worked correctly!

<details>
<summary>Show answer</summary>

  ```
  tail E9_fastp_wgs.out
  ```

</details>

Aww ... that is so sad ... there is an error! 
Q: Any idea what happened to this poor scientist?

*Explainer*: clear, exit

```
clear
```

### Searching in files
*Explainer*: grep

**Exercise 10** First, see what there actually is in this file by your tool of choice. Then find in this file, any mentions of the mitogenome (MH893761.1)

<details>
<summary>Show answer</summary>

  ```
  less E10_Sample_1_mosdepth_summary.txt
  grep "MH893761.1" E10_Sample_1_mosdepth_summary.txt
  ```

</details>

**Exercise 10+** If you are having a very easy time following this tutorial so far, try piping the output of Exercise 10 into "head" to display the first 20 occurences. We are going to discuss pipes soon! 

<details>
<summary>Show answer</summary>

  Mehehe there is no answer here! if you don't know how to do this - you will need to pay attention soon!
  
</details>



### Searching in files; advanced
*Explainer*: awk

**Exercise 11** Although grep allows to print the line where you found your mitogenome, sometimes you would like to only print a couple of columns, or do calculations with them. Try printing only the mean, max, and minimum depth of the reads from this sample to the mitogenome.

<details>
<summary>Show answer</summary>

  ```
  awk '$1 == "MH893761.1" {print $1, $4, $5, $6}' E10_Sample_1_mosdepth_summary.txt 
  ```

</details>

**Exercise 11+** You may be interested in any contigs (chrom) that have a depth higher than ten reads. For example, when you are worried about duplicated regions in your genome. Use awk to filter the file!

<details>
<summary>Show answer</summary>

  ```
  awk '$4 > 10 {print $1, $4, $5, $6}' E10_Sample_1_mosdepth_summary.txt 
  ```
</details>

**Exercise 11++** Hm, maybe we are worried about these regions which get a lot of reads aligned. Let's make a list of chromosomes to exclude from our next analysis. You will again need a pipe!

<details>
<summary>Show answer</summary>

  ```
  awk '$4 > 10 {print $1}' E10_Sample_1_mosdepth_summary.txt > contig_10_depth.txt
  less contig_10_depth.txt
  ```
</details>

### Working on zipped files
*Explainer*: zcat etc.

### Piping
*Explainer*: pipes

**Exercise 12.1** Get the depth statistics of the reads mapping to the mitogenome, and make a new file out of it.

<details>
<summary>Show tip</summary>

  Tip: use a wildcard!
  
</details>

<details>
<summary>Show answer</summary>

  ```
  grep "MH893761.1" E10_*.txt > mito_depth.txt
  ```

</details>

**Exercise 12.2** See which contigs have a read depth below ten, and pipe the result into another program to be able to scroll through the results

<details>
<summary>Show answer</summary>
  
  ```
  awk '$4 < 10' E10_Sample_1_mosdepth_summary.txt | less
  ```

</details>


## Lunch break!


## Moving from commands to scripts

### Regular expressions & some repeating
*Explainer*: 
- what can you use them for?

**Exercise 13.1** Find out which contigs have a read depth between 1 and 5 in Sample 1.

<details>
<summary>Show answer</summary>

  ```
  awk '$4 > 1 && $4 < 5 {print $1}' E10_Sample_1_mosdepth_summary.txt 
  ```

</details>


**Exercise 13.2** Find out which of the above contigs have a length longer than 10 million bp.

<details>
<summary>Show answer</summary>

  ```
  awk '$4 > 1 && $4 < 5 && $2 > 10000000 {print $1}' E10_Sample_1_mosdepth_summary.txt 
  ```

</details>


**Exercise 13.3** Filter out only the completely assembled "chromosomes" (they are at the top of the file and their names start with "NC"), and mitogenome (that "chromosome" name we saw before; it is MH893761.1)

<details>
<summary>Show tips</summary>
  
  Tips: 
  1. It is nice to see the other columns now too
  2. There are multiple ways to solve this so go ahead and experiment!
  
</details>


<details>
<summary>Show answer</summary>
  
  ```
  awk '$1 ~ /NC/ || $1 ~ /MH/ {print}' E10_Sample_1_mosdepth_summary.txt
  ```

</details>


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

<details>
<summary>Show answer</summary>
  
  ```
  nano my_first_script.sh
  ```

</details>


**Exercise 14.2** now type in the first bash line that is needed, a comment to let your future self know what this script is going to do, and use the "echo" command to let the script return a message to the terminal.

<details>
<summary>Show answer</summary>
  
  ```
  #!/bin/bash
  #This is a comment to remind myself that echo is a command to print something to the terminal
  echo "WOW! You start looking like a super hero!"
  ```

</details>

And of course: execute the script!!

<details>
<summary>Show answer</summary>
  
  ```
  bash my_first_script.sh
  ```

</details>


**Exercise 14.3** Make a new script that concatenates the output of searching for the gene "MH893761" in two files into one, and it should let you know when it is done. 

<details>
<summary>Show answer</summary>
  
  ```
  nano find_MH893761.sh

  #!/bin/bash
  # this is to find MH893761 in multiple lines and save it into a new file, mito_depth.txt
  grep "MH893761.1" E10_*.txt > mito_depth.txt
  echo "done!"
```

</details>

**Exercise 14.3+** Adapt your script find_MH893761.sh to calculate and output the percentage covered by deviding the number of bases by the length of the contig for each sample.

<details>
<summary>Show answer</summary>
  
  ```
  nano find_MH893761.sh

  #!/bin/bash
  # this is to find MH893761 in multiple lines and save it into a new file, mito_depth.txt
  grep "MH893761.1" E10_*.txt | awk '{print $3/$2}'
  echo "done!"
  ```

</details>


## Let's have a coffee break!

### More concepts
*Explainer*:
- a loop
- an array

**Exercise 15** Write a new script that loops through all files in the directory mosdepth_files to grep for the mitogenome "MH893761" and concatenate the results in a new file.

<details>
<summary>Show tips</summary>
  
  Tips:
  1. Unzip the mosdepth_files folder with unzip, the easy way is to just do this yourself, the hard way is to include this in your script.
  2. Make sure the script knows where to find the files
  3. Make use of a wildcard, but be specific enough that you don't incorporate any other files in the loop than the summaries
  4. Make sure to not overwrite the output for each file in the loop (you should have a line in the output file for each of your input files)

</details>


<details>
<summary>Show answer</summary>
  
  ```
  #!/bin/bash
  #This script loops through the files and concatenates the output of searching for the mitogenome "MH893761" into one file
  for file in *_summary.txt;
  do
  grep "MH893761.1" $file >> mito_depth_all.txt
  done
  echo "Hurray! I see a new super hero has joined the coding forces!"
  ```

</details>

## Let's have a coffee break!

## The Advanced Stuff (just so you know)
*Explainer*:
- add managing environments/conda?
- pipelines / snakemake / ?
- add containers / images / etc.?

# Extra exercises !
**Exercise 16** Can you dissect this command, and find out what it will do? You can also try and execute it! Or change it ...!

```
bcftools query -i'QUAL>20 && DP>10 && F_MISSING<0.5 && MAF>0.01' -f'%CHROM %POS %QUAL %DP\n' calls_10.bcf | head
```

<details>
<summary>Show answer</summary>
  
  Firstly, it does a bcftools (google to know what that is) search for SNPs with a quality over 40, and a read depth over 10, a amount of missing positions below 0.5, and a minor allele frequency over 0.01. Then, it returs the columns with the chromosome name, the position of the SNP, the quality of the SNP, and the depth of the SNP. It uses the "calls_10.bcf" file, and pipes the output into head. Some suggestions; 1) try piping into another file viewer program. 2) try removing or adding filters, 3) try changing the fields that are returned.

</details>

**Exercise 17** Open the E17_fastqc.sh script and try to understand what the script does. Adapt the file locations, so you can run it!

<details>
<summary>Show answer</summary>
  
  This script does a fastqc (google to know what that is) analysis for a set of reads. Some tips to make it work; 1) check whether the zipping program used in the script fits with the zipping type the files are in your directory.

</details>
