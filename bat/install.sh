#!/bin/bash

{
    set -e
    set -u

    ###############
    # Install bat #
    ###############

    WEBI_SINGLE=true

    pkg_get_current_version() {
      # 'bat --version' has output in this format:
      #       bat 0.15.4
      # This trims it down to just the version number:
      #       0.15.4
      echo $(bat --version 2>/dev/null | head -n 1 | cut -d' ' -f 2)
    }

    pkg_install() {
        # $HOME/.local/xbin
        mkdir -p "$pkg_src_bin"

        # mv ./bat-*/bat "$HOME/.local/xbin/bat-v0.15.4"
        mv ./bat-*/bat "$pkg_src_cmd"

        # chmod a+x "$HOME/.local/xbin/rg-v11.1.0"
        chmod a+x "$pkg_src_cmd"
    }
}
