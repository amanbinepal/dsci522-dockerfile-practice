FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

USER root

COPY conda-linux-64.lock conda-lock.yml

RUN conda update --quiet --file conda-lock.yml \
	&& fix-permissions "${CONDA_DIR}" \
	&& fix-permissions "/home/${NB_USER}"