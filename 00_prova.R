library(readr)
captures <- read_delim("data/captures.csv", 
                       delim = ";", escape_double = FALSE,
                       col_types = cols(animal_id = col_integer(), 
                                        capture_id = col_integer(), data = col_date(format = "%d/%m/%Y"), 
                                        occasion = col_integer(), trap_id = col_integer(), 
                                        chip = col_character()), trim_ws = TRUE)
