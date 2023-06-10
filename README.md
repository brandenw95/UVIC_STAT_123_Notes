# (STAT 123) Data Science - Complete Notes - Summer 2023

[TOC]

- [Course Intro (syllabus)](#course-intro--syllabus-)
  * [Learning Objectives](#learning-objectives)
  * [Evaluation and Grading](#evaluation-and-grading)
    + [Assignments](#assignments)
    + [Lab Participation](#lab-participation)
    + [Midterms](#midterms)
    + [Final Exam](#final-exam)
- [Chapter 1](#chapter-1)
  * [What is Data Science?](#what-is-data-science-)
    + [Overview](#overview)
    + [Motivating example](#motivating-example)
    + [Definitions](#definitions)

# Course Intro (syllabus)

> Professor: Chi Kou
>
> Email: cmrkou@uvic.ca
>
> Office Hours Room: David Turpin Building A518 // BEC 160
>
> Office Hours: 
>
> - Tuesday 3:00pm - 5:00pm
> - Thursday: 3:00pm - 5:00pm
>
> Labs:
>
> - Wednesday: 2:30pm - 3:20pm

## Learning Objectives

By the end of this course, given a problem/question and some data, you will be able to write R code (a Statistical programming language) to graphically visualize and summarize the data. You will be able to interpret the graphs and summary statistics thus providing an answer to the problem/question posed. You will also be able to produce professional looking reports with all appropriate information you want to convey.

In the programming language R, you will be able to:

- Load data into R.
- Check the quality of the data.
- Prepare data for analysis purposes.
- Summarize the data.
- Visualize the data.
- Conduct basic statistical analysis, such as:
  - Estimate population parameter(s).
  - Conduct simple statistical modelling.
  - Interpret the model.
  - Evaluate the fit of the model

## Evaluation and Grading

| Assignments   | Lab Participation | Midterms          | Final Exam |
| ------------- | ----------------- | ----------------- | ---------- |
| Every 2 weeks | Weekly            | May 31, July 12th | TBA        |
| 20%           | 15%               | 30% (15% each)    | 35%        |

### Assignments

Approximately every 2 weeks you will be given an assignment based on materials covered in lectures and labs (combining theory and practice using R). You will have one week to complete the assignment and submit it for grading. While collaboration with your peers (such as discussing questions and reviewing one another’s work) is encouraged, your submitted work must be your own. Work that appears copied will be given a grade of 0. Violation of academic integrity will be dealt with according to university policy.

### Lab Participation

Each week you will be given a worksheet in lab which will help you
put concepts learned in lecture into practice using RStudio. A specialized tutorial leader will help to guide you with a demonstration and then will give you time to work on your assigned problem. You will submit your completed lab worksheet soon after the lab to be graded

### Midterms

There will be two midterm tests during the semester. The tests will be held on Wednesdays during lecture or lab time. The dates for these tests are May 31 and July 12th If you miss a test for an unavoidable reason (such as illness or family affliction), then you may be excused but you have to contact me as soon as possible. Your test score will be assigned at the same rank as your performance on the final exam (Ex: If you rank 30th on the final then you are assigned the 30th ranked mark on the test). 

If you miss both tests for an unavoidable reason then the weight will be moved to the final exam so long as the weight of the final does not exceed 60%. This will mean that
there is a 5% penalty. I will contact you to explore other options

### Final Exam

A 3-hour final exam will be held at the end of the term. The examination date is to be determined by the University and is usually released around the end of June. The examination period is August 8th - 18th, 2023. Students are strongly advised not to make plans for travel or employment during the final examination period as special arrangements will not be made for examinations that conflict with such plans

# Chapter 1 - What is Data Science

![image-20230503130343869](assets/image-20230503130343869.png)

## Overview

Statistics is the science of data. In this Chapter, we learn some introductory terms related to data and we look at some examples to help illustrate these terms. We will also begin to formulate questions about finding data which we will eventually answer later on in the course.

> Note: Descriptive stats only - Summery of data

## Motivating example

More so now than ever, the world is paying attention to statistics. Daily updates on COVID-19 can include number of new infections, positive test rates, mortality rates, vaccination rates, as well as plots of an infection rate curve which we are trying to flatten. Depending on the source, the information being given can paint very different pictures. Are all of these sources equally reliable? Is the data accurate? Is the data being manipulated in a misleading way?

Whenever confronted with data, one of the first and most important questions that should be answered is: Where does the data come from?

- Reputable sources
- Government 
- non-profit organizations 

## Definitions

### Individuals / Observations

> **Individuals / Observations**
>
> Objects described by a set of data.
>
> Note: Individuals are not necessarily persons, they can be animals, etc.
>
> **Example:** 
>
> - Hospital Patients 
> - Owls
> - Tress

### Variables

> **Variables**
>
> Any Characteristic of an individual
>
> **Example**:****
>
> - Blood pressure 
> - Height
> - Size
> - Breed of dog

## Example 1 (Starbucks)

A Starbucks employee decided to collect information about several of their menu items. Consider the resulting data set:

| Menu Item    | Price | Weight(in g) | Drink? (Yes/No) |
| ------------ | ----- | ------------ | --------------- |
| Cappuccino   | $4.75 | 473          | Yes             |
| Banana Bread | $3.45 | 115          | No              |
| Dragon Drink | $5.15 | 473          | Yes             |

> Note: Tables in R are called data frames.

1. What are the individuals in this data set? Select all that apply.

- [x] Menu Item 
- [ ] Price
- [ ] Weight
- [ ] Whether it is a drink

2. What are the variables in this data set? Select all that apply.

- [ ] Menu Item 
- [x] Price
- [x] Weight
- [x] Whether it is a drink

## Definitions

### Categorical Variable (Nominal Variable) 

> **Categorical Variable (Nominal Variable)** 
>
> Variables that cannot be ranked. Places an individual into one of the several groups or categories.
>
> <u>Example:</u> "Whether it is a drink"

### Ordinal Variable

> **Ordinal Variable**
>
> A variable we can establish and rank.
>
> <u>Example:</u> "Weight" and "Price"

### Numerical Variable (Quantitative Variable)

> **Numerical Variable (quantitative variable)**
>
> Takes numerical values, it can be used to perform meaningful arithmetic operations such as averaging.
>
> <u>Example:</u> "Weight" and "Price"

How do we decide what variables to collect in our data?

- Depends on the data.

> Note: 
>
> - Categorical Variables can be numbers. (Ex. 0 or 1 for yes and no)
> - No meaningful operations cannot be done on this.

## Example 2 (Recycling Habits)

When trying to judge the recycling habits of a neighborhood, researchers went around weighing the recycling bins of each household. They found that certain streets (with more expensive houses) had heavier recycling bins and other streets (with less expensive houses) had lighter recycling bins. Does this mean that the more expensive your house the more you recycle?

<u>The individuals:</u> The Households of the neighborhood. 

 <u>The variable(s):</u> Weight of recycling bins, cost of the house, number of residence in house, type of house.

<u>Type of variable(s):</u> 

- Weight - Numerical 
- Cost - Numerical 
- Residents - Numerical 
- Types of house - Categorical

<u>Problem with the variable(s):</u> 

- Weight determine level of recycling?
- Different house types, different recycling contents

## Definitions

### Population

> **Population**
>
> The entire group of individuals about which we want information.

### Sample

> **Sample**
>
> A Sample is a subset of a population. If done correctly, we can use a sample to draw a conclusion about a population. (Inferential Stats)

## Example 3 

1. You wish to measure the mean weight of 5 month old Koala bears so you find twenty 5-month old Koala bears and weigh them.

- <u>Population:</u> All 5-month old Koala Bears
- <u>Sample:</u> Twenty 5-month old Koala Bears



2. You decide to look at all of the uncollected Stat 123 midterms from the Spring 2019 semester. Using this you make a report of the average number of mistakes a Stat 123 student in Spring 2019 made on midterms.

- <u>Population:</u> Stat 123 Students in Spring 2019
- <u>Sample:</u> Students that didn't collect their midterms.



3. You want to determine the number of wine drinkers in Victoria BC so you loiter inside the Liquor Plus store located at Quadra and MacKenzie on Monday January 11th from 3pm-5pm and count the number of people who buy wine at the store.

- <u>Population:</u> All people in Victoria
- <u>Sample:</u> shoppers at liquor stores located at Quadra and MacKenzie on Jan 11th 3pm-5pm.

> Note: Not all samples are good samples. We will discuss this idea further in later sections but if you choose a bad sample, it is not going to accurately describe the population.

## Definitions

### Observational Study

> **Observational Study**
>
> observes individuals and measure variable values of interest without intervention.
>
> ex. "as-is"

### Sample Survey

> **Sample Survey**
>
> Surveys only some of the individual of the population (sample) by observing values of variable (No intervention).

### Census

> **Census**
>
> Attempts to include the whole population.
>
> ex. Stats Canada

### Experiment

> **Experiment**
>
> Deliberately impose some "Treatment" on individuals in order to measure their responses (Intervention)

 ## Example 4

- You are trying to determine the proportion of red cars on the road. You decide to count the number of cars that drive by your house and note how many of them are red.
  - Type of study: **<u>Observational</u>**

- You want to determine if having reading break helps students do better on tests so you schedule one test before reading break and one test immediately after reading break and compare the grades on these tests.
  - Type of study: **<u>Experiment</u>** (Control vs treatment)

- In a (hypothetical) study, you recruited 10 participants. First you measured their alertness (assuming we can) scores. Then you divided the participants into 2 groups of five. For the first group, you gave them a pill that contains some newly developed chemicals to improve alertness. For the second group, you gave them a pill that contains only starch. You waited 15 minutes. Now you measured their alertness again.
  - Type of study: **<u>Experiment</u>** 

# Chapter 1.5 - Intro to R

## Learning Outcomes

For the first introduction to R, we are going to go over the following:

- See the difference between R and RStudio
- Writing commands in a script vs directly in the console.
- Opening an R Markdown file. 
- Check and set the directory that we are working in. 
- Adding, subtracting, multiplying, dividing and averaging values.
- Assigning values to a variable.
- Vectors.

## Difference between R and RStudio

R is a programming language used for statistical computing while RStudio uses the R language to develop statistical programs. RStudio is an example of an integrated development environment or IDE.

You can use R without RStudio but you cannot use RStudio without R (since RStudio uses R).

## The Advantage of RStudio

RStudio has a much more user-friendly interface which makes it
nice especially for beginning programmers. Additionally, RStudio allows users to develop and edit programs in R by supporting a large number of statistical packages, higher quality graphics, the ability to manage your workspace, and conveniently has a way to present your code and output as a pdf, HTML, or Github document (just a few examples).

## Writing Commands in the Console vs a Script

### Console

You can type commands directly into the console, each command will start with a > symbol, followed by the command.

Once you press enter, the command will be executed. For example, type into the console 5+2, press enter, and then type 6-3, and press enter.

### Script

To open a script in RStudio, click on File − > New File − > R Script. The script will open above the console. In a script you type the commands each on their own line. Notice that if you press enter in the script, the command is not executed. 

For example, type into the script 5+2, press enter, and then type 6-3, and press enter.

#### Running the script

If we want to execute the commands in the script, we need to Run the code. You can do this in a few different ways:

1. Click on the line in the script with the command that you wish to execute. Then click on − >Run.
2. Highlight the line in the script the command that you wish to execute. Then click on − >Run.
3. Click on the line in the script with the command that you wish to execute. Then (for Macs) press Command+Enter or (for PC) press Ctrl+Enter.

> **<u>Notice:</u>** When you run the code from a script, the output is shown in the console, not in the script itself.

> <u>**Question:**</u> Why not just type all of our commands into the console since typing it into a script
> involves an extra step to run the code?
>
> <u>**Answer:**</u>
>
> .

## Using R Markdown

R Markdown is a feature of RStudio which allows you to combine your script and output all in the same document. To open up a new R Markdown click on File − > New File − > R Markdown. 

In this course, when using R Markdown, we will only be creating documents. You can type in the title of your document and also select the format of your document (either HTML, PDF or Word).

> Note 1: If you wish for your document output to be in PDF format, you will need to download something called LaTeX which is a free Math programming language (I use it to write all of your notes). You can download it at: https://www.latex-project.org/get/

> Note 2: You do not need to download LaTeX if you want your document to be an HTML or Word file.

#### Advantage of R Markdown

(To be filled in)

You will be learning how to use R Markdown in your first lab.

## Checking and Setting your Directory

If is a good idea to create a file dedicated to your Stat 123 R assignments/labs. For example, I’ve created a folder called R Stat123 which is where I will save all content related to assignments and labs in this course.

You will need to tell R what file you want it to look in. For example, if you are given a data set to download and you save it to your RStat123 folder. You will need to tell R to find that data file in that folder.

## Set your Working Directory in R Studio

In order to set your directory using R Studio, click on Session − > Set Working Directory − > Choose Directory. Then select the folder that you’ve designated for R assignments.

If you want to double check that you’ve set your working directory correctly, you can type in the command: 

```R
getwd()
```

If you want to set your directory manually you can use the command:

```R
setwd("Your dir")
```

## Adding, Subtracting, Multiplying, Dividing and Averaging in R

You already saw that we can directly perform arithmetic operations in R by using the keys:

```R
+, -, *, /, ^
```

There are also R commands that can add or multiply many numbers:

```R
2+3+4+5
2*4
```

To find the average, we must add up all of the values and then divide by the number of values:

```R
(2+3+4) / 3
```

> **<u>Question:</u>** Is there a better way to do this?
>
> **<u>Answer:</u>** Yes, with vectors.

In R, a vector is a list of values (which could be numerical values, TRUE/FALSE statements, characters, etc..). 

Before we can talk about vectors, we must first learn how to assign a value to a variable:

## Assigning a value to a variable

In R, we can use either < − or = to assign a value to a variable. For example:

```R
x <- 3
x = 3
```

After assigning a value to a variable, if we want to see the value of that variable (or print the value of that variable) we just type the variable name as the command and run that line of code.

## Types of Variables

- Character - "Y", "N"
- String - "Yes"
- Numeric - 2, 56, -1
- Integer - -2, 0, 10
- Logical - TRUE, FALSE

## Vectors

To create a vector in R, we use the command c( ).

For example, the vector V containing the numbers ( 6, 12, -3, 2, 51 ) can be assigned using the command:

```R
V <- c(2, 3,4,5,7)
or 
V = c(2,3,4,5)
```

The vector C containing the characters ( Apple, Orange, Grape, Other ) can be assigned using the command:

```R
C <- c( Apple, Orange, Grape, Other ) 
```

If we want to assign a sequence of numbers (each separated by 1) then we can use a colon: 

For example, the code c(4 : 9) =

```R
v <- c(4:9)
```

We can also write a sequence of numbers each separated by an amount k by using the command seq(a, b, k). 

For example, the code seq(4, 9.0.5) =

```R
seq(4, 8.7, 5)
```

Combining this together, to get a vector which contains a sequence of numbers from 6 to 20, each separated by 0.2, we would use the command:

```R

```

> **<u>Question:</u>** Why are vectors useful? 
>
> **<u>Answer:</u>** We can perform arithmetic operations using vectors which is much easier than performing those operations by individually typing in values.

### Examples

Define a vector called days which contains the days of the week (starting from Sunday) and another vector called classes which contains the numbers (0, 2, 4, 5, 4, 3, 0) which represent the number of hours of classes a student has each day of the week.

We can add up the total number of classes in a week:

```R
sum(classes)
```

We can determine the average number of hours of classes each day of the week:

```R
mean(classes)
```

If we want to only access some days of the week, we can specify which item of the vector classes we want to look at. For example, we can look at only the hours in the 3rd day of the week:

```R
classes[3]
```

We can look at only the hours from the weekdays (day 2 to day 6 of the week):

```R
weekdasy[2:6]
```

We could assign a variable called weekdays to the vector which contains only the hours of classes during the week:

```R
weekdays <- classes[2:6]
```

We could then take the average number of hours of classes each weekday:

```R
mean(weekdays)
```

We can assign the days vector to be the names of the classes vector elements:

```R
names(classes) = days
```

So if we want to access Thursdays class hours we have two options:

```R
classes[5]
classes["Thursday"]
```

## DataCamp Assignments

**The datacamp course:** 

Introduction to R have been assigned in datacamp as an assignment. Students in this course should have received an email from datacamp inviting them to sign up for free. Once you sign in to your account, check the due date for various assignments.

# Chapter 2 - Samples, Good and Bad

## Overview

In this section, we begin to explore sampling as a method used to estimate features of a population. We will talk about a few different kinds of samples, some which are biased and some that seek to eliminate any bias.

## Motivating Example

Suppose we want to determine the prevalence of a certain disease (I think
we can all think of one that is of concern these days) in Canada. In order to actually determine the true value of this proportion, we would need to test every single person in the population for the disease with a test that is 100% accurate. That would be incredibly expensive and essentially impossible to execute. Instead, we could take a **sample** of Canadians and test them for the disease. How do we choose who is in the sample? What if someone selected for the sample refuses to participate in the study?

## Types of samples

We now define 4 different kinds of samples:

- **<u>Convenience sample</u>** 
  - Select whichever individuals that are the easiest to reach (ex. asking survey on the street)
  - Problem: Sample may not represent the population
- **<u>Voluntary response sample</u>**
  - Chooses itself by responding to a general appeal 
  - Same problem as above
  - Ex. voting, volunteer polling
- **<u>Simple random sample (or SRS)</u>**
  - n individuals 
  - Those n individuals are chosen in the population in such a way that they are equally likely to be selected.
  - Ex. population of 14 students in this class. Want a random sample of 3. 
- **<u>Stratified random sample</u>**
  - Stratified random sampling is a type of probability method using which a research organization can branch off the entire population into multiple non-overlapping, homogeneous groups (strata) and randomly choose final members from the various strata for research
  - Reduces cost and improves efficiency.

## Practice Question

Suppose I want to determine the proportion of current UVic students who
plan on taking Stat 353 at some point in their degree. I want to collect a sample from UVic’s population and I have a few ideas on how to take this sample.

In each scenario described below, determine what kind of sampling is being described.

> I get a list of all of the students numbers of current UVic students (as well as the corresponding email addresses) and randomly select 200 of them to contact and ask this question.

- [ ] Convenience
- [ ] Voluntary Response
- [x] SRS
- [ ] Stratified Random

> I ask everyone in Stat 123 to answer this question on their first homework assignment and use the entire class as my sample.

- [x] Convenience
- [ ] Voluntary Response
- [ ] SRS
- [ ] Stratified Random

> I post signs around UVic asking students to contact me with their answer to the question.

- [ ] Convenience
- [x] Voluntary Response
- [ ] SRS
- [ ] Stratified Random

> I randomly sample 5% of the students from each department at UVic.

- [ ] Convenience
- [ ] Voluntary Response
- [ ] SRS
- [x] Stratified Random

Certain types of sampling can produce something called bias. We say that a sample is biased if:

- It systematically favor's different outcomes. A biased sample is one that is NOT representative of convenience, voluntary (biased)

Almost always, convenience sampling and voluntary response sampling produce a biased sample. It is best to do some type of random sampling.

> <u>**Question:**</u> When should you use a Simple Random Sample vs a Stratified Random Sample? 
>
> **<u>Answer:</u>** Stratified sampling should be used when you believe that each stratum will be different from the overall population. Simple random sampling should be used if you think that all the sub groups are bout the same.

> Note: There are other types of random sampling that we did not define here which are explored further in Stat 354.

# 2.5 Matrices and Data Frames in R

## Learning Outcomes:

- Defining a matrix in R.
- Naming the rows and columns of a matrix in R.
- Commands to sum the columns and rows of a matrix.
- How to add another row or column to a matrix.
- How to select specific elements from a matrix.
- The difference between the as.matrix() and the matrix() command.
- What is the difference between a matrix and a data frame?

> **Matrix**
>
> An m×n matrix is a 2-dimensional rectangular table with m rows and n columns. Each cell in the matrix is identified by its row and column indices or names. In a matrix all the elements must be the same type of data. A matrix in R is like a mathematical matrix, containing all the same type of values (usually numbers).

## Defining a Matrix in R

In order to create a matrix in R, you use the command matrix(). The input for this function is a vector and then the number of rows or columns you want. For example:

![image-20230531092510909](assets/image-20230531092510909.png)

You might want to specify how the matrix should be filled (that is, should it be filled by row or by column). There is an extra input that you can type in the matrix() function that accomplishes this:

```R
x <- matrix(c(1:6), nrow=3, byrow=TRUE)
x <- matrix(c(1:6), byrow=TRUE, nrow=3)
x <- matrix(c(1:6), nrow=3) # Warning fill in missing values using vectors (reuse)
```

Often times, the matrix is organizing data in a useful way. Perhaps the columns represent the values of certain variables and the rows represent the individuals in the sample. It is nice to associate meaning to the values in the matrix by naming the rows and the columns. For example:

Suppose we have a matrix with 4 rows and 2 columns and the rows represent the individuals A, B, C, D and the first column represents the variable Weight and the second column represents the variable Age. Suppose the pairs of data are as follows: 

(80,12), (40,3), (20,0.8), (25,1)

(a) Create a matrix M with these values.

```R
M = Matrix(c(80,12,40,3,20,0.8,25,1), byrow=TRUE, nrow=4)
```

(b) Create a vector called individuals which contains the individuals A,B,C,D and create a vector called variables which contains the two variables Weight and Age.

```R
individuals = c("A", "B", "C", "D")
variables = c("weight", "age")
```

(c) Use the R commands colnames() and rownames() to set the names of the matrix M to the appropriate vectors from part (b).

```R
colnames(M) = variables
rownames(M) = individuals
```

## Adding up the rows and columns of a matrix

There are commands rowSums() and colSums() which add up the rows and columns of a matrix.

```R
rowSums(M)
```

```
colSums(M)
```

## Adding another row or another column to an existing Matrix

Sometimes, you may wish to add more information to your matrix. Rather than re-create the matrix, we can add another row using the command rbind() and add another column using the command cbind().

For example, suppose that we wished to add another individual E with weight 30 and age 1.5 to our matrix. This amounts to adding another row. We could do this by typing in:

```R
newM = rbind(M, c(30, 105))
```

## Selecting an element or a row or a column from a Matrix

Matrices are indexed by row position and column position. Suppose we have a matrix that is called M, then:

```R
M[1,2] # row 1 column 2
```

```R
M[4,3] # Row 4 column 3
```

```R
M[ ,2] # Selct column 2
```

```R
M[3, ] # Select 3rd row
```

```R
M[1:3, ] # Select first 3 rows of M		
```

```R
M[ ,1:4] # First 4 columns or columns 1 - 4
```

## Finding and locating max and min in a matrix or vector

```R
max(M) # FInds the max
min(M) # Finds the min
```

## Difference between the matrix() and as.matrix() commands

```R
matrix() # Creates a matrix from a vector
as.matrix() # Converts a compatible object to a matrix
```

## Data Frame

**Recall**: In a **matrix** all the elements must be the **same type of data.** 

A data frame is similar to a matrix, The structure of a data frame is more flexible. The columns of a data frame are allowed to **contain different types of data**, Many data sets that we download or that are available to us in R are data frames.

In R, if you type ”mtcars” without the quotation marks, you will display the built-in dataset mtcars. If you type ?mtcars, R will display the description of the data frame.

![image-20230531094516072](assets/image-20230531094516072.png)

- What are the individuals?
  - Car name 
- What are the variables?
  - those 11 variables
- Which variable(s) is (are) categorical?
  - am, vs
- Which variable(s) is (are) numerical?
  - the rest

## Working with individual variable(s) within a data frame

To display the variable hp, you can type:

```R
mtcars$hp
```

Matrix indexing also works with data frames:

![image-20230531094726527](assets/image-20230531094726527.png)

# Chapter 3 - What do Samples Tell Us?

## Overview

In Chapter 2, we talked about various types of sampling. In this section, we will discuss the size of the sample and the variability of your results depending on the sample size and the population that the sample comes from. We will discuss the difference between a <u>parameter</u> and a <u>statistic</u>.

## Motivating Example

Suppose a chef makes a large pot of soup. He wants to check if the soup is over-salted so he takes one spoonful of the soup and tastes it. Suppose an editor wants to double check a 600-page novel for typos so they spot check 35 pages. Suppose a psychologist wants to determine the effects of an anti-anxiety drug on patients, she analyzes the results of 500 patient files. In these examples there is a sample of size 1, a sample of size 35, and a sample of size 500. How should you decide how large a sample size needs to be?

We begin with some definitions:

> <u>**Parameter**</u>
>
> some number that describes the population.

> <u>**Statistic**</u>
>
> A method or way to estimate the population parameter

# Practice Question

Suppose we are interested in the average height of all current NBA players and we currently have access to players on the Toronto Raptors.

1. <u>**The population is?**</u>

- [x] Current NBA players
- [ ] Current Raptors players
- [ ] All Basketball players

2. <u>**The sample is?**</u>

- [ ] Current NBA players
- [x] Current Raptors players
- [ ] All Basketball players

3. **<u>What is the parameter we are interested in?</u>**

- [x] The average height of all current NBA players.
- [ ] The average height of current Raptors’ players.

4. **<u>What is a statistic we can use to estimate the population parameter?</u>**

- [ ] The average height of all current NBA players.
- [x] The average height of current Raptors’ players.

5. **<u>The average height of current Raptors’ players is 6 foot 5 inches. What does this value represent? Select all that apply.</u>**

- [ ] The Population parameter
- [x] an estimate of the population parameters
- [ ] A statistic
- [x] The observed value of a statistic.

## Examples of desired Parameters and the Statistics used to estimate them

### Example 1 (Mean)

#### <u>Parameter:</u> Population mean 

$$
\mu = \frac{{\sum_{i=1}^{N} x_i}}{{N}}
$$

- *N* is the total number of observations in the population, and
- x_i represents each individual observation in the population.

#### <u>Statistic:</u> Sample mean 

$$
\bar{x} = \frac{{\sum_{i=1}^{n} x_i}}{{n}}
$$

- *n* is the total number of observations in the sample, and
- x_i represents each individual observation in the sample.

### Example 2 (Proportion)

#### Parameter: Population Proportion

p = (# of subjects in the population that has the characteristic)/ (population)

#### Statistic:

p^ = (# of subjects in the sample with the characteristic) / (number of people in sample) 

> Note: 
>
> A statistic doesn’t necessarily do a good job estimating the population parameter. For example, you could use a statistic that just always equals 6. Unless you are trying to estimate a parameter that has the value 6, this is probably not a good statistic.
>
> We usually use statistics that involves computing the same quantity that is desired in the population just on the available sample instead.

## Sampling Bias vs Statistic Bias:

> **<u>Bias</u>**
>
> a consistent, repeated deviation of the sample statistic from the population parameter in the same direction when we take many samples.

- Bias is in the **sample** if we do not chose from the sample "randomly"
  - Some individuals are more likely to be selected.
- Bias is in the **statistic** if you were to repeatedly take random samples and you never expect the statistic to equal the parameter value.

> Note:
>
> We will not be exploring bias in a statistic in this course but if you take other stats courses this is a very important topic.

- Another thing which can greatly impact a sample is variability.

> Variability
>
> escribes how spread out the value in the population is.

![image-20230609201807860](assets/image-20230609201807860.png)

When we are sampling, we would like there to be little or no sampling bias and small variability.

#### Variability Analogy: Dart Board

You can think of the population parameter as the bullseye and the darts being thrown as the statistic estimating the parameter. Sampling bias results in the dart being consistently thrown to the same part of the board, away from the bullseye. Variability results in darts being thrown all over the board, not very close together.

![image-20230609201913629](assets/image-20230609201913629.png)

> **<u>Question</u>**: 
>
> We already saw that if our sample is not random, it will be biased. Thus, to reduce bias in a study, we need to select our sample randomly. If the population we are sampling from does not have small variability, what can we do to make sure our sample accurately reflects the population?
>
> **<u>Answer</u>**:
>
> Increase the sample size. The larger the sample, the lower something called the variance of the sampling distribution is (we will define this later on). Basically, a large sample can better capture the population.

> Note:
>
> Samples don’t always need to be large. If the population does not have large variability then the sample can be small.

Consider the 3 scenarios discussed in the motivating example:

> A chef takes one spoonful of soup as a sample for the entire pot. Why is this an appropriate sample size?
>
> - n=1, as long as you stir, there is essentially no variability in the population. (The whole pot)

> An editor spot-checks 35 pages of a 600 page novel for typos. Why is this an appropriate sample size?
>
> - There is no reason to think the novel has more typos on certain pages
> - If the spot check yields many typos, we may decide that all pages need revisions.

> A psychologist analyzes 500 patient files in order to determine the effects of an anti-anxiety drug on patients. Why is her sample so large?
>
> - N = 500
> - 500 is small relative to the population
> - people are different (in general)
> - may need larger sample from more accurate estimation.

# Chapter 4 - Sampling and Computing Statistics in R

## Learning Outcomes

- Produce n random numbers in R. 
- How to select a random sample from a vector in R.
- How to set a seed in R.
- Access data that is built-in to R. 
- Read a data file into R. 
- Access a column of data.
- Compute sample statistics in R (including sample *mean*, sample *proportion* and sample *variance*)

## Motivation

- faster results
- simulation
- debug

## Producing n random numbers in R

Suppose we want to select n random integers between a and b inclusive. The following command in R will do this:

```R
sample(a:b, n)
```

- a = min
- b = max
- n = size of  sample
- a < b

So, for example the code:

```R
sample(2:75, 20)
```

Results in a vector of length 20, entries from 20 to 75.

> Note:
>
> The default for the sample() command is to perform sampling without replacement. This means that the same individual cannot be in the sample more than once. If you want to change that to allow for an individual to be in the sample more than once (referred to as sampling with replacement then you would type in:
>
> ```R
> sample(2:75, 40, replace = TRUE)
> ```

Show how to use the sample function both with and without replacement.

```{r Using sample function}
# sample without replacement

sample(2:75,20)

# or

sample(75, 20)

# this will give an error

# sample(1:20, 75)


# sample with replacement 

sample(1:20, 75, replace = TRUE)

sample(50:60,16,replace=TRUE)



```

Exercise:

```{r Exercise Question}
# Part (a)
friends = c("Rachel","Ross","Joey","Chandler","Monica", "Phoebe")

# Part (b)
who.pay.for.dinner <- sample(friends,2)

# Part (c)
who.pay.for.dinner

# Set seed to keep sample the same
set.seed(7)
new.sample = sample(friends,2)
new.sample


```

Exploring built-in data sets

```{r exploring data}
# look at the different data sets built into R
data()

# learn more about the sleep data set
?sleep

# load the sleep data set into R
data("sleep")

```

Practice with built-in data sets

```{r}
data(trees)

head(trees)

?trees

mean(trees$Girth)

```

Read in external data file

```{r read in graduates data}

# to read in the data file
# MAKE SURE the data file is in your working directory

read.csv("SecondaryGraduates.csv") # won't save as data frame

# read in data and name the data GradData
GradData = read.csv("SecondaryGraduates.csv")

# preview first 6 rows of the data set
head(GradData)

# preview first 3 rows of the data set
head(GradData,3)

# you can also preview the last 6 rows of the data set
tail(GradData)

```

Practice Question:

```{r Practice Question}
# Question 3: determine the mean
mean(GradData$Number)

class(GradData$Year)

mean(GradData$Year)

# Question 4: assign the year column to a vector
# Now we are "transforming" the data

yrs = as.character(GradData$Year)
class(yrs)

mean(yrs)

# Question 5: assign the number column to a vector
# We are extracting data from a data set
num.grads = GradData$Number
num.grads

# Question 6: name the num.grads vector using the yrs vector
names(num.grads)=yrs
num.grads

# This is useful to have the number of graduates in a named
# vector because now it is easy to access specific years using
# their name. 
num.grads["2013"]

# Question 7: Take a random sample of size 6 
set.seed(21)
samp = sample(num.grads,6)
samp

# Question 8: Take the mean of the sample (x bar statistic)
mean(samp)


```

## How to select a random sample from a vector in R

would be nice to be able to create a sample of individuals directly in R (rather than labelling our individuals with numbers and then using the sample() function to pick a sample of numbers.

You can use the sample() function on a vector. So if you put your individuals inside a vector, then you can sample the individuals from the vector directly.

```R
# (a) Create a vector of names for the individuals in a dinner party

friends <- c("Alice", "Bob", "Charlie", "Dave", "Emma")

# (b) Define a variable called friends.sample which is equal to a random sample of size 2 from friends

set.seed(42)  # Setting a seed for reproducibility
friends.sample <- sample(friends, size = 2)

# (c) Print out the value of the variable friends.sample

print(friends.sample)
#[1] "Dave"   "Charlie"

# (d) Run the code again (choosing the sample and printing out the variable)

set.seed(42)  # Setting the same seed for reproducibility
friends.sample <- sample(friends, size = 2)
print(friends.sample)

# (e) Did the sample stay the same?

#Yes, the sample stayed the same because we set the seed value to 42 before generating the random sample. By setting the same seed value, we ensure that the random number generation process produces the same sequence of random numbers, resulting in the same sample being selected each time the code is run.
```

## Setting a seed in R

In R, there is a function called set.seed() which sets the starting number
used to generate a sequence of random numbers. It ensures that you get the same result if you start with that same seed each time you run the same process.

For example, if I use the sample() function immediately after setting a seed, I will always get the same sample.

So in the previous example, to get the same sample each time we run the code, we write the code as:

```R
set.seed(42)  # Setting a seed for reproducibility
friends.sample <- sample(friends, size = 2)
```

This is important for reproducibility of your results. If you are writing a paper, you want someone who runs your code to get the same results that you wrote about in your paper.

## Accessing Data that is built into R

R has many built-in data sets which are there for you to use and practice with. To see a list of the available data sets type in the command:

```R
data()
```

If you want to learn more about a certain data set. You can type a question mark followed by the name of the data set into R.

# Chapter 5 - Data Wrangling with dplyr Package



# Chapter 6 - Visualization

# Chapter 7 - Distribution

# Chapter 8 - Normal Distribution

