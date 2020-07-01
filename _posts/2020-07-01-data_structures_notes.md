---
layout: page
title: Data Structures
notes: true
---
#### Binary Search Trees
- A rooted tree where each node can have at most two children
- Has the property where every node is larger than all of the nodes in its left subtree and smaller than all of the nodes in its right subtree

#### K-D Trees
- Stands for K-Dimensional Tree; good for storing K-Dimensional values
- A type of BST where the level of tree determines which dimension is compared to determine the relationship between nodes

#### Randomized Search Trees
- A type of [Treap](https://www.youtube.com/watch?v=0i5vSP7Bz5Q&list=PLM_KIlU0WoXmkV4QB1Dg8PtJaHTdWHwRS) that uses elements as keys and randomly generates priorities
- The randomly generated priorities serve to reduce the likelihood of having a tree with an unnecessarily large height

#### AVL Trees
- Another type of BST where every node must have a [balance factor](https://stepik.org/lesson/28865/step/2?unit=9903) of -1, 0, or 1
- When an insertion or deletion causes a balance factor to be off, [AVL rotations](https://www.youtube.com/watch?v=xzmLuS0ZJmA&list=PLM_KIlU0WoXmkV4QB1Dg8PtJaHTdWHwRS) must be performed to fix the balance factors
