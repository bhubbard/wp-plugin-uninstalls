#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'muv-hp-ausgabe-typ'
wp option delete 'muv-hp-ausgabe-seite'
wp option delete 'muv-hp-freischalten-key'
wp option delete 'muv-hp-verstecken-aktiv'
wp option delete 'muv-hp-verstecken-bereiche-inkl'
wp option delete 'muv-hp-verstecken-bereiche-exkl'

