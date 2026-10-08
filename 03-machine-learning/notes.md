# Module 3 - Machine learning basics

- **machine learning**: creating a model from historical data to generalize decisions
- **model**: the relationships in the data written as a math formula
- rows = instances/observations
- the column to predict = target, label, class, dependent/response variable
- the other columns = features, attributes, dimensions, independent/explanatory variables

## Supervised (needs labeled data)
- classification -> categorical output
- regression -> numeric output

**Linear regression**: predicts a continuous value assuming a linear relation. `y = W*x + B`
(W = weight, B = bias). Training = finding the best W and B.

**KNN**: classifies a new point by its k nearest neighbors. Course example: k = 3, the "?" becomes
a triangle because most neighbors are triangles.

**Decision tree**: stores decision rules. Nodes = variables, branches = possible values,
leaves = final value. Course example: accept a job offer? salary >= 50k -> commute < 1h -> free coffee.

## Unsupervised (no labels)
Similarity and hidden patterns: clustering, association, anomaly detection.

**K-means**: finds k clusters, the center of each one is the centroid (mean of the cluster).
Similar inside a group, different between groups.

| Algorithm | Problem | Type |
|---|---|---|
| logistic regression, KNN, naive bayes, decision trees | classification | supervised |
| regression trees, linear regression | regression | supervised |
| neural networks, SVM, random forest | classification/regression | supervised |
| PCA | dimensionality reduction | unsupervised |
| association rules | pattern detection | unsupervised |
| k-means, DBSCAN | clustering | unsupervised |

## Building a model
1. **pre-processing**: feature selection, feature engineering, normalization (same scale),
   dimensionality reduction, random train/test split
2. **learning**: cross-validation (5 partitions, each one is the test once), metrics
   (accuracy = % of correct predictions), hyperparameter tuning
3. **evaluation**: predict the test set and compare with the real answers
4. **prediction**: use the final model on new data
