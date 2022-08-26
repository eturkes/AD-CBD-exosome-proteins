#    This file is part of AD-CBD-exosome-proteins.
#    Copyright (C) 2022  Emir Turkes, Diana Acosta, Stephanie Fowler, UK DRI at
#    UCL, Columbia University Medical Center
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    Emir Turkes can be contacted at emir.turkes@eturkes.com

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
  file.path("AD_fractions_no_scaling_factor.Rmd"),
  output_file = file.path("..", "results", "AD-fractions-no-scaling-factor.html")
)
rmarkdown::render(
  file.path("AD_fractions_with_scaling_factor.Rmd"),
  output_file = file.path("..", "results", "AD-fractions-with-scaling-factor.html")
)
rmarkdown::render(
  file.path("TAU_peptides_no_scaling_factor.Rmd"),
  output_file = file.path("..", "results", "TAU-peptides-no-scaling-factor.html")
)
rmarkdown::render(
  file.path("TAU_peptides_with_scaling_factor.Rmd"),
  output_file = file.path("..", "results", "TAU-peptides-with-scaling-factor.html")
)
