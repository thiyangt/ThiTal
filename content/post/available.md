---
title: "Small things matter!"
date: "2020-07-08"
---

Checks whether your package name is taken or available !!



```r
install.packages("available")
```


```r
library(available)
available("seer")
```

```
Warning: unable to access index for repository http://www.stats.ox.ac.uk/pub/RWin/src/contrib:
  cannot open URL 'http://www.stats.ox.ac.uk/pub/RWin/src/contrib/PACKAGES'
```

```
── seer ────────────────────────────────────────────────────────────────────────
Name valid: ✔
Available on CRAN: ✖ 
Available on Bioconductor: ✖
Available on GitHub:  ✖ 
Abbreviations: http://www.abbreviations.com/seer
Wikipedia: https://en.wikipedia.org/wiki/seer
Wiktionary: https://en.wiktionary.org/wiki/seer
Sentiment:???
```

This means the name `seer` is taken in both [CRAN](https://cran.r-project.org/web/packages/seer/index.html) and [GitHub](https://thiyangt.github.io/seer/).
