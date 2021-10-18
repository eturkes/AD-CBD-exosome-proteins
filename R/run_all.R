# Copyright 2019-2021 Emir Turkes, Guar Pallavi, Stephanie Fowler, UK DRI at UCL, Columbia
# University Medical Center
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This script runs all files in the analysis.
# Sections can be commented out as needed.

setwd(dirname(parent.frame(2)$ofile)) # Move to location of this file.

rmarkdown::render(
  file.path("dataset1_AD_CBD_CTRL.Rmd"),
  output_file = file.path("..", "results", "dataset1-AD-CBD-CTRL.html")
)
rmarkdown::render(
  file.path("dataset2_AD_CTRL.Rmd"),
  output_file = file.path("..", "results", "dataset2-AD-CTRL.html")
)
rmarkdown::render(
  file.path("combined_AD_CTRL.Rmd"),
  output_file = file.path("..", "results", "combined-AD-CTRL.html")
)
rmarkdown::render(
  file.path("AD_fractions.Rmd"),
  output_file = file.path("..", "results", "AD-fractions.html")
)
rmarkdown::render(
  file.path("TAU_peptides.Rmd"),
  output_file = file.path("..", "results", "TAU-peptides.html")
)
