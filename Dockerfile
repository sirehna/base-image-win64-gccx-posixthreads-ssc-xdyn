FROM sirehna/base-image-win64-gccx-posixthreads

RUN mkdir -p /opt
WORKDIR /opt

RUN cd /opt && \
    wget https://github.com/sirehna/ssc/releases/download/v8.0.3/ssc_binary_windows_64_posixthreads.zip -O ssc.zip && \
    mkdir ssc && \
    cd ssc && \
    unzip ../ssc.zip && \
    cd .. && \
    rm -rf ssc.zip

