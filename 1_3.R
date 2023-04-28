#Importing libraries
install.packages("arules")
install.packages("arulesViz")
install.packages("RColorBrewer")
library(arules)
library(arulesViz)
library(RColorBrewer)

#Data import
data("Groceries")
print(Groceries)

#Rule generation
rules<- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))

inspect(rules[1:10])
plot(rules)
plot(rules,method= "grouped")

--rule2<- apriori(Groceries, parameter = list(supp = 0.02, conf = 0.3))
inspect(rule2[1:10])
plot(rule2)

rule3<- apriori(Groceries, parameter = list(supp = 0.05, conf = 0.2,minlen=2))
inspect(rule3[1:5])
plot(rule3)

rule4<- apriori(Groceries, parameter = list(supp = 0.02, conf = 0.3,minlen=3))
inspect(rule4[1:5])
plot(rule4)

rule5<- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.75,minlen=2))
inspect(rule4[1:5])
plot(rule5)



arules::itemFrequencyPlot(Groceries, topN = 20,
                          col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot', 
                          type = "relative",
                          ylab = "Item Frequency (Relative)")
