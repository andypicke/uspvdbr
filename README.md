
<!-- README.md is generated from README.Rmd. Please edit that file -->

# uspvdbr

<!-- badges: start -->

[![R-CMD-check](https://github.com/andypicke/uspvdbr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/andypicke/uspvdbr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of uspvdbr is to provide API wrapper for USPVDB

- [USPVDB Website](https://eerscmap.usgs.gov/uspvdb/)
- [API documentation](https://eerscmap.usgs.gov/uspvdb/api-doc/)

## Installation

You can install the development version of uspvdbr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("andypicke/uspvdbr")
```

## Examples

### Get all data

``` r
library(uspvdbr)

df <- get_uspvdb_data()

head(df)
#>   case_id multi_poly eia_id p_state  p_county    ylat    xlong p_area
#> 1  402964      multi  62365      MN    Wright 45.2575 -93.7884  92600
#> 2  402893      multi  62210      MN    Dakota 44.5420 -92.9717  93358
#> 3  402892      multi  62209      MN    Dakota 44.5271 -92.9718  93795
#> 4  402796     single  62062      MN    Isanti 45.4585 -93.2724 123941
#> 5  402774     single  62037      MN    Winona 44.1149 -91.7913  89591
#> 6  402770      multi  62031      MN Sherburne 45.4951 -94.1178  89384
#>   p_img_date p_dig_conf                           p_name p_year p_pwr_reg
#> 1   20220310          4           Wright Kirby 1-5 (CSG)   2019      MISO
#> 2   20220313          4               Felton (CSG) PV1-5   2019      MISO
#> 3   20220313          4             Randolph (CSG) PV1-5   2019      MISO
#> 4   20220401          4                   Athens MN CONX   2018      MISO
#> 5   20210616          4        Rollingstone Holdco (CSG)   2019      MISO
#> 6   20201012          4 Nautilus Saint Cloud Solar (CSG)   2019      MISO
#>   p_tech_pri p_tech_sec      p_axis p_azimuth p_tilt p_battery p_cap_ac
#> 1         PV       c-si single-axis       180     NA      <NA>     5.00
#> 2         PV       c-si  fixed-tilt       180      0      <NA>     5.00
#> 3         PV       c-si  fixed-tilt       180      0      <NA>     5.00
#> 4         PV       c-si  fixed-tilt       180     NA      <NA>     6.62
#> 5         PV       c-si  fixed-tilt       180     30      <NA>     4.80
#> 6         PV       c-si  fixed-tilt       180     20      <NA>     5.00
#>   p_cap_dc     p_type      p_agrivolt p_zscore
#> 1      7.0 greenfield non-agrivoltaic     0.14
#> 2      6.5 greenfield non-agrivoltaic     0.00
#> 3      6.5 greenfield non-agrivoltaic     0.00
#> 4      8.8 greenfield non-agrivoltaic     0.04
#> 5      7.0 greenfield non-agrivoltaic     0.20
#> 6      6.8 greenfield non-agrivoltaic     0.15
```

### Get data for one state

``` r


df <- get_uspvdb_data(wh_state = "CO")

head(df)
#>   case_id multi_poly eia_id p_state p_county    ylat    xlong p_area p_img_date
#> 1  400149      multi  57377      CO  Alamosa 37.6880 -105.885 605150   20211121
#> 2  400145     single  57368      CO  Alamosa 37.5988 -105.950 704702   20211121
#> 3  400198     single  57554      CO  El Paso 38.9570 -104.807 117031   20220410
#> 4  400124     single  57317      CO  Alamosa 37.6942 -105.920 633315   20211121
#> 5  401439     single  60008      CO  Alamosa 37.6945 -105.983 919214   20211121
#> 6  401449     single  60023      CO     Weld 40.0836 -104.746 392592   20220417
#>   p_dig_conf                      p_name p_year p_pwr_reg p_tech_pri p_tech_sec
#> 1          4          Greater Sandhill I   2010      PSCO         PV       c-si
#> 2          4        Cogentrix of Alamosa   2012      PSCO         PV        cpv
#> 3          4              AFA Solar Farm   2011      WACM         PV       c-si
#> 4          4 San Luis Valley Solar Ranch   2011      PSCO         PV       c-si
#> 5          4                Hooper Solar   2015      PSCO         PV       c-si
#> 6          4        SR Jenkins Ft Lupton   2016      PSCO         PV  thin-film
#>        p_axis p_azimuth p_tilt p_battery p_cap_ac p_cap_dc     p_type
#> 1 single-axis       177     25      <NA>     19.0     20.0 greenfield
#> 2   dual-axis       180     20      <NA>     30.0     36.7 greenfield
#> 3 single-axis       180     25      <NA>      5.2      6.0 greenfield
#> 4 single-axis       180      0      <NA>     30.4     35.1 greenfield
#> 5 single-axis       180     20      <NA>     52.0     58.0 greenfield
#> 6 single-axis       180     25      <NA>     13.0     18.1 greenfield
#>        p_agrivolt p_zscore
#> 1 non-agrivoltaic    -0.84
#> 2 non-agrivoltaic    -0.40
#> 3 non-agrivoltaic    -0.42
#> 4 non-agrivoltaic    -0.33
#> 5 non-agrivoltaic    -0.15
#> 6 non-agrivoltaic    -0.54
```
