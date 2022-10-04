
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
mean(data$Jours[data$Type=="Commerce"])

# Moyenne du nombre de jours de retard de paiement des clients pour le crédit Consommation
mean(data$Jours[data$Type=="Consommation"])

# Moyenne du nombre de jours de retard de paiement des clients pour le crédit Production
mean(data$Jours[data$Type=="Production"])

# Graphique en baton indiquant la moyenne du nombre de jour de retard par type de credit
ggplot(data, aes(Type, Jours, fill = Type)) +
  geom_bar(position = "dodge",
           stat = "summary",
           fun = "mean") +
  ggtitle("Graphique de la moyenne du nombre de jours de retard par type de crédit") +
  labs(y = "Moyenne du nombre de jours de retard", x = "Type de crédit") + 
  scale_fill_manual(values = c("yellow",
                               "green",
                               "red"))