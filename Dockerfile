FROM jupyter/datascience-notebook:r-3.6.3

RUN pip install pyro-ppl==1.5.1 &&\
    R -e "install.packages(c('tidyverse', 'lme4', 'glmmTMB', 'ggrepel'), repos = 'https://cloud.r-project.org')"
