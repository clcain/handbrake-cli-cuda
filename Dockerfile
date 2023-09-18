FROM nvidia/cuda:11.3.1-runtime-ubuntu20.04

RUN apt update && apt install -y \
        flatpak \
        wget

RUN cd /tmp/ && \
    wget https://github.com/HandBrake/HandBrake/releases/download/1.6.1/HandBrake-1.6.1-x86_64.flatpak && \
    flatpak install -y ./HandBrake-1.6.1-x86_64.flatpak

RUN cd /tmp/ && \
    wget https://github.com/HandBrake/HandBrake/releases/download/1.6.1/HandBrakeCLI-1.6.1-x86_64.flatpak && \
    flatpak install -y ./HandBrakeCLI-1.6.1-x86_64.flatpak

CMD flatpak run fr.handbrake.HandBrakeCLI
