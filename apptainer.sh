#!/bin/sh

#    This file is part of AD-exosome-characterisation.
#    Copyright (C) 2022-2023  Emir Turkes, Stephanie Fowler, UK DRI at UCL, Columbia
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

# Shell script for building an Apptainer image from Docker Hub and running it
# See README of this project for further details

apptainer pull ad-cbd-exosome-protein.sif docker://eturkes/ad-exosome-characterisation:R4.1.2v5

if [ "$1" = "all" ]; then
    apptainer exec \
        -B .:/home/rstudio/AD-exosome-characterisation \
        ad-exosome-characterisation.sif \
    Rscript -e "source('/home/rstudio/AD-exosome-characterisation/R/run_all.R')"

elif [ "$1" = "rstudio" ]; then
    DISABLE_AUTH=true RSTUDIO_SESSION_TIMEOUT="0" \
    apptainer exec \
        -B .:/home/rstudio/AD-exosome-characterisation \
        ad-exosome-characterisation.sif \
    rserver --www-address=127.0.0.1 --www-port=$2 --server-user=$USER
fi
