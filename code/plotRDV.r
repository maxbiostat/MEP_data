rdv <- list()
rdv$table <- read.table("../flu_ha/flu_HA_rdv.txt", header = TRUE)
rdv$lm <- lm(distance ~ date, data = rdv$table)
plotBestRooting <- function(result, Maintitle = ""){
  require(ggplot2)
  p <- qplot(date, distance, data = result$table) 
  p +
    geom_point(size = 3) +
    stat_smooth(method = "lm", se = TRUE) +
    scale_x_continuous("Time (years)") + 
    scale_y_continuous("Root-to-tip divergence") +
    theme_bw() +
    annotate("text", x = min(result$table$date) + .1* (max(result$table$date)-min(result$table$date)),
             y = quantile(result$table$distance, probs = .90),
             label = paste("R^2  == ", round(summary(result$lm)$r.squared, 3)), parse = TRUE) +
    annotate("text", x = min(result$table$date) + .1* (max(result$table$date)-min(result$table$date)),
             y = quantile(result$table$distance, probs = .95),
             label = paste("slope (rate)=", round(coef(result$lm)[2], 4), sep = ""), parse = FALSE) +
    ggtitle(paste(Maintitle)) +
    theme(plot.title = element_text(hjust = 0.5))
}
svg(filename = "../flu_ha/RDV_flu_HA.svg")
plotBestRooting(rdv, Maintitle = "Influenza A H3N2 - haemagglutinin")
dev.off()