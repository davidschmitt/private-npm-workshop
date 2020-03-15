#
# Here we add commands to:
#
# * Create a non-privileged user to run the NPM repo
# * Create the volume mount point for published packages
# * Adjust permissions so the non-privileged user can adjust global node_modules
# * Install the private NPM repo software: [Verdaccio](https://verdaccio.org)
#
# Note: the --unsafe-perm is needed because we are installing packages as root here.
#
cat <<"EOF" >>Dockerfile

RUN useradd $VUSER \
  && mkdir $VMNT \
  && chown $VUSER $VMNT \
  && chmod 755 $VMNT \
  && chown -R $VUSER /usr/lib/node_modules \
  && npm install --unsafe-perm -g verdaccio

EOF
