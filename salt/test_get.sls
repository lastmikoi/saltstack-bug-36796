{{ salt['grains.get']('os') }}-dummy:
  cmd.run:
    - name: "uname -a"
