library(hexSticker)
library(showtext)
library(here)
font_add_google("Gochi Hand", "gochi")
ggplot(dfCombined, aes(y=y, x=time, col=factor(col)), group=1) + 
  scale_colour_manual(values = c("red", "black")) +
  geom_line() +  aes(group=NA) +
  geom_vline(xintercept=82,colour="#66a61e", lwd=1) + 
  facet_wrap(vars(dfindex), ncol=1) + 
  theme(legend.position = "none") + 
  annotate("rect", xmin = 82, xmax = 101, ymin = 97.11, ymax = 103.38, 
           alpha = 0.5, fill = c("yellow") ) +
  geom_line(lwd=3)
## Automatically use showtext to render text for future devices
showtext_auto()
#imgurl <- system.file("figures/hex.jpg", package="hexSticker")
sticker(here("hex2.png"), package="tsdataleaks",
        s_x=1, s_y=.8, s_width=.5, s_height=.5,
        h_color="#d95f02", h_fill="#b2df8a", p_color = "black",
        filename=here("hexsticker.png"))
