# Creating matrices
A <- matrix(c(3, 2, 9, 5), nrow = 2, byrow = TRUE)
B <- matrix(c(7, 1, 6, 4), nrow = 2)
C <- rbind(c(1, 2, 3), c(6, 5, 4))
D <- cbind(c(9, 5, 1), c(3, 2, 7))

# Display matrices
print("Matrix A"); print(A)
print("Matrix B"); print(B)
print("Matrix C"); print(C)
print("Matrix D"); print(D)

# Matrix operations
print("Addition A + B"); print(A + B)
print("Subtraction A - B"); print(A - B)
print("Scalar Multiplication 3 * A"); print(3 * A)
print("C %*% D"); print(C %*% D)
print("Diagonal of A"); print(diag(A))
print("Transpose of C"); print(t(C))
print("Inverse of B"); print(solve(B))
