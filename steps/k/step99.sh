#
# Since the earlier steps were run as root, we make sure
# all the files are owned by our non-privileged user
#
cat <<EOF >>Dockerfile

RUN chown -R node: node
