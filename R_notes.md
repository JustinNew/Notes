R Notes
--

### [Pipe](https://uc-r.github.io/pipe)

  - The principal function provided by the magrittr package is %>%, or what’s called the “pipe” operator. This operator will forward a value, or the result of an expression, into the next function call/expression.
  - We read the %>% as “and then”.
Without **%>%,
```R
a <- filter(mtcars, carb > 1)
b <- group_by(a, cyl)
c <- summarise(b, Avg_mpg = mean(mpg))
d <- arrange(c, desc(Avg_mpg))
print(d)
## Source: local data frame [3 x 2]
## 
##     cyl Avg_mpg
##   (dbl)   (dbl)
## 1     4   25.90
## 2     6   19.74
## 3     8   15.10
```
With **%>%**,
```R
library(magrittr)
library(dplyr)

mtcars %>%
        filter(carb > 1) %>%
        group_by(cyl) %>%
        summarise(Avg_mpg = mean(mpg)) %>%
        arrange(desc(Avg_mpg))
## Source: local data frame [3 x 2]
## 
##     cyl Avg_mpg
##   (dbl)   (dbl)
## 1     4   25.90
## 2     6   19.74
## 3     8   15.10

## “take mtcars and then filter and then group by and then summarize and then arrange.”
```


  - For assignment magrittr provides the %<>% operator which allows you to replace code like:
```R
mtcars <- mtcars %>% 
  transform(cyl = cyl * 2)
```
with
```R
mtcars %<>% transform(cyl = cyl * 2)
```
