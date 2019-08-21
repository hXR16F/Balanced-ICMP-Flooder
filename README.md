# Balanced ICMP Flooder - [YouTube](https://www.youtube.com/watch?v=DtG0tnpbtMM&t=1s)
Simple DoSer/Flooder that automatically adjusts the power *(packet size and timeout)*.

# Usage
Launch:
> src/Balanced-ICMP-Flooder.bat

# Features
1. **Multithreading**
2. **Automatically adjusts the power**
3. Based on "ping" command

# Tip
To change the threads count edit **line 9** in *"Balanced-ICMP-Flooder.bat"*.

    for /l %%i in (1,1,4)...
                       ^ here

 - **4** = 4 threads + 1 = **5 threads**
 - **9** = 9 threads + 1 = **10 threads**

And **line 19** in *"Balanced-ICMP-Flooder.bat"*.

    (set /a maxpacket=%packet%*5)...
                               ^ here

- **5** = **5 threads**

# Visualisation
![visualisation](https://i.imgur.com/xUlL7EG.png)

# Screenshot
![screenshot](https://i.imgur.com/ARaSuiO.png)
