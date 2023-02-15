The `clust#_gsea.csv` files contain the gene set enrichment results for each cluster (average expression profile depicted in the `bulkRnaClust.pdf` file). 

The `cluster#_GeneScores.csv` contain scores for all genes that convey how closely the expression dynamics of each gene in the table matched with the cluster referenced in the file name. The score is based on correlation, so values closer to 1 indicate a higher degree of similarity.

The `pathwayClusters` folder contains interactive html plots that group together significantly enriched pathways for each gene cluster based on gene overlap.

Please refer to the R markdown document (or the associated html file) for descriptions of the clustering process.
