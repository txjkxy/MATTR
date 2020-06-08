# Moving-Average Type-Token Ratio (MATTR)

R语言中的 koRpus 包中存在MATTR函数，但似乎无法直接处理中文文本，故编写该函数（部分参考自网络），可处理中英文文本

# MATTR含义

为了解文本的用词丰富程度，可以使用 MATTR（Moving Average Type-Token Ratio）指标来衡量。

例如：

如果一篇文章由7个词（N=7）组成：a,b,c,a,a,d,f

设定观察窗口为3个词（L=3）

可以发现，该文章的词汇窗口分别为：a,b,c | b,c,a | c,a,a | a,a,d | a,d,f，一共5个窗口（N-L+1=5）

则该文章的词汇丰富度 = (每个窗口中不重复的词汇之和) / (L(N-L+1))

即 MATTR=(3+3+2+2+3)/(L*(N-L+1))

# 使用说明

1.默认观察窗口宽度为100

2.将该函数程序及要分析的文本文件放在同一文件夹下

  在R语言中输入：
  
  source('MATTR.R')
  
  MATTR('文本文件名.txt',windowsize=...)
  
  即可运行
