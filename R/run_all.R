#    This file is part of AD-exosome-characterisation.
#    Copyright (C) 2022  Emir Turkes, Stephanie Fowler, UK DRI at UCL, Columbia
#    University Medical Center
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
  file.path("N8_AD_proteins.Rmd"),
  output_file = file.path("..", "results", "N8_AD_proteins.html")
)
rmarkdown::render(
  file.path("N8_AD_proteins_pipeline_comparison.Rmd"),
  output_file = file.path("..", "results", "N8_AD_proteins_pipeline_comparison.html")
)
rmarkdown::render(
  file.path("N8_AD_peptides.Rmd"),
  output_file = file.path("..", "results", "N8_AD_peptides.html")
)
rmarkdown::render(
  file.path("imputation_simulation.Rmd"),
  output_file = file.path("..", "results", "imputation_simulation.html")
)
rmarkdown::render(
  file.path("imputation_simulation_pipeline_comparison.Rmd"),
  output_file = file.path("..", "results", "imputation_simulation_pipeline_comparison.html")
)
rmarkdown::render(
  file.path("zetaview_analysis.Rmd"),
  output_file = file.path("..", "results", "zetaview_analysis.html")
)
