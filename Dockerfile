FROM jupyter/datascience-notebook:r-4.2.3

RUN pip install pyro-ppl==1.8.4 &&\
    R -e "install.packages(c('tidyverse', 'lme4', 'glmmTMB', 'ggrepel'), repos = 'https://cloud.r-project.org')"
