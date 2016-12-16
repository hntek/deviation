
#deviation

Calculating standard deviation is very important in any statistical analysis.
Note : This package is created for DSCI_524_lab_1.

#Installation

Type command below in R console;

`devtools::install_github("hntek/deviation")`

# Travis CI 

[![Build Status](https://travis-ci.org/hntek/deviation.svg?branch=master)](https://travis-ci.org/hntek/deviation)

#Quick demo

### Calculating standard deviation

1) load library in R

`library(deviation)`

2) enter a vector of numbers in the function

 ```
standard_deviation(c(2,3,5))
```

```
[1] 1.247219

```



### Calculating standard error via `standard_error()`:

```
standard_error(c(1,1,1,1))
```


```
[1] 0.0
```
