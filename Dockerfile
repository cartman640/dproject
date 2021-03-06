# Docker file to run Hashicorp Vault (vaultproject.io)
FROM drunner/baseimage-alpine
MAINTAINER drunner

# add in the assets.
COPY ["./drunner","/drunner"]
COPY ["./project","/project"]
RUN chmod a-w -R /drunner

# lock in druser.
USER druser
