# INSTRUCTIONS

Your task is to construct a building which will be a pile of n cubes. The cube at the bottom will have a volume of n^3, the cube above will have volume of (n-1)^3 and so on until the top which will have a volume of 1^3.

You are given the total volume m of the building. Being given m can you find the number n of cubes you will have to build?

The parameter of the function findNb (find_nb, find-nb, findNb, ...) will be an integer m and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.

Examples:
findNb(1071225) --> 45

findNb(91716553919377) --> -1

## TESTES

Test Results:
find_nb
    Basic tests Examples
        Log
        input   : 4183059834009 
        expected: 2022

        Shell Stdout
        2022

        Log
        input   : 24723578342962 
        expected: -1 
        
        Shell Stdout
        -1
        
        Log
        input   : 135440716410000 
        expected: 4824 
        
        Shell Stdout
        4824
        
        Log
        input   : 40539911473216 
        expected: 3568 
        
        Shell Stdout
        3568
        
        Log
        input   : 10240256001600000000 
        expected: 80000 
        
        Shell Stdout
        -1
        
        Test Failed
        expected: 80000
            got: -1

        (compared using ==)