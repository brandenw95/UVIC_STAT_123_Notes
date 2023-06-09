# Midterm review

> Midterm info:
>
> Midterm 1
> Wednesday May 31st 
> 12:30pm in cunningham 146 -> 50 mins
> 2:40pm in BEC 160 -> 30 mins

> Notes:
>
> - R is case sensitive (l and L are different)

# Question 1

(Question)

- What are the individuals being considered by the record collector?

> Records

- What are are the variables being considered by the colletor?

> Artist, album name, year released, album length, condition

- Determine if each variable is categorical or numerical 

> - Artist - categorical
> - album name - categorical  
> - year released - categorical (cant add, avg, etc thus categorical )
> - album length - numerical 
> - condition - categorical

- Is this an observational study or an experiment? Explain why?

> It is an observation study because the records are not being edited.

# Question 2

You wan to buy a box of clementines from the grocery store but you don't want a rotten orange.

- You sample 5 boxes from the top of the display and then open them up and observe the top layer of oranges. What sampling is being used?

> Convenience sample because you conveniently chose the top layer.

- Is the sampling design likely to result in bias? Why?

> yes because all the shit ones are on top.

- Give an example of a better way to sample the oranges differently. Be sure to indicate wat kind of sampling you are describing.

> Closing your eye just chose a sample randomly - random sampling

# Question 3

skipped

# Question 4

In a class of 200 students a professor wants to predict the class average on the first homework assignment without marking every paper. She splits the students into groups of 50 (based on the tutorial they were assigned) and randomly selects 2 2 papers from each of the 4 tutorial sections . she marks the peers and it results in the following scores.

85, 73, 56, 92, 81, 70, 70 , 67

- What is the population of the class

> 200 students

- What is the parameter of interest?

> class average on the first homework assignment.

- What is the statistic that should be used to estimate the parameter?

> Mean
> $$
> \frac{x_1+x_2+..x_8}{8}
> $$
> 

- What is the observed value of the statistic?

> 74.25 

- What sampling is this?

> stratified sampling - divided population into groups

# Question 5

Skipped

# Question 7

Consider the following R code

```R
apples = c("Gala", "GrannySmith", "Macintosh", "Pink Lady")
quantity = c(40, 60, 20, 20)
names(quantity) = apples
M = matrix(c(3:14), byrow = FALSE, ncol=4)
```

- What does quantity["GrannySmith"] return?

> 60

- What does apples[3] return?

> "Macintosh"

- what does mean(quantity) return?

> 35

- What does mean(apples) return?

> Error: cant average char strings

- If you print out the matrix M, what does it look like?

> | 3    | 6    | 9    | 12   |
> | ---- | ---- | ---- | ---- |
> | 4    | 7    | 10   | 13   |
> | 5    | 8    | 11   | 14   |
>
> 3x4 matrix

- What value does rowSums(M) return?

> = sum(row1) = 30
>
> = sum(row2) = 34
>
> = sum(row3) = 38

- what does M[,1:2] return?

> | 3    | 6    |
> | ---- | ---- |
> | 4    | 7    |
> | 5    | 8    |