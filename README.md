# Analysis Code for _Intensional Gaps_

This repository contains the code for replicating the analyses from
the following paper:

> Kane, Benjamin, Will Gantt, and Aaron Steven White. 2022. Intensional Gaps: Relating Veridicality, Factivity, Doxasticity, Bouleticity, and Neg-Raising. *Semantics and Linguistic Theory* 31: 570–605. [https://doi.org/10.3765/salt.v31i0.5137](https://doi.org/10.3765/salt.v31i0.5137).

If you use any of the code found in this directory, please cite that
paper as well as this repository.

> White, Aaron Steven. 2021. MegaAttitude/intensional-gaps: Analysis Code for "Intensional Gaps".

## Environment

A [Docker](https://www.docker.com/) image specification is provided in
the form of a Dockerfile. It is _strongly_ recommended that you run
the notebook containing the analysis code using a container based on
this image. Failure to do so could result in minor differences in
statistics from the published paper or inability to run the code at
all due to API changes. Issues that do not explicitly state that they
pertain to the Docker image we have supplied will be automatically
closed, and analogous inquiries will be ignored.

It is important that you have allocated at least 8GB of RAM to Docker
prior to building the image or running the notebook. Failure to
allocate enough memory will result in often cryptic errors on build or
run.

If it is impossible for you to use Docker, you should at least set up
a virtual environment using Anaconda or one of the many python
facilities available. We have provided a `requirements.txt` file to
facilitate this. This file is generated using `pip freeze` from within
a container based on the supplied Docker image specification. In
addition to the packages specified in that file, you will need an R
installation and a few R packages for fitting models and generating plots.

```r
install.packages(c('tidyverse', 'lme4', 'glmmTMB', 'ggrepel'), repos='http://cran.us.r-project.org')
```

## Getting started

If you haven't already, download the code.

```bash
git clone https://github.com/MegaAttitude/intensional-gaps.git
```

To build the Docker image, use:

```bash
cd intensional-gaps
docker build -t intensional-gaps .
```

This image is based on a standard
[`jupyter/datascience-notebook`](https://hub.docker.com/r/jupyter/datascience-notebook/)
image. It is only slightly modified, and so much of the
[documentation](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)
for that image remains relevant.

To start a container based on this image, use:

```bash
docker run -p 8888:8888 --name intensional-gaps intensional-gaps
```

The notebook server can then be accessed in the standard way.
