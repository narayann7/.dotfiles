# tips for specific topics

## stack

- when taking out top ( stack.top() ) always check for stack.empty()
- in general stack questions have less code but tricky sol .
- 

## sliding window

- check for index range , while sliding
- sliding window means 80% hashmap

## array

- **subarray** - a contiguous part or section of an array
- **Subsequence -**  whole array with some missing elements but, the elements are in order but may or may not be a contiguous part of an array.
- **subset -** does not maintain relative ordering of elements and is neither a contiguous part of an array
- example :
    
        1, 3, 4, 7, 4, 9
    
        **Subsequence  -  1, 4, 7, 9**
    
        subarray  -  3, 4, 7
    
        **subset  -  4, 7, 1**                                    
    
     **→ these all terms are also same for string**
    
         
    
- Every Subarray is a Subsequence.
- Every Subsequence is a Subset.

## extra :

- If an input array is sorted then  - Binary search  - Two pointers
- If asked for all permutations/subsets then - Backtracking
- If given a tree then  - DFS  - BFS
- If given a graph then  - DFS  - BFS
- If given a linked list then  -  Two pointers
- If recursion is banned then - Stack
- If must solve in-place then - Swap corresponding values - Store one or more different values in the same pointer.
- If asked for maximum / minumum subarray/subset/options then - Dynamic programming
- If asked for top/least K items then - Heap
- If asked for common strings then - Map - Trie
- Map/Set for O(1) time & O(n) space Sort input for O(nlogn) time and O(1) space