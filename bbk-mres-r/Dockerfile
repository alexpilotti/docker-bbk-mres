FROM r-base:latest
RUN R -e "install.packages('arrow', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dplyr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggplot2', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('glue', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('gridExtra', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('gtools', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('jsonlite', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('stringr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('tidyr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('patchwork', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN apt update && apt install pandoc git libxml2-dev -y
# Requires libxml2-dev for package XML
RUN R -e "install.packages('rlist', dependencies=TRUE, repos='http://cran.rstudio.com/')"
ARG GH_TOKEN=""
RUN git clone https://oauth:${GH_TOKEN}@github.com/alexpilotti/bbk-mres
WORKDIR bbk-mres/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
