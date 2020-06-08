
# 默认观察窗口宽度为100
# 使用方法：将该函数程序及要分析的文本文件放在同一文件夹下
# 在R语言中输入：
# source('MATTR.R')
# MATTR('文本文件名.txt',windowsize=...)
# 即可运行

MATTR = function (infile, windowsize=100) {
  text = scan(infile, what="char", sep="\n",encoding="UTF-8")
  wttr = 0
  ttrsum = 0
  tokens = tolower(unlist(strsplit(text, "\\W+"))) 
  numwords = length(tokens) # N
  for(i in 0:(numwords-windowsize)){ 
    window = tokens[(i+1):(windowsize+i)]
    wttr = length(unique(sort(window)))
    ttrsum = ttrsum + wttr
  }
  mattr=ttrsum/(windowsize*(numwords-windowsize+1))
  return(mattr)
} 
