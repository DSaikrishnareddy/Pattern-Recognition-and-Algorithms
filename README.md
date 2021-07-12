<h1> Pattern Recognition and Algorithms </h1>
Simulation of a Binary Class Problem in MatLab

<h2> Computation of Decision Boundary, Data Generator, Classifier and the Count of errors </h2>

   In a Binary Class problem with class c1 and c2 and Probability Distribution Function of feature Vector x is multivariate Gaussian for bot the classes.We can assume P(c1) and P(c2) as the prior probabilities.
   
<h3> Block Diagram </h3>
<img src="https://github.com/DSaikrishnareddy/Pattern-Recognition-and-Algorithms/blob/main/Block_Diagram.PNG">


<h3> The 4 blocks required to solve this problem. </h3>
1. Decision Boundary

2. Data Generator

3. Classifier

4. Count of Errors

---

<h4> Decision Boundary </h4>
   Choosing the class with smaller generalized distance to the sample x is simpler than computing the posterior Probability of class membership for each class. It aslo avoids possible computational inaccuracies that may result in calculating exponentials of negative numbers with large absolute values This can happen if x is far from the mean of all classes. The Decision Boundary between ci and cj can be written as 

<img src="https://github.com/DSaikrishnareddy/Pattern-Recognition-and-Algorithms/blob/main/Decision_Boundary.PNG" >

---

<h4> Data Generator </h4>

This part of the program is responsible for the generation of Sample data x to be given to the Classifier. This is distributed according to two multivariate Gaussian distributions. The following steps are used to generate the data vectors.

1. Randomly the class is selected from which you want to generate the data vector. This random Selection Should respect the prior probabilities of the classes, if 1000 data vectors are generated in a loop, Class C1 must be Selected 700 times approximately, and C2 must be selected approximately 300 times. The value of a uniform random Variable is distributed between 0 and 1 to select the class. If the value of the uniform random variable is less than 0.7, choose C1, and choose C2 otherwise.

2. Once the class is selected, a vector of size 3 is generated which is drawn from the multivariate Gaussian distribution whose parameters depend on the class.A Gaussian Vector is generated which is drawn from a distribution of given mean and Covorana matrix. 

3. The data Vector and its class information are stored for further use.

4. The Steps (1-3) are repeated 1000 times in a loop. This will generate and  Store 1000 data vectors x and also their true class information, which class each data vector belongs to.
  
---

<h4> Classifier </h4>

   This part of the Code will take each of the data Vectors generated by the data generator and classify them into C1 or C2. For classification, decision regions are computed in part 1 is used. Here each data Vector out of 1000 generated by the data generator needs to be classified. The results of the classification (the Class information) of each data vector are stored in an array.
   
---
   
<h5> Count Errors </h4>
   
   For each data vector, the true class is known from the data generator, and the classifier output is available from the Classifier. Each data vector is compared and checked if they are the Same. There are Some chances to have Classification errors. The total number of classification errors is counted and finally, the percentage accuracy is computed.

 


