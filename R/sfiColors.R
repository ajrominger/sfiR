sfiColors <- c('#D68F85', '#005D77', '#51661A', '#D49A34', 
               '#58455F', '#AF2F23', '#008E94', '#A27635', 
               '#636051', '#DECEA1', '#D15A2A', '#CCCEC8', '#322B29')

foo <- convertColor(t(col2rgb(sfiColors)) / 255, from = 'sRGB', to = 'Lab')


m <- persp(range(foo[, 2]), range(foo[, 3]), matrix(range(foo[, 1]), nrow = 2, ncol = 2), 
           col = 'transparent', border = 'transparent', xlab = 'a', ylab = 'b', zlab = 'L', 
           theta = 0, phi = 90)
points(trans3d(foo[, 2], foo[, 3], foo[, 1], pmat = m), col = sfiColors, pch = 16, cex = 2)
text(trans3d(foo[, 2], foo[, 3], foo[, 1], pmat = m), labels = 1:length(sfiColors), col = 'white', cex = 0.5)


# different color sets
warm <- c(1, 4, 6, 8, 10, 11, 13)
cool <- c(2, 3, 5, 7, 9, 12, 13)
bigGradient <- c(2, 7, 3, 8, 4, 11, 6)
divergent1 <- c(7, 12, 11)
divergent2 <- c(2, 12, 4)
divergent3 <- c(2, 12, 8)
linear1 <- c(7, 9, 11)
linear2 <- c(7, 13, 6)
linear3 <- c(2, 9, 8)
linear4 <- c(2, 9, 4)
linear5 <- c(2, 12, 10)
linear6 <- c(7, 10, 4)
lilGradient1 <- c(5, 6, 11, 4)
lilGradient2 <- c(5, 2, 7, 3)

# package `scales` could be useful for interpolating colors
foo <- scales::gradient_n_pal(sfiColors[lilGradient1])
plot(1:10, col = foo(seq(0, 1, length.out = 10)), pch = 16, cex = 2)
