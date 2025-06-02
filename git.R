
install.packages("usethis")
library(usethis)

use_git_config(user.name = "VPSINGH1983", user.email = "singhvijay83@gmail.com")
use_git()
create_github_token()

library(gitcreds)
gitcreds_set()

library(usethis)
use_github()
