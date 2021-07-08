library(bibliometrix)
library(revtools)


wos_data <- convert2df(file = "data/webofscience_1-1397.txt", dbsource = 'wos', format = 'plaintext')

wos_results <- biblioAnalysis(wos_data, sep = ";")
summary(wos_results)
plot(x = wos_results, k = 10, pause = FALSE)




scopus_data <- convert2df(file = "data/scopus_1770.bib", dbsource = "scopus", format = "bibtex")
scopus_results <- biblioAnalysis(scopus_data, sep = ";")
summary(scopus_results)
plot.b(x = scopus_results, k = 10, pause = FALSE)

