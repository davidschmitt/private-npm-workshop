#
# Create a helper script used when setting repository user credentials.
#
cat <<"EOF" >>Dockerfile

RUN printf "%s\\n" \
  "#!/bin/bash" \
  "if [ ! -f $VMNT/.htpasswd ]" \
  "then" \
  "  touch $VMNT/.htpasswd" \
  "  chown $VUSER:$VUSER $VMNT/.htpasswd" \
  "  chmod 600 $VMNT/.htpasswd" \
  "fi" \
  "/bin/htpasswd $VMNT/.htpasswd \$1" \
  >/usr/bin/vrdpasswd \
&& chmod 755 /usr/bin/vrdpasswd

EOF
