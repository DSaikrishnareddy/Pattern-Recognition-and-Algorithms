# Pattern-Recognition-and-Algorithms
Simulation of a Binary Class Problem in MatLab

## Computation of Decision Boundary, Data Generator, Classifier and the Count of errors

    In a Binary Class problem with class c1 and c2 and Probability Distribution Function of feature Vector x is multivariate Gaussian for bot the classes.We can assume P(c1) and P(c2) as the prior probabilities.

### The 4 blocks required to solve this problem.
1. Decision Boundary
2. Data Generator
3. Classifier
4. Count of Errors

#### Decision Boundary
     Choosing the class with smaller generalized distance to the sample x is simpler than computing the posterior Probability of class membership for each class. It aslo avoids possible computational inaccuracies that may result in calculating exponentials of negative numbers with large absolute values This can happen if x is far from the mean of all classes. The Decision Boundary between ci and cj can be written as
     ![alt text]()
