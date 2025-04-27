# Third-order Control System

## Project
The Control Systems project comprises design of Proportional(P), Integral(I), Derivative(D), controllers and their combinations for a given system that requires to meet 
certain design specifications.  
The system given is a third-order system of an aircraft's bank-angle control. The control variable is the bank angle.  
![image](https://github.com/user-attachments/assets/25615c14-8f4f-4cb1-bf75-16ea06198ace)  
The above system's transfer function is dictated as follows:  
![image](https://github.com/user-attachments/assets/c4fe2c4e-7ffd-497d-8de1-8d658c809842)  
Analysis is then conducted after obtaining the transfer function, and it comprises mainly:
1. Poles and zeros
![image](https://github.com/user-attachments/assets/89f7b8f0-2e55-48e4-a48a-9338f4692314)

2. Open-loop system response

3. Evaluating the range of gain K, assuming system to be now part of a unity-negative feedback system
![image](https://github.com/user-attachments/assets/98b882ce-3671-4943-bdcc-3f672a607497)
![image](https://github.com/user-attachments/assets/7619d9be-9757-459c-a97b-2a7fd6bd53da)
![image](https://github.com/user-attachments/assets/582c4df9-230b-4539-97e3-934892916c0d)

4. Finding the closed-loop system response when K=1  
![image](https://github.com/user-attachments/assets/84acbc85-07a1-4a8d-989a-5016b16540b3)

5. Plotting the root-loci when gain K is cascaded
![image](https://github.com/user-attachments/assets/599c9322-d82b-4dcd-825f-d4fface1f748)

6. Design of controller in Simulink

### Proportional(P)  
![image](https://github.com/user-attachments/assets/c984ba57-73cc-46ba-8373-2084c53ad304)  

### Proportional (P) + Derivative(D)  
![image](https://github.com/user-attachments/assets/9a0546b8-a59e-4d71-ac43-f25a9fe8a4a2)  

### Proportional(P) + Integral(I) + Derivative(D)  
![image](https://github.com/user-attachments/assets/43ffa819-8ea8-4510-8276-578cf12e94bc)  

Modelling and verification of results obtained in analysis were performed using MATLAB-Simulink










