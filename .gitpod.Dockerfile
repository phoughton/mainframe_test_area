FROM gitpod/workspace-full-vnc

RUN sudo apt-get update  && \
        sudo apt-get install -y python3 && \
        sudo apt-get install -y netcat && \
        sudo apt-get install -y telnet && \
        sudo apt-get install -y s3270 && \
        sudo apt-get install -y c3270 && \
        sudo apt-get install -y x3270 && \
        sudo rm -rf /var/lib/apt/lists/*

RUN echo "alias ll='ls -lrta'" >> ~/.bashrc
RUN echo "export PIP_USER=false" >> ~/.bashrc
