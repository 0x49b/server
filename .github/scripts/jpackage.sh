#
# Stream-Pi - Free & Open-Source Modular Cross-Platform Programmable Macro Pad
# Copyright (C) 2019-2021  Debayan Sutradhar (rnayabed),  Samuel Quiñones (SamuelQuinones)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

$JPACKAGE_HOME/bin/jpackage \
--module-path $JAVAFX_JMODS/:target/lib/ \
--add-modules $REQ_MODULES \
--input target/lib \
--main-jar server-$VERSION.jar \
--main-class $MAIN_CLASS \
--description "Stream-Pi Server" \
--vendor "Stream-Pi" \
--verbose \
--copyright "Copyright 2019-21 Debayan Sutradhar (rnayabed),  Samuel Quiñones (SamuelQuinones)" \
--dest $INSTALL_DIR \
--name 'Stream-Pi Server' \
--java-options '-Dprism.lcdtext=false -Dprism.verbose=true -Djavafx.verbose=true -Dprism.dirtyopts=false' \
--arguments 'Stream-Pi.startupRunnerFileName=run_min Stream-Pi.appendPathBeforeRunnerFileToOvercomeJPackageLimitation=true' \
--add-launcher run_min=assets/run_min_linux_and_macos.properties \
"$@"
