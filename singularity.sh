#!/bin/sh

# Shell script for building a Singularity image from Docker Hub and running it
# Run with "sh ./singularity.sh rstudio 8787"
# Then locally something like "ssh -N -L 8787:localhost:8787 user@ip-address"
# The ports can be set to whatever you choose
# For more details: https://divingintogeneticsandgenomics.rbind.io/post/run-rstudio-server-with-singularity-on-hpc/
# Be sure to check images and paths

singularity pull tau-vulnerability.simg docker://eturkes/ad-cbd-exosome-proteins:R4.0.2v1

if [ "$1" = "all" ]; then
    singularity exec \
        -B .:/home/rstudio/AD-CBD-exosome-proteins \
        ad-cbd-exosome-proteins.simg \
    Rscript -e "source('/home/rstudio/AD-CBD-exosome-proteins/R/run_all.R')"

elif [ "$1" = "rstudio" ]; then
    # TODO: Point bind point to user's home.
    DISABLE_AUTH=true RSTUDIO_SESSION_TIMEOUT="0" \
    singularity exec \
        -B .:/home/rstudio/AD-CBD-exosome-proteins \
        ad-cbd-exosome-proteins.simg rserver --www-address=127.0.0.1 --www-port=$2
fi
