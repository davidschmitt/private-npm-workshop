#
# Since all the earlier steps were performed as root, we must adjust things
# so the non-privileged user owns all configuration files
#
cat <<"EOF" >>Dockerfile

RUN chown -R $VUSER:$VUSER /home/$VUSER

USER $VUSER

WORKDIR /home/$VUSER

CMD [ "/usr/bin/verdaccio" ]

EOF
