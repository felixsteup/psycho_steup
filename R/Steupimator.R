

steupimator <- function(a,b) {
  cat(crayon::bold("Spearman Brown Coefficient\n"))
  temporary_object <- round(rbind(c((2*cor.test(a, b)$estimate/(1+cor.test(a, b)$estimate))[[1]], (2*cor.test(a, b)$conf.int/(1+cor.test(a, b)$conf.int)))),3)
  rownames(temporary_object) <- c("Value")
  colnames(temporary_object) <- c("Est.", "Low", "High")
  print(temporary_object)
  cat("\n")
}
