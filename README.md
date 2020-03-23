# SegFault13

Maths coursework 2020
Report link to edit : https://www.overleaf.com/8139195934djkkczvvdqff

## Group members
1. Hussain Kurabadwala
2. Adrian Koch
3. Jo Merrick
4. Marcus Neo
5. Maelle Guerre
6. Omar Sharif

## Task summary
### 1 - RC Circuit (First order ODE)
#### Exercise 1
There are two files RK2.m and RK2\_script.m. The first contains the ODE solver function wheras the latter calls this function with a range of different inputs. TransferfunctionPlot.m was used to plot the RC circuit's transfer function for the report

#### Exercise 2
The error analysis for exercise 1 can be found in error\_script.m

### 2 - RLC Circuit (Second order ODE)
#### Exercise 3
There are two files RK4.m and RLC\_script.m, the first containing the solver for two coupled first order ODEs, the latter containg a script that callins this function with varying test inputs.

### 3 - Relaxation and SOR
#### Exercise 4
Both the relaxation function and the test inputs are contained in relaxation.m. 

#### Exercise 5
Both the SOR function and the testing for varying relaxation parameters is contained in SOR.m The computation_time.m file was used to plot the computation time for varying grid sizes. It relies on an older version of the SOR function and, hence,  is included for completeness only.