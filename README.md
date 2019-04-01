# Balanced ICMP Flooder
Simple DoSer/Flooder that automatically adjusts the power *(packet size and timeout)*.

# Usage
Launch:
> src/Balanced-ICMP-Flooder.bat

# Features
1. **Multithreading**
2. **Automatically adjusts the power**
3. Based on "ping" command

# Tip
To change the threads count edit line 9 in *"Balanced-ICMP-Flooder.bat"*.

    for /l %%i in (1,1,4)...
                       ^ here

 - **4** = 4 threads + 1
 - **9** = 9 threads + 1

# Visualisation
![visualisation](https://i.imgur.com/xUlL7EG.png)

# Screenshot
![screenshot](https://i.imgur.com/ARaSuiO.png)
