<div align = "center" style = "color:red">1位闪烁灯实验</div>

#### <b>设计目标</b>
本工程使用 1 个 LED 灯（LED1）来实现闪烁灯功能。工程的工作时钟为 50MHz，即时钟周期为 20ns。LED1 灯亮，输出高电平时，LED1 灯灭。具体功能要求为：隔 1 秒，亮 N 秒。N 的变化为：1，2，3，……，9 秒，之后再次进入循环.

#### <b>设计思路</b>
1. 首先确定涉及到的信号，clk(时钟信号),rst_n(复位信号),led0(灯的输出信号)。
2. 考虑要用到的计数器，一个时钟周期是20ns，那么1s包含了50,000,000个时钟周期。
3. 我们要设计俩个计数器，用计数器 cnt1 来记录次数变化（大计数器），另一个计数器 cnt0 来记录每一次的工作时间（小计数器）。
4. 对于每个计数器都要设置他们的加一条件和结束条件。


#### <b>实验总结</b>
1. 对于每个部分，他们做包含的周期都是不一样的。所以我们要用到x-1。然后通过大计数器来给x赋值。我们实验的最终目的就是通过利用计数器，来实现我们的输出波形。对于一个输出波形，其实可以有很多种计数器的设计方法，挑选最适合的。
2. 在我们设计计数器的时候，对于第一个计数器，大部分情况都是先以时钟周期为单位进行计数（每次clk的高电平触发，都会让计数器加一），也就是说先计算1s内包含多少个时钟周期，对他们进行计数。
3. 剩下的计数器，就可以把前一个计数器当作整体，继续计数。以此类推，直到设计出自己合适的波形。

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
1. For each part, the period they include is different. So we're going to use x-1. Then assign a value to x through a large counter. The ultimate goal of our experiment is to realize our output waveform by using a counter. For an output waveform, there are actually many counter design methods, choose the most suitable one.
2. When we design the counter, for the first counter, in most cases we first count in units of clock cycles (each time clk is triggered by a high level, the counter will be incremented by one), that is to say, it is calculated first How many clock cycles are included in 1s, count them.
3. For the remaining counters, you can treat the previous counter as a whole and continue counting. And so on until you design your own suitable waveform.
