# img/social-card.R — social share card (Open Graph / Twitter) for this book.
#
# Builds img/social-card.png at exactly 1200 x 630 px, the share image wired up
# in _quarto.yml (`image`, and the book-wide default `book: image`).
#
# Run from the repo root:  Rscript img/social-card.R
# Needs: ggplot2, ragg (which brings systemfonts), png.

library(ggplot2)

out <- "img/social-card.png"

width <- 1200
height <- 630
pad <- 64 # nothing is drawn inside this frame

ink <- "#0f172a"
muted <- "#475569"
brand <- "#2563eb"

subtitle <- "A gentle introduction to the command line for R users."
site <- "rsquaredacademy.com"
eyebrow <- "RSQUARED ACADEMY"

# Prefer a modern grotesque, fall back to whatever bold sans exists.
has_bold <- function(family) {
  path <- if (exists("match_fonts", envir = asNamespace("systemfonts"))) {
    systemfonts::match_fonts(family, weight = "bold")$path
  } else {
    systemfonts::match_font(family, bold = TRUE)$path
  }
  length(path) == 1L && !is.na(path) && nzchar(path)
}

font_family <- local({
  candidates <- c(
    "Inter", "Segoe UI Variable Display", "Segoe UI",
    "Helvetica Neue", "Arial", "DejaVu Sans"
  )
  for (f in candidates) {
    if (has_bold(f)) {
      return(f)
    }
  }
  "sans"
})

# Title breaks after "Basics": 19 / 11 characters, a comfortable rag.
title_lines <- c("Command Line Basics", "for R Users")

# Sizes below are in pixels; the device is 72 dpi so 1 pt == 1 px. ggplot2
# wants its text size in millimetres, hence the division by PT.
PT <- 72.27 / 25.4

# Largest size at which every title line fits the text column (never < 48 px).
text_width <- width - 2 * pad - 24
fit_size <- function(lines, max_size, min_size = 48) {
  size <- max_size
  while (size > min_size &&
    any(systemfonts::string_width(lines, family = font_family, size = size,
      weight = "bold") > text_width)) {
    size <- size - 1
  }
  size
}

title_size <- fit_size(title_lines, 92)
line_gap <- round(title_size * 1.18)
title_top <- height - 208

card <- ggplot() +
  coord_cartesian(
    xlim = c(0, width), ylim = c(0, height), expand = FALSE, clip = "off"
  ) +
  theme_void() +
  theme(
    plot.background = element_rect(fill = "white", colour = NA),
    plot.margin = margin(t = 0, r = 0, b = 0, l = 0)
  ) +
  # brand-blue edge bar
  annotate(
    "rect", xmin = 0, xmax = 14, ymin = 0, ymax = height,
    fill = brand, colour = NA
  ) +
  # eyebrow + rule
  annotate(
    "text",
    x = pad, y = title_top + line_gap + 35,
    label = eyebrow, hjust = 0, vjust = 0,
    family = font_family, fontface = "bold", size = 22 / PT,
    colour = brand
  ) +
  annotate(
    "segment",
    x = pad, xend = pad + 64,
    y = title_top + line_gap + 15, yend = title_top + line_gap + 15,
    linewidth = 4, lineend = "round", colour = brand
  ) +
  # title, one annotate per line so each keeps its own baseline
  annotate(
    "text",
    x = pad, y = title_top - (seq_along(title_lines) - 1) * line_gap,
    label = title_lines, hjust = 0, vjust = 0,
    family = font_family, fontface = "bold", size = title_size / PT,
    colour = ink
  ) +
  annotate(
    "text",
    x = pad, y = title_top - length(title_lines) * line_gap + 30,
    label = subtitle, hjust = 0, vjust = 1,
    family = font_family, size = 33 / PT, colour = muted
  ) +
  # footer
  annotate(
    "text",
    x = pad, y = pad, label = site,
    hjust = 0, vjust = 0,
    family = font_family, size = 27 / PT, colour = muted
  )

ragg::agg_png(
  out, width = width, height = height, units = "px",
  res = 72, scaling = 1, background = "white"
)
print(card)
invisible(dev.off())

message("wrote ", out, " (", width, "x", height, " px)")
