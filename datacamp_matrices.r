# MATRICES
test_matrix <- matrix(1:20, nrow=4, byrow=FALSE)
test_matrix2 <- matrix (1:20, nrow=5, byrow=TRUE)
# Box offixe Star Wars in millions
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create Box Office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star wars matrix
star_wars_matrix <- matrix(box_office, nrow=3, byrow=TRUE)

# Vectors region and titles used for naming
region <- c("US", "Non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
# Name columns with region
colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles

View(star_wars_matrix)
