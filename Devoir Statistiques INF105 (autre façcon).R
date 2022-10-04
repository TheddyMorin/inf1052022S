
# Importons les données du fichier CreditBancaire.csv
data <- read.csv("CreditBancaire.csv")

# Explorons l'objet data pour voir les variables
str(data)

# Calculons la moyenne du crédit
mean(data$Credit)

# Moyenne du nombre de jours de retard de paiement des clients
mean(data$Jours)

# Voyons les différents types de crédit accordé dans un tableau de fréquence
table(data$Type)

# Moyenne du nombre de jours de retard de paiement des clients pour le crédit Commerce
Commerce=mean(data$Jours[data$Type=="Commerce"])

# Moyenne du nombre de jours de retard de paiement des clients pour le crédit Consommation
Consommation=mean(data$Jours[data$Type=="Consommation"])

# Moyenne du nombre de jours de retard de paiement des clients pour le crédit Production
Production=mean(data$Jours[data$Type=="Production"])

# Graphique en baton indiquant la moyenne du nombre de jour de retard par type de crédit
graph_data <- cbind(Commerce, Consommation, Production) # Combinaison des moyennes avec cbind
barplot(graph_data, 
        main = "Graphique de la moyenne de retard par type de crédit",
        col.main = "green",
        ylab = "Moyenne du nombre de jours de retard",
        col.axis = "blue",
        xlab = "Type de crédit",
        col.lab = "red",
        col = "yellow")