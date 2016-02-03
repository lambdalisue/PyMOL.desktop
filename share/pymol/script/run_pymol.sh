#!/usr/bin/env sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Start PyMOL with a working directory which the specified file exists
#
# Usage:
#
#   #!/usr/bin/env xdg-open
#   [Desktop Entry]
#   Version=1.0
#   Name=PyMOL Molecular Graphics System
#   Comment=Model molecular structures and produce high-quality images of them
#   Type=Application
#   Exec=run_pymol.sh %U
#   TryExec=pymol
#   Icon=pymol
#   MimeType=chemical/x-pdb
#   Categories=Education;Science;Chemistry;
#
# Author: Alisue <lambdalisue@hashnote.net>
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if [ -f "$1" ]; then
    cd "$(dirname "$1")"
fi
/usr/bin/env pymol "$@"
