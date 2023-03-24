# MechaCar_Statistical_Analysis



## Linear Regression to Predict MPG

### Which variable provided a non-random amount of variance to the mpg values in the dataset? 

The two variables that provided a non-random amount of variance to the mpg values in the dataset are vehicle length and ground clearance.

### Is the slope of the linear model considered to be zero?
The p-value of our linear regression analysis is 5.35 x 10^-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

### Does this linear model predict mpg of MechaCar prototypes effectively?

The model is statistically significant, and can predict mpg of MechaCar prototypes effectively. According to the calculated r-squared value, 71% of the variables explain the outcome we are trying to predict.

![image](https://user-images.githubusercontent.com/114033254/227614402-6c05a2d3-2449-42da-8684-9535a04b8f2b.png)

## Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![image](https://user-images.githubusercontent.com/114033254/227620814-47a33246-6d0c-4b2f-a9d8-7cd9de253abf.png)

![image](https://user-images.githubusercontent.com/114033254/227620844-ce11c8d4-9a6c-4e59-8540-6008f3c175d5.png)

The lots in total do meet the specification with the variance being roughly 62psi. Lots 1 and 2 both meet the specifications with Lot 1 having 0.98 psi variance and Lot 2 having 7.5 psi variance. Lot 3, however, does not meet the design specification with 170psi of variance.
