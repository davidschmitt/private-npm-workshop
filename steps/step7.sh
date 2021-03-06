#
# Add logging related settings to the Verdaccio configuration
#
sed -e 's/^  //' <<"EOF" >>vrd/config.yaml

  middlewares:
    audit:
      enabled: true

  # log settings
  logs:
    - { type: stdout, format: pretty, level: http }

EOF
