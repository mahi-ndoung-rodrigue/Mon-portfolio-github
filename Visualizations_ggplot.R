# Creating Data Visualizations using ggplot
library(datasets)
#Load Data
data(mtcars)
#View first 5 rows
head(mtcars, 5)

# pour obtenir les informations sur//Les données ont été extraites du magazine américain Motor Trend de 1974 et comprennent la consommation de carburant et 10 aspects de la conception et des performances des automobiles pour 32 automobiles (modèles 1973-74).
?mtcars


#load ggplot package
library(ggplot2)

#create a scatterplot of displacement (disp) and miles per gallon (mpg)//Copiez et collez le code suivant pour charger le paquet ggplot et créer un nuage de points de disp et mpg.

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#Add a title

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

#change axis name

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")


#Use the following to create a boxplot of the the distribution of mpg for the individual Engine types vs Engine (0 = V-shaped, 1 = straight)
#To do this you have to make vs a string or factor.// Utilisez ce qui suit pour créer une boîte à moustaches de la distribution de mpg pour les différents types de moteur par rapport au moteur (0 = en forme de V, 1 = droit)
#Pour ce faire, vous devez faire vs une chaîne ou un facteur.

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine

ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

# Add color to the boxplots to help differentiate:
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")
# Finally, let us create the histogram of weight 
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

