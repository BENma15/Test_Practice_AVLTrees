# AVL Tree Implementation Exercise

This folder contains a template for implementing an AVL (Adelson-Velsky and Landis) Tree data structure in C++. 

## Files

- `avl_example.cpp` - Template file with TODO comments for AVL tree implementation
- `Makefile` - Build configuration
- `.vscode/` - VS Code debugging configuration


## Exercise Instructions

### Step 1: Complete the Node Structure
Implement the `Node` template struct with height field for AVL balancing

### Step 2: Implement the AVLTree Template Class
Complete the following methods:

- `Insert(const T& value)` - Insert a new value and maintain AVL balance
- `Contains(const T& value)` - Search for a value
- `Traverse()` - Print values in sorted order (inorder traversal)
- `Remove(const T& value)` - Remove a value and maintain AVL balance
- `FindMin()` - Return the minimum value in the tree
- `FindMax()` - Return the maximum value in the tree
- `GetHeight()` - Return the height of the tree
- `PrintTree()` - Display the tree structure as ASCII art

Implement private helper functions as needed

## Key Concepts to Remember

### AVL Tree Properties:
- Left subtree contains only values less than the current node
- Right subtree contains only values greater than the current node
- Both left and right subtrees are also AVL trees
- **Height difference between left and right subtrees is at most 1**
- No duplicate values (in this implementation)

### Algorithm Hints:
- **Insertion**: Compare with current node, go left if smaller, right if larger, insert the node if not already exists, then rebalance
- **Search (Contains)**: Similar to BST, return true if found, false if null
- **Traverse (Inorder)**: Left → Current → Right (gives sorted order)
- **FindMin**: Go left until you reach a node with no left child
- **FindMax**: Go right until you reach a node with no right child
- **Deletion (Remove)**: Handle three cases - no children, one child, two children, then rebalance
- **Rebalancing**: Check balance factor after each insertion/deletion, perform rotations if needed
- **PrintTree**: Use recursive helper to display tree structure with height and balance information

### Rotation Types:
- **Left Rotation**: For right-heavy trees
- **Right Rotation**: For left-heavy trees
- **Left-Right Rotation**: For left-right heavy trees
- **Right-Left Rotation**: For right-left heavy trees

## Usage

### Compilation
```bash
make
```

### Running
```bash
./avl_example
```

### Debugging in VS Code
1. Open the `avl_tree` folder in VS Code
2. Set breakpoints in your code by clicking in the left margin
3. Press F5 or go to Run → Start Debugging
4. The debugger will build and run the program

## Expected Output

When completed correctly, your program should produce a comprehensive demonstration of all AVL tree operations:

```
AVL Tree Comprehensive Rotation Demo
====================================

=== 1. LEFT ROTATION (Right-Right case) ===
Sequence: 1, 2, 3
Tree after left rotation:
└── 2 (h:2, b:0)
    ├── 3 (h:1, b:0)
    └── 1 (h:1, b:0)

=== 2. RIGHT ROTATION (Left-Left case) ===
Sequence: 3, 2, 1
Tree after right rotation:
└── 2 (h:2, b:0)
    ├── 3 (h:1, b:0)
    └── 1 (h:1, b:0)

=== 3. LEFT-RIGHT ROTATION ===
Sequence: 3, 1, 2
Tree after left-right rotation:
└── 2 (h:2, b:0)
    ├── 3 (h:1, b:0)
    └── 1 (h:1, b:0)

=== 4. RIGHT-LEFT ROTATION ===
Sequence: 1, 3, 2
Tree after right-left rotation:
└── 2 (h:2, b:0)
    ├── 3 (h:1, b:0)
    └── 1 (h:1, b:0)

=== 5. REMOVAL CASES FROM DRAWING EXAMPLES ===
--- Test 1: Left-Left case (Right rotation) - remove 5 ---
Creating tree: 4, 2, 5, 1, 3
Removing 5 to trigger left-left rotation (right rotation)...
[Shows RIGHT rotation during removal]

--- Test 2: Right-Right case (Left rotation) - remove 1 ---
Creating tree: 2, 1, 4, 3, 5
Removing 1 to trigger right-right rotation (left rotation)...
[Shows LEFT rotation during removal]

--- Test 3: Left-Right case - remove 4 ---
Creating tree: 3, 1, 4, 2
Removing 4 to trigger left-right rotation...
[Shows LEFT-RIGHT rotation during removal]

--- Test 4: Right-Left case - remove 1 ---
Creating tree: 2, 1, 4, 3
Removing 1 to trigger right-left rotation...
[Shows RIGHT-LEFT rotation during removal]
[Each test creates a specific tree structure and removes one node to trigger rotations]
```

Good luck with your implementation! Remember to test each method thoroughly and use the debugger to trace through your recursive calls and rotations.
