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

#### Red-Black Trees
- A type of self-balancing BST that has the following special properties:
  1. All nodes are either red or black
  2. The root must be black
  3. If a node is red, all of its children must be black
  4. For every node in the tree, every path down the tree to a null reference has the same number of black nodes(all null references are black)
- Because of these special properties, the insert and remove algorithms need to have ways of fixing any properties that are broken. See [this video series](https://www.youtube.com/watch?v=qvZGUFHWChY&list=PL9xmBV_5YoZNqDI8qfOZgzbqahCUmUEin) for a good explanation of the process.
