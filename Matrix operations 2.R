2# Input for Matrix A
cat("Enter size of Matrix A:\n")
m <- as.integer(readline("m = "))
n <- as.integer(readline("n = "))
avec <- as.integer(scan(n = m * n))
A <- matrix(avec, nrow = m, ncol = n, byrow = TRUE)

# Input for Matrix B
cat("Enter size of Matrix B:\n")
p <- as.integer(readline("p = "))
s <- as.integer(readline("s = "))
bvec <- as.integer(scan(n = p * s))
B <- matrix(bvec, nrow = p, ncol = s, byrow = TRUE)

# Display matrices
cat("Matrix A:\n"); print(A)
cat("Matrix B:\n"); print(B)

# Operations
cat("Addition (A + B):\n"); print(A + B)
cat("Subtraction (A - B):\n"); print(A - B)
cat("Scalar Multiplication (3 * A):\n"); print(3 * A)
cat("Multiplication (A %*% B):\n"); print(A %*% B)
cat("Diagonal of A:\n"); print(diag(A))
cat("Transpose of A:\n"); print(t(A))
cat("Inverse of A:\n"); print(solve(A))
