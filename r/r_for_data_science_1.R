ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy));

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv));

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  );
<-