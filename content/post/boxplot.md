+++
  date = 2018-10-01
  draft = false
  tags = []
  title = "Customizing boxplot with ggplot"
  math = true
+++


Boxplot is probably one of the most common type of graphics. This will show how to customize boxplot. You will learn,

1. how to change the order of labels

2. how to change the colours


First we create a simple data set.

```{r}
Gender <- rep(c("Male", "Female"), times = 3, each = 4)
Quality <- rep(c("Taste", "Color of package", "Capacity"), times = 1, each = 8)
Accepted <- seq(0, 100, by = 100/23)

DF <- data.frame(Chemical, Quality, Accepted)

```

```{r}
library(ggplot)
ggplot(DF, aes(x = Quality, y = Accepted, fill = Gender)) +
  geom_boxplot() +
  scale_fill_manual(values = c("green", "orange"),
                    labels = expression("Male", "Female")) +
  xlab("") +
  theme(legend.position = "top", legend.title = element_blank()) + 
  guides(fill=guide_legend(reverse=TRUE)) +
  scale_x_discrete(limits=c("Taste", "Color of package", "Capacity"))
```

