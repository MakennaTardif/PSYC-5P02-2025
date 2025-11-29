# PSYC 5P02- Introduction to Programming for Psychology
## Fall 2025

### Problem Set 5
### Assigned November 28 - Due December 4
### Late Penalty: 5%/day

* To compete this assignment, produce ALL relevant code for each of the questions. All responses must be included in a .m file. All relevant .mat files must also be submitted. 

* ALL CODE MUST BE THOROUGHLY DOCUMENTED! You must be detailed in your explanations of your code. Feel free to provide an explanation for your approach to solving a problem. 

* For each question, try to use the most efficient code you can to produce each response, unless otherwise specified. 

* All relevant files must be uploaded to a git repository that is shared with me (user: SMEmrich) in order for the assignment to be considered submitted. Please be sure to put all files in a separate folder (e.g., /PS2/ProblemSet2.ipynb)

* Please avoid using ChatGPT, CoPilot or any other AI assistance to complete this assignment. If you do end up using it, please explain in your comment/Markdown notes where you got stuck, describe the code that was produced, and explain how the solution got around what you coudn't figure out


### Rubric:
* Accuracy & Efficiency: 50%
* Explaination and documentation: 50%

## Problem 1 --- Creating and Modifying Vectors

You are given a vector of reaction times (RTs), in milliseconds:

``` matlab
RT = [520 498 601 1200 450 475 3000 510 490];
```

1.  **Using logical indexing**, create a new vector `RT_clean` that removes any reaction times
    greater than 1500 ms.
2.  Compute and display:
    -   mean RT
    -   median RT
    -   number of trials removed

## Problem 2 --- Matrix Manipulation

Create a 10 × 3 matrix called `data` representing 10 trials:

-   Column 1: stimulus intensity (random integers from 1--100)
-   Column 2: condition (1 = low load, 2 = high load), randomly assigned
-   Column 3: response (random integers 1 or 2)

Then:

1.  Extract all high-load trials into a new matrix `highLoadData`.
2.  Compute the mean stimulus intensity separately for each condition.

## Problem 3 --- If-Statements

Given:

``` matlab
criterion = 50;
```

A participant's response is considered correct if:

-   stimulus \< criterion → correct response = 1
-   stimulus ≥ criterion → correct response = 2

Using the data you createad for **Problem 2**, Write code that prints "Correct" or "Incorrect" using loops and if/else statements.

## Problem 4 --- While Loops

Create a variable called `RTs` that contains 100 values, normally distributed around 0.700 ms, and with some added uniformrandom noise of up to 400 ms. 

Create a function that recursively removes outliers > +/- 2SD, and repeats until no more values are removed. Be sure to document the function with a help file and save as a stand-alone function.

Then:

1.  Have your script call the function on the variable `RTs`
2.  Store all removed values in `removedRTs`.
3.  Print the final cleaned mean, number of iterations, and total number of outliers removed. Here's an example of how you can use `fprintf` to print formatted text to the terminal:

```matlab
name = 'Alice';
age = 30;
message = sprintf('Hello, my name is %s and I am %d years old.', name, age);
disp(message); % Displays: Hello, my name is Alice and I am 30 years old.
```

where `%s` and `%d` are formatted strings and doubles, respectively.


## Problem 5 --- Structures

The file `experiment_data.mat` contains a structure called `data`. Within this file is a structure with one subject's data.

1. Load the file into matlab
2. Print the particpant ID
3. Display the number of trials recorded for that subject
4. Compute the mean reaction time across all trials, and add it to a new field called `mean_RT`
5. Compute the accuracy and add it to a field called `accuracy`. 
6. Create a new subject, and create 10 RTs for that subject (**note:** you may want to use the function `deal` to accomplish this )

## Optional Bonus: 

Plot RTs after each iteration of recursive outlier removal.
