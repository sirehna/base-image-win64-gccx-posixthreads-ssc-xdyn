FROM sirehna/base-image-win64-gccx-posixthreads

RUN mkdir -p /opt
WORKDIR /opt

RUN cd /opt && \
    wget https://gitlab.com/sirehna_naval_group/ssc/ssc/-/jobs/artifacts/v9.0.1/download?job=Windows+64+bits+with+GCC+POSIX+threads -O artifacts.zip && \
    unzip artifacts.zip && \
    rm artifacts.zip && \
    mkdir ssc && \
    cd ssc && \
    unzip ../ssc.zip && \
    cd .. && \
    rm -rf ssc.zip

