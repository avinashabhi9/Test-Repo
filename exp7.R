# Importing the dataset
dataset = read.csv('C:\\Users\\student\\Documents\\RStudio\\mall.csv')
X = dataset[4:5]

# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(X, i)$withinss)

# Initate PDF File
pdf("elbow-graph.pdf", paper="a4")

plot(x = 1:10,
     y = wcss,
     type = 'b',
     main = 'The Elbow Method',
     xlab = 'Number of clusters',
     ylab = 'WCSS')

#Close PDF file
dev.off()


# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = X,
                centers = 6,
                iter.max = 300,
                nstart = 10)

# Visualising the cluster
library(cluster)

# Initate PDF File
pdf("clusterplot.pdf", paper="a4")

clusplot(x = X,
         clus = kmeans$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 4,
         plotchar = TRUE,
         span = TRUE,
         main = 'Clusters of customers',
         xlab = 'Annual Income',
         ylab = 'Spending Score')

#Close PDF file
dev.off()