FROM r-base:latest
ENV DEBIAN_FRONTEND=noninteractive MAKEFLAGS=-j8
RUN apt update && \
    apt install -qq -y \
        libcurl4-openssl-dev \
        libssl-dev \
        libxml2-dev
RUN Rscript --save -e 'install.packages("devtools")'
RUN Rscript --save -e 'devtools::install_github("renanxcortes/springerQuarantineBooksR")' && \
    find /tmp -name downloaded_packages | xargs -r rm -rf
ENTRYPOINT ["Rscript", "-e"]
CMD ["library(springerQuarantineBooksR); setwd(\"/downloads\"); download_springer_book_files()"]
