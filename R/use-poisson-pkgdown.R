#' Set up poissontemplate usage
#'
#' This function
#' * registers poissontemplate usage in the pkgdown config;
#' * explains what the next steps are.
#'
#' @param pkg Path to package
#'
#' @return None
#' @export
#'
use_poisson_pkgdown <- function(pkg = getwd()) {
  cat(paste(cli::symbol$info, sprintf("Working in %s\n", pkg)))

  current_needs <- desc::desc_get("Config/Needs/website")
  needs <- if (!is.na(current_needs)) {
    toString(c(as.character(current_needs), "poissonconsulting/poissontemplate"))
  } else {
    "poissonconsulting/poissontemplate"
  }
  desc::desc_set("Config/Needs/website" = needs)
  cat(paste(cli::symbol$tick, "Registered GHA dependency on poissontemplate.\n"))

  config_path <- find_pkgdown_config(pkg)
  if (is.null(config_path)) {
    meta <- list(
      template = list(package = "poissontemplate")
    )
    yaml::write_yaml(meta, file.path(pkg, "_pkgdown.yml"))
  } else {
    config <- yaml::read_yaml(config_path)
    config$template$package <- "poissontemplate"
    config$template$params$bootswatch <- NULL
    config$template$includes$before_title <- NULL
    if (!is.null(config$template$bootstrap)) {
      config$template$bootstrap <- 5L
    }
    yaml::write_yaml(config, file.path(pkg, config_path))
  }
  cat(paste(cli::symbol$tick, "Registered poissontemplate in pkgdown config.\n"))
  cat(paste(cli::symbol$bullet, "Check that the config edits are all harmless.\n"))
  cat(paste(cli::symbol$bullet, "Git commit and push to origin.\n"))
  cat(paste(cli::symbol$bullet, "Contact Poisson consulting plausible owner to set up subdomain.\n"))

  # TODO: traffic analytics setup?
}

find_pkgdown_config <- function(pkg) {
  possible_paths <- c(
    "_pkgdown.yml", "_pkgdown.yaml",
    "pkgdown/_pkgdown.yml", "pkgdown/_pkgdown.yaml",
    "inst/_pkgdown.yml", "inst/_pkgdown.yaml"
  )
  for (path in possible_paths) {
    if (file.exists(file.path(pkg, path))) {
      return(path)
    }
  }
  NULL
}
