<div align = "center" style = "color:red">1位闪烁灯实验</div>

#### <b>设计目标</b>
本工程使用 1 个 LED 灯（LED1）来实现闪烁灯功能。工程的工作时钟为 50MHz，即时钟周期为 20ns。LED1 灯亮，输出高电平时，LED1 灯灭。具体功能要求为：隔 1 秒，亮 N 秒。N 的变化为：1，2，3，……，9 秒，之后再次进入循环.

#### <b>设计思路</b>
1. 首先确定涉及到的信号，clk(时钟信号),rst_n(复位信号),led0(灯的输出信号)。
2. 考虑要用到的计数器，一个时钟周期是20ns，那么1s包含了50000000个时钟周期。
3. 我们要设计俩个计数器，用计数器 cnt1 来记录次数变化（大计数器），另一个计数器 cnt0 来记录每一次的工作时间（小计数器）。
4.对于每个计数器都要设置他们的加一条件和结束条件。


#### <b>实验总结</b>
对于每个部分，他们做包含的周期都是不一样的。所以我们要用到x-1。然后通过大计数器来给x赋值。我们实验的最终目的就是通过利用计数器，来实现我们的输出波形。对于一个输出波形，其实可以有很多种计数器的设计方法，挑选最适合的。

***
***
<div align = "center" style = "color:red">1 flashing light experiment</div>

#### <b>Design Goals</b>
This project uses 1 LED light (LED1) to realize the flashing light function. The working clock of the project is 50MHz, that is, the clock cycle is 20ns. LED1 is on, and when outputting high level, LED1 is off. The specific functional requirements are: every 1 second, light for N seconds. The changes of N are: 1, 2, 3, ..., 9 seconds, and then enter the loop again.

#### <b>Design ideas</b>
1. First determine the signals involved, clk (clock signal), rst_n (reset signal), led0 (lamp output signal).
2. Consider the counter to be used. One clock cycle is 20ns, so 1s contains 50,000,000 clock cycles.
3. We need to design two counters, use counter cnt1 to record changes in times (large counter), and another counter cnt0 to record each working time (small counter).
4. For each counter, set their plus one condition and end condition.


#### <b>Experimental Summary</b>
For each part, the period they include is different. So we're going to use x-1. Then assign a value to x through a large counter. The ultimate goal of our experiment is to realize our output waveform by using a counter. For an output waveform, there are actually many counter design methods, choose the most suitable one.