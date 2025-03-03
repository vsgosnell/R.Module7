#review module 6 assignment
#doing math and simulations part 2
#consider a = matrix(c(2,0,1,3), ncol =2)
#and b = matrix(c(5,2,4,-1), ncol = 2)
#find A+B, and A - B


A <- matrix(c(2,0,1,3), ncol = 2)
B <- matrix(c(5,2,4,-1), ncol = 2)

C <- A + B
C

D <- A - B
D

?diag()
#build a diagonal matrix
E <- diag(c(4,1,2,3))
E

#2 ways to build a 4x4 diagonal matrix of 3
G <- diag(c(3,3,3,3,3))
G
