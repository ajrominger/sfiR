sfiColors <- c('#D68F85', '#005D77', '#51661A', '#D49A34', 
               '#58455F', '#AF2F23', '#008E94', '#A27635', 
               '#636051', '#DECEA1', '#D15A2A', '#CCCEC8', '#322B29')

foo <- convertColor(t(col2rgb(sfiColors)) / 255, from = 'sRGB', to = 'Lab')


m <- persp(range(foo[, 2]), range(foo[, 3]), matrix(range(foo[, 1]), nrow = 2, ncol = 2), 
           col = 'transparent', border = 'transparent', xlab = 'a', ylab = 'b', zlab = 'L', 
           theta = 0, phi = 90)
points(trans3d(foo[, 2], foo[, 3], foo[, 1], pmat = m), col = sfiColors, pch = 16, cex = 2)
text(trans3d(foo[, 2], foo[, 3], foo[, 1], pmat = m), labels = 1:length(sfiColors), col = 'white', cex = 0.5)
