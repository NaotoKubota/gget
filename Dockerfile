###############################################################
# Dockerfile to build container images for gget
# Based on miniconda3
################################################################

FROM continuumio/miniconda3:22.11.1

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt -y update && apt -y upgrade && apt -y install curl

# Upgrade pip
RUN pip install --upgrade pip

# Install dependencies
RUN conda install -qy conda==4.13.0 && \
	conda install -qy -c conda-forge python=3.8 openmm=7.5.1

# Install gget
RUN pip install --upgrade gget==0.27.2

# upgrade jax
RUN pip install --upgrade jax==0.4.1

# Set working directory
WORKDIR /home

# bash
CMD ["bash"]
