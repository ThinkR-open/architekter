
<!-- README.md is generated from README.Rmd. Please edit that file -->

# architekter <img src="man/figures/hex.png" align="right" alt="" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ThinkR-open/architekter/workflows/R-CMD-check/badge.svg)](https://github.com/ThinkR-open/architekter/actions)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

### Hey, what is that?

Well…

Imagine that…

You are about to have your house built. Where do you start? By creating
the plans, right?

Well, it’s the same with a `{ggplot2}` graph. Start by building the
plans of your data visualization: its organization, its colours, etc. In
a familiar click-button environment (you will seen, Figma will do the
job very well).

Like an architect who guides you in extracting the ideas you have in
mind for the structure of your house and in transforming them into
technical concepts, `{architekter}` will build for you the basis of your
`theme()` function, by extracting the `{ggplot2}` elements from your
Figma model. You can then modify your `theme()` function directly in R.
But `{architekter}` greatly prefers this work, especially if you are not
yet very familiar with the construction of `{ggplot2}` themes.

> “architekter” means “architect” in Breton, a regional language spoken
> in France. And that Brittany is one of the most beautiful places in
> the world.

### What is Figma?

Figma is a the collaborative interface design tool.

Figma is free.

More information here: <https://www.figma.com/design/>

<img src="man/figures/logo_figma.svg" width="5%" style="display: block; margin: auto;" />

### How can I install it?

You can install the development version of {architekter} from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ThinkR-open/architekter")
```

### How should I use it?

-   Create a Figma account (<https://www.figma.com>)

-   Duplicate the following Figma file:
    <https://www.figma.com/community/file/1089210046480653802> *You we
    get a copy on your Figma account, and you will be able to modify
    your version to create your own {ggplot2} maquettes in Figma*

<img src="man/figures/figma_thumb.png" width="50%" style="display: block; margin: auto;" />

-   Create a personal access token on your Figma account
    (<https://www.figma.com/developers/api> Section Access tokens)

-   Create an environment variable with your Figma Token:

``` r
Sys.setenv(FIGMA_TOKEN = "your-token-here")
```

-   Restart your R session

-   Load `{architekter}`

``` r
library(architekter)
```

-   Extract the {ggplot2} theme elements from your Figma file:

``` r
get_figma_file_content(file_key = "your-file-key",
                       acess_token = Sys.getenv("FIGMA_TOKEN")) %>% 
extract_ggplot_theme()
```

#### Example

``` r
get_figma_file_content(file_key = "wRqIvMmymzSPuj0sEhnORb",
                       acess_token = Sys.getenv("FIGMA_TOKEN")) %>% 
extract_ggplot_theme()
#> ✓ Content of the file 'ggplot2 templating' has been successfully extracted.
#> ✓ The raw Figma content has been successfully transformed to a tibble.
#> ✓ The ggplot2 theme elements have been extracted.
#> # A tibble: 8 × 10
#>   element_name  element_type letter_spacing lineheight family   size hjust color
#>   <chr>         <chr>                 <dbl>      <dbl> <chr>   <dbl> <dbl> <chr>
#> 1 panel_backgr… rect                  NA          NA   <NA>    0.400    NA #000…
#> 2 legend_text   text                   0.36       10.5 Roboto  9         1 #000…
#> 3 legend_title  text                   0.44       12.9 Roboto 11         1 #000…
#> 4 panel_grid    line                  NA          NA   <NA>    1        NA #5FB…
#> 5 axis_text     text                   0          10.5 Roboto  9         1 #B0B…
#> 6 axis_title    text                   0.44       12.9 Roboto 11         1 #000…
#> 7 plot_subtitle text                   0.48       14.1 Robot… 12         1 #000…
#> 8 plot_title    text                   0.8        23.4 Robot… 20         0 #000…
#> # … with 2 more variables: fill <chr>, linetype <dbl>
```
