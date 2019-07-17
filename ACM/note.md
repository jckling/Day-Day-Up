## 时间复杂度 < 10^8
n|时间复杂度
-|-
100000|O(n)、O(nlog_2n)
10000|O(n^2)
1000|O(n^2)、O(n^2log_2n)
100|O(n^3)
10|O(a^n)、O(n!)


## 排序

### 冒泡排序
设置标志位，一趟排序没有两两交换位置，则终止

### 插入排序 O(n^2)
将无序数据一个个插入到当前排好序的有序数组中

### 选择排序
每一趟从待排序的数据元素中选出最小（或最大）的一个元素，顺序放在待排序的数列的最前，直到全部待排序的数据元素排完

### 桶排序
整型、数据量少

### 快速排序

模板函数sort、qsort

重新定义 `>` 或 `<` 运算符

### 归并排序 O(nlgn)

有序数组

### 堆排序
基于平衡二叉树

模板函数



## 查找

### 顺序查找

### 二分/折半查找

数据有序

最坏情况O(log_2n)

模板函数lower_bound

重新定义 `>` 或 `<` 运算符

### 差值查找 O(log_2(log_2n))

数据有序，分布较为均匀

### 树表查找

### 哈希查找

## 简单枚举
条件
- 元素个数
- 元素值 → 连续值域

优化
- 减少总数
- 减少重复计算
- 分治

### 随机数
cstdlib
(int)(((double)rand())/RAND_MAX*10000000)
(float)rand()/RAND_MAX
- rand()函数，产生[0，RAND_MAX]内的均匀随机整数
- RAND_MAX的值根据编译器不同而不同

srand(time(NULL))
- 只能在程序执行的开头调用一次
- 时间间隔大于1s才会产生不同的随机数


## 枚举排列/子集

### 枚举排列
字典序
- 两个序列的字典序关系等价于从头开始第一个不相同位置处的大小关系
- 比如，`123、132、213、231、312、321`

全排列

模板函数 prev_permutation/next_permutation
- 适用于可重复集合

典例 - 四皇后问题

### 枚举子集
#### 增量构造法
排序
定序 → 避免重复集合

#### 位向量法
枚举位置

#### 二进制法
枚举位置，用二进制的位表示位置

### 集合运算
- 交集：`&`
- 并集：`|`
- 对称差：`^`


## 贪心
局部最优解
- 证明能够得到全局最优解

自顶向下

### 典例
- 部分背包问题
- 0-1背包问题x
- 均分纸牌
- 删数问题
- 活动选择*：优先选取结束时间最早的活动
- 钱币找零问题
- 最大整数问题

## 动态规划 DP
状态（转移）、最优子结构、重叠子问题、记忆化搜索、递推

自底向上

### 典例
- 数字三角形
    - 最优子结构、最优化定理
    - 重叠子问题、记忆化搜索
    - 递归转为递推、从下往上逆推
    - 空间优化、二维数组→一维数组
- 0-1背包问题
    - 最优子结构
    - 记忆化搜索
    - 递推
- 完全背包问题
- 最长公共子序列LCS问题
- 最长上升子序列LIS问题
- 滑雪

### 概率DP

### 区间DP


### 数位DP

### 状态压缩DP

### 其他类型DP



## STL

模板
- 函数模板
- 类模板

动态数组(vector)、堆(heap)、栈(stack)、队列(queue、deque)、链表(list)、基本算法

基本概念
- 容器
- 迭代器
    - 指针类型
- 算法

### vector
任意类型动态数组
- capacity函数得到的是实际vector分配的内存大小
- size函数得到的是vector里面存储元素的个数
- 访问
    - 下标：不检查越界
    - at函数：越界检查
    - 迭代器
- 增大后清除空间：erase函数不释放空间，swap函数清除

## BFS
### 队列

链式队列
- 链表

静态队列
- 数组


- 普通队列：queue
- 优先队列：priority_queue
    - 自定义优先级
- 双端队列：deque
    - 动态数组

### 广度/宽度优先搜索 BFS
队列：先进先出

#### 例子
- 阿狸被困在迷宫
    - 访问标志位
- 给定序列1 2 3 4 5 6，再给定一个k

### 树
类别
- 二叉查找/排序树
- 平衡二叉树 AVL
- 红黑树
- B-树
- B+树
- 字典树 trie树
- 后缀树
- 广义后缀树

存储
- 顺序
- 链式

### 图
存储
- 邻接矩阵
- 邻接表
    - 顶点：数组
    - 顶点的邻接点：单链表
- 十字链表：有向图


## DFS

### 栈
类别
- 链栈
- 顺序栈

模板函数：stack

#### 例子
- 某城市有一个火车站，有n节车厢从A方向驶入车站

### 深度优先搜索 DFS
递归、栈

#### 例子
- 迷宫问题

最短路径优先考虑BFS

## Map、Set

### Map
关联容器、一对一、内部数据有序（红黑树）

数据查找
- count：只能判断关键字是否出现
- find：返回迭代器

### Set
红黑树的平衡二叉搜索树

自定义比较函数

### 重复键值
multiset、multimap