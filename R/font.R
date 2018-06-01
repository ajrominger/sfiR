extrafont::ttf_import(pattern = 'cmunbmo.ttf')
extrafont::loadfonts(quiet = TRUE)

pdf('test.pdf', family = 'CMU Bright', width = 3.7, height = 6.5)
plot(1, xlab = 'Long ass name', ylab = 'Other stuff')
text(1.3, 1.3, labels = 'fooFOOfoo')
dev.off()