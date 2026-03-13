getwd()
install.packages("palmerpenguins")
p <- penguins
View(p)
table(p$island)
p$species <-factor(p$species)

plot(x = p$flipper_len, y = p$body_mass,
     main = "Dependency of body mass on flipper length",
     pch = c(0, 2, 3)[as.integer(p$island)],
     col = p$species)
#ggplot2
install.packages("ggplot2")
library(ggplot2)

ggplot(data = p, aes(x = flipper_len,
                     y = body_mass,
                     col = species,
                     shape = island)) +
  geom_point() +
  labs(title = "Dependency of body mass on flipper length",
       x = "Flipper length (cm)",
       y = "Body mass (g)")