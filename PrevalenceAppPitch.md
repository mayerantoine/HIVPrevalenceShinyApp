Top 10 Countries with the highest HIV Prevalence
========================================================
author: Mayer Antoine
date: 8 August, 2017
autosize: true

HIV Prevalence ?
========================================================

- HIV continues to be a major global public health issue.
- In 2015, an estimated 36.7 million people were living with HIV
- The  HIV Prevalence gives the proportion of the population living with HIV
- Prevalence of HIV, (% of population ages 15-49)

What is our data source?
========================================================

- The data  source is from World Bank website 
- HIV prevalence estimation was done by UNAIDS
- The data can be download  from the worldbank website

What is the data look like ?
========================================================




```r
head(data)
```

```
# A tibble: 6 × 4
      Country  Code  Year Prevalence
        <chr> <chr> <chr>      <dbl>
1 Afghanistan   AFG  1990  0.1000000
2      Angola   AGO  1990  0.5000000
3  Arab World   ARB  1990  0.1028668
4   Argentina   ARG  1990  0.2000000
5     Armenia   ARM  1990  0.1000000
6   Australia   AUS  1990  0.1000000
```

What does the app do?
========================================================

- Load data from the HIV Prevalence data file
- Display the UI page with the top countries with the highest HIV Prevalence for 1991
- The user can use the slider input to change the year
- The app re-calculate the top countries with the highest HIV Prevalence for the year selected
- Render the ggplot visual to show the new output


Top 10 Country with the highest burden 2015
========================================================

![plot of chunk unnamed-chunk-3](PrevalenceAppPitch-figure/unnamed-chunk-3-1.png)


Thank You
========================================================
