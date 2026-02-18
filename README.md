# Machine Learning – Online Labs  
## Assignment 3: Linear and Nonlinear Regression

**Course:** 521289S Machine Learning (Spring 2026)  
**Platform:** MATLAB Grader  
**Language:** MATLAB  
**Author:** Arafat Miah  

---

## Overview

This repository documents my complete work for **Assignment 3** of the *Machine Learning – Online Labs* course.

This assignment focuses on regression modeling and optimization techniques, including:

- Least Squares (LS)
- Least Absolute Deviations (LAD)
- Closed-form regression solutions
- Gradient Descent (GD)
- Automatic Differentiation (AD)
- Nonlinear feature transformations
- Multi-output regression

All tasks were implemented strictly according to the function definitions and structural constraints specified in MATLAB Grader, ensuring full compliance with automated evaluation requirements.

---

## Assignment Coverage

This assignment consists of five tasks, all of which have been successfully completed:

---

### 1️⃣ Outliers and Cost Functions

- Implemented **Least Squares (LS)** and **Least Absolute Deviations (LAD)** cost functions  
- Compared the sensitivity of LS and LAD to outliers  
- Evaluated and visualized model behavior under noisy data  
- Demonstrated the robustness advantage of LAD over LS  

---

### 2️⃣ Least Squares Linear Regression (Closed Form)

- Implemented linear regression using the **Moore–Penrose pseudoinverse**  
- Constructed the augmented design matrix  
- Computed optimal weights analytically  
- Performed extrapolation using the learned model  
- Verified the matrix-based least squares formulation  

---

### 3️⃣ Least Squares Linear Regression (Iterative GD with AD)

- Implemented least squares regression using:
  - Gradient Descent  
  - Automatic Differentiation  
- Defined the matrix-form cost function  
- Tuned step size and iteration limits for stable convergence  
- Tracked cost history and parameter evolution  
- Compared iterative solution with the closed-form result  

---

### 4️⃣ Least Squares Nonlinear Regression

- Implemented nonlinear regression using feature transformation  
- Used a sinusoidal transformation:  
  `f(x) = sin(v₀ + v₁ x)`  
- Separated:
  - Feature transformation  
  - Model function  
  - Cost function  
- Optimized parameters using Gradient Descent with AD  
- Successfully fitted a nonlinear model to noisy sinusoidal data  

---

### 5️⃣ Least Absolute Deviations Multi-Output Regression

- Implemented multi-output regression using the **LAD objective**  
- Solved each output independently using Gradient Descent with AD  
- Constructed the full weight matrix  
- Handled matrix-based input representation (samples on rows)  
- Demonstrated robustness of L1-based regression in multi-output setting  

---

## Key Concepts Applied

Through this assignment, I strengthened my understanding of:

- Linear regression in matrix formulation  
- Differences between L2 (Least Squares) and L1 (LAD) objectives  
- Sensitivity of regression models to outliers  
- Closed-form versus iterative optimization methods  
- Automatic Differentiation for gradient computation  
- Nonlinear feature transformation techniques  
- Multi-output regression decomposition  
- Writing structured and grader-compliant MATLAB functions  

This work significantly improved my ability to translate mathematical formulations into working, efficient, and verifiable MATLAB implementations.

---

## MATLAB Grader Compliance

## Repository Structure
```text
Machine-Learning-Lab-Assignment-3/
│
├── task1_Outliers_And_Cost_Functions.m
├── task2_Least_Squares_Closed_Form.m
├── task3_Least_Squares_Iterative.m
├── task4_Least_Squares_Non_linear_Regression.m
├── task5_LAD_Multi_Output_Regression.m
└── README.md

---

## Repository Structure

---

## Repository Purpose

This repository serves as a personal academic portfolio artifact demonstrating my practical understanding of regression modeling and optimization techniques in machine learning.

The code is:

- ❌ Not intended for reuse or submission by other students  
- ❌ Not shared for bypassing coursework requirements  
- ✅ Maintained as documentation of my academic and technical development  
- ✅ Intended to showcase competency in MATLAB-based machine learning workflows  

Any use of this material must respect academic integrity policies and course regulations.

