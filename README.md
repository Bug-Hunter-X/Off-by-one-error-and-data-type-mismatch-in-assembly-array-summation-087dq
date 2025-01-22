# Assembly Array Summation Bug

This repository demonstrates a common bug in assembly code related to array summation: an off-by-one error and potential data type mismatch. The `bug.asm` file contains the buggy code, while `bugSolution.asm` provides a corrected version.

## Bug Description
The original code attempts to calculate the sum of an array of words. However, it suffers from:

1. **Off-by-one error:**  The loop counter might not accurately reflect the array's size, leading to incorrect sums or accessing memory beyond the array bounds.
2. **Data type mismatch:** The handling of data types (words vs. double words) needs careful consideration to prevent unexpected results.

## Solution
The solution addresses these issues by carefully checking loop conditions and ensuring consistent use of data types throughout the program.  The corrected code includes robust bounds checking to prevent unexpected behavior.