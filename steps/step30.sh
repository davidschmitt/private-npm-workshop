#
# Create the Dockerfile for the image used to publish the first package
#
sed -e 's/^  //' <<"EOF" >pkg2/Dockerfile.pkg2

  FROM vrdbase:latest
  COPY pkg2/ /home/vrduser/pkg2/
  RUN chown -R vrduser:vrduser /home/vrduser
  USER vrduser
  WORKDIR /home/vrduser/pkg2
  CMD [ "/usr/bin/bash", "./startpkg2" ]

EOF
