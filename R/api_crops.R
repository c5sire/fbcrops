#' new_crop_table
#'
#' creates an empty table with dummy values
#'
#' @return data.frame
#' @author Reinhard Simon
#' @export
new_crop_table <- function(){
  crop_name <- c("potato", "sweetpotato")
  crop_id   <- c("PT", "SP") # must be two upper case letters
  crop_species <- c("Solanum tuberosum", "Ipomoea batatas")
  crop_type <- c("clonal", "clonal")

  as.data.frame(cbind(crop_name, crop_id, crop_species, crop_type),
                stringsAsFactors = FALSE)
}

#' get_crop_table
#'
#' always returns a table
#'
#' @return data.frame
#' @author Reinhard Simon
#' @export
get_crop_table <- function(){
  fns <- fbglobal::fname_crops()

  if(!file.exists(fns)) {
    base_dir <-  dirname(fns)
    if(!dir.exists(base_dir)) dir.create(base_dir)
    table_crops <- new_crop_table()
    save(table_crops, file = fns)
  }
  load(fns)
  table_crops
}

#' post_crop_table
#'
#' store crop table
#'
#' @param table_crops a data frame
#' @author Reinhard Simon
#' @export
post_crop_table <- function(table_crops){
  save(table_crops, file = fbglobal::fname_crops())
}
