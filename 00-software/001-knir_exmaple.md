# rmarkdown knitr example
Daniel Chen  
11/16/2014  

# header 1
regular text

*italic*
_italic_

**bold**

  - bullet 1
  - bullet 2
    - nested bullet
    
  1. item 1
  1. item 2
  1. item 3

## header 2

### header 3



```r
analyze <- function(data_frame_to_analyze){
  avg_day_inflammation <- apply(data_frame_to_analyze, 2, mean)
  sd_day_inflammation <- apply(data_frame_to_analyze, 2, sd)
  min_day_inflammation <- apply(data_frame_to_analyze, 2, min)
  max_day_inflammation <- apply(data_frame_to_analyze, 2, max)

  plot(avg_day_inflammation)
  plot(sd_day_inflammation)
  plot(min_day_inflammation)
  plot(max_day_inflammation)
}
```


```r
analyze_file <- function(file_name){
  data <- read.csv(file = file_name, header = FALSE)
  analyze(data)
}
```


```r
list_of_inflam_files <- list.files(path = './',
                                   pattern = 'inflammation')
list_of_inflam_files
```

```
##  [1] "inflammation-01.csv" "inflammation-02.csv" "inflammation-03.csv"
##  [4] "inflammation-04.csv" "inflammation-05.csv" "inflammation-06.csv"
##  [7] "inflammation-07.csv" "inflammation-08.csv" "inflammation-09.csv"
## [10] "inflammation-10.csv" "inflammation-11.csv" "inflammation-12.csv"
```

```r
for(file_name in list_of_inflam_files){
  analyze_file(file_name)
}
```

![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-1.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-2.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-3.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-4.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-5.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-6.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-7.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-8.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-9.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-10.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-11.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-12.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-13.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-14.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-15.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-16.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-17.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-18.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-19.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-20.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-21.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-22.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-23.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-24.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-25.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-26.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-27.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-28.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-29.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-30.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-31.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-32.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-33.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-34.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-35.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-36.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-37.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-38.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-39.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-40.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-41.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-42.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-43.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-44.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-45.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-46.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-47.png) ![](000-knir_exmaple_files/figure-html/unnamed-chunk-3-48.png) 


