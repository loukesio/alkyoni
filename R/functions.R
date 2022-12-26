#' telca: A package to make plotting with ggplot2 a bit easier
#'
#' @name telca
#' @import  ggplot2
#' @import  ggtext
#'
#' @param base_size base font size
#' @param base_line_size,base_rect_size,base_family check#'
#'
#' @details The Roboto Condensed and Roboto Bold fonts are both Google fonts;
#' they can be found at \url{https://fonts.google.com/specimen/Roboto+Condensed}
#' and \url{https://fonts.google.com/specimen/Roboto}. These fonts must be
#' installed locally on your computer for this theme to work.
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     labs(title = "A Lovely Plot",
#'          subtitle = "What can the subtitle tell us?") +
#'     theme_roboto()
#'}
#'
#' @export

theme_roboto <- function(
    base_size =12,
    base_line_size = base_size/24,
    base_rect_size = base_size/24,
    base_family = "Roboto"
){
  ggplot2::theme_bw(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  ) %+replace%
    ggplot2::theme(
      axis.text.x = element_text(size = 15, color = "grey30"),
      axis.text.y = element_text(size = 15, color = "grey30"),
      axis.ticks = element_line(color = "grey91", size = .5),
      axis.ticks.length.x = unit(.5, "lines"),
      axis.ticks.length.y = unit(.7, "lines"),
      axis.title=element_text(size=18),
      legend.text=element_text(size=15),
      legend.title=element_text(size=18, hjust = 0.5),
      panel.grid.major = element_line(color=NA),
      plot.background = element_rect(fill = "grey98", color = "grey98"),
      panel.background = element_rect(fill = "grey98", color = "grey98"),
      legend.key= element_rect(fill = "grey98", colour = "grey98"),
      legend.background= element_rect(fill = "grey98", colour = "grey98"),
      plot.title = element_text(color = "grey10", size = 20, face = "bold",
                                margin = margin(t = 10,b=10), hjust=0.5),
      plot.subtitle = element_markdown(color = "grey30", size = 12,
                                       lineheight = 1.35, hjust=0.5),
      #margin = margin(t = 15, b = 40)), # i have no idea what is it doing
      plot.caption = element_text(color = "grey30", size = 10,
                                  lineheight = 1.2, hjust = 0,
                                  margin = margin(t = 80)),
      #legend.position = "none"
      complete=TRUE
    )
}

