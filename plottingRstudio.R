# Cet atelier vous initie au traçage en R avec ggplot et GGally. GGally est une extension de ggplot2.
# You will use the iris dataset. If you don’t have it loaded, copy and paste the following into your R script file.//Vous allez utiliser le jeu de données sur l’iris. Si vous ne l’avez pas chargé, copiez et collez ce qui suit dans votre fichier de script R.
# Vous allez utiliser le jeu de données sur l’iris. Si vous ne l’avez pas chargé, copiez et collez ce qui suit dans votre fichier de script R.



library(datasets)
data(iris)



library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))

#Cela vous donne beaucoup d’informations pour une seule ligne de code. Tout d’abord, vous pouvez voir les distributions de données par colonne et par espèce sur la diagonale. Ensuite, vous voyez tous les nuages de points par paire sur les tuiles à gauche de la diagonale, à nouveau séparés par couleur. Il est, par exemple, évident qu’une ligne peut être tracée pour séparer setosa de versicolor et virginica. Dans les cours suivants, vous apprendrez également comment les espèces qui se chevauchent peuvent être séparées. C’est ce qu’on appelle l’apprentissage automatique supervisé à l’aide de non-linea