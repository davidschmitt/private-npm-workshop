#
# Create the Dockerfile for the image used to publish the first package
#
sed -e 's/^  //' <<"EOF" >pkg1/Dockerfile.pkg1

  FROM vrdbase:latest
  COPY pkg1/ /home/vrduser/pkg1/
  RUN chown -R vrduser:vrduser /home/vrduser
  USER vrduser
  WORKDIR /home/vrduser/pkg1
  CMD [ "/usr/bin/bash", "./publishpkg1" ]

EOF
