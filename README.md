<!---
Copyright 2019-2020 Emir Turkes, Guar Pallavi, Stephanie Fowler, UK DRI at UCL, Columbia
University Medical Center

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->

# AD CBD Exosome Proteins
#### *This analysis is a work-in-progress*

Analysis of exosome proteins in Alzheimer's Disease and Corticobasal Degeneration.  
Other than the raw data, this repo contains everything needed to reproduce the analysis.

To obtain the raw data and pre-computed results, please download this Google Drive folder:  
[https://drive.google.com/drive/folders/1EIH5ZnnpKMGx1WknsG5HVrhYDLNdH_lv?usp=sharing](https://drive.google.com/drive/folders/1EIH5ZnnpKMGx1WknsG5HVrhYDLNdH_lv?usp=sharing)  
The folder should then be renamed `gdrive` and placed in the top-level of this project.

For reproducibility, we provide several options for replicating the environment used in the original analysis:

### 1. Docker

This approach requires Docker installation and setup [https://www.docker.com/](https://www.docker.com/).  
The simplest command is to run `run_all.R` non-interactively with the following:

```
docker-compose up all
```

If one wishes to use RStudio, first create a `.env` file with the port you would like to use, as so:

```
PORT=8787
```

Then open RStudio with:

```
docker-compose up rstudio
```

If the Docker container is being launched on a remote machine, an SSH tunnel like the one below will be needed:

```
ssh -N -L 8787:localhost:8787 user@ip-address
```

### 2. Singularity

This approach is similar to using Docker except with a Singularity wrapper to meet the security requirements common in high-performance computing (HPC).  
Similar to before, `run_all.R` is called non-interactively with:

```
sh ./singularity.sh all
```

To use RStudio, no `.env` file is needed, it is instead included in the command:

```
sh ./singularity.sh rstudio 8787
```

As before, an SSH tunnel is required if connecting remotely.
