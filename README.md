# vasudevdaruvuri.github.io

Abstract:
Branching Process is a Markov Process which is useful to model reproduction based on certain probability and further study of off spring distribution. Branching process has wide array of applications from spread of surnames in genealogy to propagation of neutrons in nuclear reactor. The main objective of this project is generate n number of off spring generations for a particular generation and see the possibility of Ultimate extinction of the generation through visualizing the complete branching process and offspring distribution in each generation.

Introduction:
In probability theory, a branching process is a Markov process that models a population in which each individual in generation n produces some random number of individuals in generation n + 1, according, in the simplest case, to a fixed probability distribution that does not vary from individual to individual. Branching processes are used to model reproduction; for example, the individuals might correspond to bacteria, each of which generates 0, 1, or 2 offspring with some probability in a single time unit. Branching processes can also be used to model other systems with similar dynamics, e.g., the spread of surnames in genealogy or the propagation of neutrons in a nuclear reactor.
A central question in the theory of branching processes is the probability of ultimate extinction, where no individuals exist after some finite number of generations.

Process:
To simulate the branching process, random data has been generated for each generation through simulation for 10 generations and data has been visualized to study the branching process in each generation. if we start from generation one considering only one individual then the individual may generate n number of individuals in the second generation and those n individuals may generate n*m number of individuals in third generation.  
In general if we start one individual in first generation, the expected size of generation n equals µn where µ is the expected number of children of each individual.
•	If μ < 1, then the expected number of individuals goes rapidly to zero, which implies ultimate extinction with probability 1 by Markov's inequality. 
•	if μ > 1, then the probability of ultimate extinction is less than 1 (but not necessarily zero; consider a process where each individual either dies without issue or has 100 children with equal probability).
•	If μ = 1, then ultimate extinction occurs with probability 1 unless each individual always has exactly one child.
Model:
Here, we assumed each offspring generation can generate up to four individuals with probabilities 0.1, 0.4, 0.3, 0.1, 0.1. So, mean of each offspring distribution will be 
                                                   µ = 0 *0.1 + 1*0.4 + 2*0.3 + 3*0.1 + 4*0.1 
                                                                                 µ = 1.7
Here, we can say probability of ultimate extinction is less than 1 but not completely 0. This I verified through simulation for 10 generations and visualize the same with sample date generated.

 
By simulating 10 generations (we can change the value in code) n number of times we can clearly observe the extinction of all generations with different probabilities.
By taking log function for number of off springs in each generation we will get
 
From, theory we have the expectation size of nth generation after n generations is µn . we can see that expectation in the above graph.
By repeating the simulation for n number of times, we can observe extinction of generations in each simulation with different probabilities.
Visualization:
Visualization for this project with sample data can be seen in http://vasudevdaruvuri.github.io/branch/ 
Each bubble represents one generation and and each generation may contain sub generations.

