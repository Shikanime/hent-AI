FROM docker.pkg.github.com/shikanime/shikanime/fluctlight:0.5.1-python-cuda-9.0-cudnn7-devel-ubuntu16.04 AS genesis

FROM genesis

# Install essential packages
RUN --mount=type=cache,sharing=private,target=/var/cache/apt --mount=from=genesis,target=/var/lib/apt/lists \
  apt-get update -y && apt-get install -y --no-install-recommends \
  libgl1-mesa-glx
