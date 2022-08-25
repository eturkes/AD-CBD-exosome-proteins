# Copyright 2019-2022 Emir Turkes, Stephanie Fowler, UK DRI at UCL, Columbia University Medical
# Center
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

FROM rocker/rstudio:4.1.2

LABEL maintainer="Emir Turkes emir.turkes@eturkes.com"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        pkg-config \
        zlib1g-dev \
        libpng-dev \
        libnetcdf-dev \
        libxml2-dev \
        libproj-dev \
        libcairo2-dev \
        libxt-dev \
        libgsl23 \
    && Rscript -e "install.packages('conflicted')" \
        -e "install.packages('rmarkdown')" \
        -e "install.packages('rprojroot')" \
        -e "install.packages('DT')" \
        -e "install.packages('data.table')" \
        -e "install.packages('readxl')" \
        -e "install.packages('pheatmap')" \
        -e "install.packages('plyr')" \
        -e "install.packages('UpSetR')" \
        -e "install.packages('dplyr')" \
        -e "install.packages('hexbin')" \
        -e "install.packages('openxlsx')" \
        -e "install.packages('ggbeeswarm')" \
        -e "install.packages('khroma')" \
        -e "install.packages('svglite')" \
        -e "install.packages('fastmatch')" \
        -e "install.packages('BiocManager')" \
        -e "install.packages('devtools')" \
        -e "BiocManager::install('DEP')" \
        -e "BiocManager::install('GSVA')" \
        -e "BiocManager::install('variancePartition')" \
        -e "BiocManager::install('biomaRt')" \
        -e "devtools::install_github('lgatto/pRolocdata')" \
        -e "devtools::install_github('kevinblighe/EnhancedVolcano')" \
        -e "devtools::install_github('KatrionaGoldmann/volcano3D')" \
    && apt-get clean \
    && rm -Rf /var/lib/apt/lists/ \
        /tmp/downloaded_packages/ \
        /tmp/*.rds
