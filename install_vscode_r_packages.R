# Get user library path
user_lib <- Sys.getenv("R_LIBS_USER")
if (user_lib == "") {
  user_lib <- file.path(Sys.getenv("USERPROFILE"), "Documents", "R", "win-library", "4.5")
}

# Create user library if it doesn't exist
if (!dir.exists(user_lib)) {
  dir.create(user_lib, recursive = TRUE)
}

# Set library path
.libPaths(user_lib)

# Install required packages for VSCode R extension
install.packages(c("jsonlite", "rlang"), repos = "https://cloud.r-project.org/")

# Also install languageserver for better IDE support
install.packages("languageserver", repos = "https://cloud.r-project.org/")

print("VSCode R packages installed successfully!")