#
# Since all earlier commands were performed as root,
# ensure file ownership is changed to the non-privileged user
#
sed -e 's/^  //' <<"EOF" >>Dockerfile.vrd

  RUN chown -R vrduser:vrduser /home/vrduser
  USER vrduser
  WORKDIR /home/vrduser
  CMD [ "/usr/bin/vrdstart" ]

EOF
