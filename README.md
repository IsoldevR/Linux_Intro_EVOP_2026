# Linux_Intro_EVOP_2026
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
### Phylosophy of Unix
The bare bones - we need heavy computation to work as efficiently as possible.
The output of one command gets used in the next.

### Loggin onto this server
<placeholder for log in to the server>
```
ssh <your user name>@<server>
```

#### Exercise X
Can you disect this command, and find out what it will do?
```
bcftools query -i'QUAL>20 && DP>10 && F_MISSING<0.5 && MAF>0.01' -f'%CHROM %POS %QUAL %DP\n' calls_60.bcf | head
```
