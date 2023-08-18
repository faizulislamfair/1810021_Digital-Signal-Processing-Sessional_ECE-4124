## **Roll: 1810021**
## **Course Code: ECE 4124**

### **<u>Experiment No:</u> 01**

### **<u>Experiment Date:</u> 19.03.2023**

### **<u>Experiment Name:</u> Study of Convolution of Two Signals using MATLAB** 

<br>


### **<u>Theory:</u>**
                 
<br>                 
                   The convolution of two signals is a mathematical operation that combines the two signals to produce a third signal that represents how one signal modifies the other as they are combined. It is a fundamental operation in signal processing, used for various applications such as filtering, feature extraction, image processing, and many more.
<br>
<br>

                                          y(n) = ∑ x(n)*h(n-k) for k = - ∞ to + ∞


<br><br>
                        

There are two types of convolutions: 

i). Continuous convolution: Continuous convolution is used to describe the convolution of two continuous-time signal. It is defined as follows: 
Given two continuous-time signal x(t) and h(t), their continuous convolution y(t) is given by: 
                                                          y(t) = x(t) * h(t)



ii). Discrete convolution: Discrete convolution is used to describe the convolution of two discrete-time signal. It is defined as follows: 
                                                         y(n) = x(n) * h(n)
                




<br> <br>



### **<u>Code:</u>**
<br>

```clc
x = [ 1 2 3 4]; 

h = [ 4 4 3 2]; 


m=length(x); 
l=length(h); 
X=[x,zeros(1,l)]; 
H=[h,zeros(1,m)]; 


z=[]; 
for i=1:m 
      g=h.*x(i); 
      z=[z;g]; 
end 


[r c] = size(z); 
k = r+c; 
t =2; 
Y =[]; 
cd =0; 


while(t<=k) 
         for i=1:r 
               for j=1:c 
                    if((i+j)==t) 
                          cd = cd+ z(i,j); 
                    end 
                end 
           end 
           t = t+1; 
          Y = [Y cd]; 
           cd =0; 
end 

subplot(3,1,1); 
stem(x); 
xlabel('n'); 
ylabel('x'); 
title('1st Signal'); 
subplot(3,1,2); 
stem(h); 
xlabel('n'); 
ylabel('h'); 
title('2nd Signal'); 


subplot(3,1,3); 
stem(Y); 
xlabel('n'); 
ylabel('Y'); 
title('Convoluted Signal');

```


<br><br>



### **<u>Output:</u>** 
<br>

<div align="center">
<img src="./exp_1.png">
<br>
<h4> Figure-1: Convolution of Two Signals </h4> 
</div>


<br><br>




### **<u>Discussion:</u>** 
<br>
Here, we convoluted two signals without using the conv() function. The conv() function was also used to check whether the previous output was similar or not. The obtained result was same in both the cases.

<br><br>

### **<u>Conclusion:</u>**
<br> 
The experiment was carried out successfully.
