set.seed(1)

# k-means doesn't use the label, only the measurements
km <- kmeans(iris[, 1:4], centers = 3, nstart = 20)

km$centers  # the centroids (mean of each cluster)
km$size

# comparing the clusters with the real species just to see
table(cluster = km$cluster, species = iris$Species)
