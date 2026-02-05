# Introduction to Linux systems
This repository has all the exercises and materials for the Introduction to Linux systems session on day 1 of the EVOP 2026 course. All exercises are in the README.md.
You can copy-paste any commands that you don't want to type out to your terminal. However, please realise that it will be good practise to type out commands yourself, as getting used to th$
Please find the slides <placeholder>

## Welcome
Please set up your work station such that you are comfortable - and make sure not to keep it tidy!!

## Logistics of the course
Main points:
- Introducing the TA's
- We use: Post-Its!!
- Set up and log into the desktop (you have a paper?)

## Introduciton of Unix & Terminal
### Philosophy of Unix
The bare bones - we need heavy computation to work as efficiently as possible.
The output of one command gets used in the next.

### Loggin onto this server
<placeholder for log in to the server>
```
ssh <your user name>@<server>
```

###Several types of server
- Cloud server
- Server/cluster manager
- A server manager

###Nodes, CPU's & Memory
Login node vs. computational node
Connectivity
```
(+ Exercise)
```

Screen
```
(+ Exercise) ## is it installed?
```

Interactive node
```
ssh <your user name>@<server>
```

###Several types of server
- Cloud server
- Server/cluster manager
- A server manager

###Nodes, CPU's & Memory
Login node vs. computational node
Connectivity
```
(+ Exercise)
```

Screen
```
(+ Exercise) ## is it installed?
```

Interactive node
```
(+ Exercise) ## is it installed?
```

###Files & folders (+ Exercise)
- moving files between local <> server
- what is the folder structure?
- the expences
- what can we do about that? (zip & remove)

###Tricks
- Wildcards
```
(+Exercise)
```
- Using keys (?)
- the magic tab


###Executing commands
- a command
- command structure
- where is the user manual?
- command structure
- where is the user manual?
```
(+ Exercise)
```

###The most used commands
pwd, cd, ls
```
(+Exercise)
```
mv, cp (scp), rm, get
```
(+Exercise) ## NOTE: Get may need to be installed, not in cheat sheet
```
cat
```
(+Exercise)
```
tar, gzip, unzip
```
(+Exercise) ## NOTE: tar, gzip and unzip may need to be installed, not in cheat sheet

```
more, less, most
```
(+Exercise)
```
head, tail
```
(+Exercise)
```
grep
```
(+Exercise)
```
awk
```
(+Exercise)
```

###Working on zipped files
zcat etc. (+ Exercise)
```
exercise
```

###Piping
pipes
```
(+ Exercise)
```

###Expressions
Boolean expressions
```
(+ Exercise)
```

###Editing a file
- nano
```
(+ Exercise)
```
- vim
- vi
- emacs
###a script
- basic elements
- annotation of a script
- good practices
```
exercise
```

###concepts
- a loop
- an array

## The Advanced Stuff (just so you know)
      - add managing environments/conda?
      - pipelines / snakemake / ?
      - add containers / images / etc.?

#### Extra exercise !
Can you disect this command, and find out what it will do?
```
bcftools query -i'QUAL>20 && DP>10 && F_MISSING<0.5 && MAF>0.01' -f'%CHROM %POS %QUAL %DP\n' calls_60.bcf | head
```